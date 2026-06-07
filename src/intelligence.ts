export interface Evidence {
  id: string;
  source: string;
  url?: string;
  summary: string;
  collectedAt: string;
}

export interface Review {
  id: string;
  subjectId: string;
  reviewer: string;
  rating: number;
  evidenceIds: string[];
  reviewedAt: string;
}\n
export interface TrustScore {
  id: string;
  subjectId: string;
  score: number;
  evidenceIds: string[];
  computedAt: string;
}

export interface Comparison {
  id: string;
  softwareIds: string[];
  criteria: string[];
  outcome: string;
  evidenceIds: string[];
}

export interface Assessment {
  id: string;
  profileId: string;
  useCaseIds: string[];
  maturityLevel: number;
  gaps: string[];
  completedAt: string;
}

export interface AdoptionReadiness {
  id: string;
  softwareId: string;
  profileId: string;
  readinessScore: number;
  risks: string[];
  nextSteps: string[];
}

export interface ValidationResult {
  ok: boolean;
  errors: string[];
}

export function validateTrustScore(item: TrustScore): ValidationResult {
  const errors: string[] = [];
  if (!item.subjectId) errors.push('subjectId required');
  if (item.score < 0 || item.score > 100) errors.push('score must be 0..100');
  if (!item.evidenceIds?.length) errors.push('evidenceIds required');
  if (!item.computedAt) errors.push('computedAt required');
  return { ok: errors.length === 0, errors };
}
