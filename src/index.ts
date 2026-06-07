export interface Vendor {
  id: string;
  name: string;
  website?: string;
}

export interface SoftwareCategory {
  id: string;
  name: string;
  description?: string;
}

export interface UseCase {
  id: string;
  name: string;
  description?: string;
}

export interface MaturityModel {
  id: string;
  name: string;
  level: 1 | 2 | 3 | 4 | 5;
}

export interface Software {
  id: string;
  name: string;
  vendor: string;
  category: string;
  useCases: string[];
  maturityLevel: number;
  sourceReferences: string[];
  reviewedAt: string;
}

export interface Recommendation {
  id: string;
  softwareId: string;
  useCaseId: string;
  rationale: string;
  sourceReferences: string[];
  trustScore: number;
}

export interface ValidationResult {
  ok: boolean;
  errors: string[];
}

export function validateSoftware(item: Software): ValidationResult {
  const errors: string[] = [];
  if (!item.name) errors.push('name required');
  if (!item.vendor) errors.push('vendor required');
  if (!item.category) errors.push('category required');
  if (!item.useCases?.length) errors.push('useCases required');
  if (!item.sourceReferences?.length) errors.push('sourceReferences required');
  if (!item.reviewedAt) errors.push('reviewedAt required');
  return { ok: errors.length === 0, errors };
}
