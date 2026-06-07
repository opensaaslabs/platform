DEFINE TABLE vendor SCHEMAFULL;
DEFINE FIELD name ON vendor TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD website ON vendor TYPE option<string>;
DEFINE INDEX vendor_name ON vendor FIELDS name UNIQUE;

DEFINE TABLE software_category SCHEMAFULL;
DEFINE FIELD name ON software_category TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD description ON software_category TYPE option<string>;
DEFINE INDEX software_category_name ON software_category FIELDS name UNIQUE;

DEFINE TABLE use_case SCHEMAFULL;
DEFINE FIELD name ON use_case TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD description ON use_case TYPE option<string>;
DEFINE INDEX use_case_name ON use_case FIELDS name UNIQUE;

DEFINE TABLE software SCHEMAFULL;
DEFINE FIELD name ON software TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD vendor ON software TYPE record<vendor>;
DEFINE FIELD category ON software TYPE record<software_category>;
DEFINE FIELD useCases ON software TYPE array ASSERT array::len($value) > 0;
DEFINE FIELD maturityLevel ON software TYPE number ASSERT $value >= 1 AND $value <= 5;
DEFINE FIELD sourceReferences ON software TYPE array ASSERT array::len($value) > 0;
DEFINE FIELD reviewedAt ON software TYPE datetime;
DEFINE INDEX software_name_vendor ON software FIELDS name, vendor UNIQUE;
DEFINE INDEX software_category ON software FIELDS category;

DEFINE TABLE evidence SCHEMAFULL;
DEFINE FIELD source ON evidence TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD url ON evidence TYPE option<string>;
DEFINE FIELD summary ON evidence TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD collectedAt ON evidence TYPE datetime;

DEFINE TABLE review SCHEMAFULL;
DEFINE FIELD subjectId ON review TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD reviewer ON review TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD rating ON review TYPE number ASSERT $value >= 0 AND $value <= 5;
DEFINE FIELD evidenceIds ON review TYPE array ASSERT array::len($value) > 0;
DEFINE FIELD reviewedAt ON review TYPE datetime;

DEFINE TABLE trust_score SCHEMAFULL;
DEFINE FIELD subjectId ON trust_score TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD score ON trust_score TYPE number ASSERT $value >= 0 AND $value <= 100;
DEFINE FIELD evidenceIds ON trust_score TYPE array ASSERT array::len($value) > 0;
DEFINE FIELD computedAt ON trust_score TYPE datetime;
DEFINE INDEX trust_score_subject ON trust_score FIELDS subjectId;

DEFINE TABLE recommendation SCHEMAFULL;
DEFINE FIELD softwareId ON recommendation TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD useCaseId ON recommendation TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD rationale ON recommendation TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD sourceReferences ON recommendation TYPE array ASSERT array::len($value) > 0;
DEFINE FIELD evidenceIds ON recommendation TYPE array ASSERT array::len($value) > 0;
DEFINE FIELD trustScore ON recommendation TYPE number ASSERT $value >= 0 AND $value <= 100;
DEFINE INDEX recommendation_use_case ON recommendation FIELDS useCaseId;

DEFINE TABLE comparison SCHEMAFULL;
DEFINE FIELD softwareIds ON comparison TYPE array ASSERT array::len($value) >= 2;
DEFINE FIELD criteria ON comparison TYPE array ASSERT array::len($value) > 0;
DEFINE FIELD outcome ON comparison TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD evidenceIds ON comparison TYPE array ASSERT array::len($value) > 0;

DEFINE TABLE assessment SCHEMAFULL;
DEFINE FIELD profileId ON assessment TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD useCaseIds ON assessment TYPE array ASSERT array::len($value) > 0;
DEFINE FIELD maturityLevel ON assessment TYPE number ASSERT $value >= 1 AND $value <= 5;
DEFINE FIELD gaps ON assessment TYPE array;
DEFINE FIELD completedAt ON assessment TYPE datetime;

DEFINE TABLE adoption_readiness SCHEMAFULL;
DEFINE FIELD softwareId ON adoption_readiness TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD profileId ON adoption_readiness TYPE string ASSERT string::len($value) > 0;
DEFINE FIELD readinessScore ON adoption_readiness TYPE number ASSERT $value >= 0 AND $value <= 100;
DEFINE FIELD risks ON adoption_readiness TYPE array;
DEFINE FIELD nextSteps ON adoption_readiness TYPE array ASSERT array::len($value) > 0;
