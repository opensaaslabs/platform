#!/usr/bin/env node
const fs = require('fs');
const path = require('path');

function readJson(file) {
  return JSON.parse(fs.readFileSync(file, 'utf8'));
}

function assert(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function validateSoftwareTool(tool) {
  assert(typeof tool.id === 'string' && /^[a-z0-9][a-z0-9-]*$/.test(tool.id), 'software tool id is invalid');
  assert(typeof tool.name === 'string' && tool.name.length > 0, 'software tool name is required');
  assert(typeof tool.category === 'string' && tool.category.length > 0, 'software tool category is required');
  assert(typeof tool.description === 'string' && tool.description.length > 0, 'software tool description is required');
  assert(Array.isArray(tool.maturityFit) && tool.maturityFit.length > 0, 'software tool maturityFit is required');
}

function main() {
  const root = process.cwd();
  const requiredFiles = [
    'README.md',
    'docs/production-readiness.md',
    'docs/release-gate.md',
    'docs/security.md',
    'docs/operations.md',
    'docs/governance.md',
    'schemas/software-tool.schema.json',
    'schemas/software-category.schema.json',
    'schemas/use-case.schema.json',
    'examples/software-tool.example.json'
  ];

  for (const file of requiredFiles) {
    assert(fs.existsSync(path.join(root, file)), `missing required file: ${file}`);
  }

  for (const file of requiredFiles.filter((name) => name.endsWith('.json'))) {
    readJson(path.join(root, file));
  }

  validateSoftwareTool(readJson(path.join(root, 'examples/software-tool.example.json')));
  console.log('Production readiness JSON validation passed.');
}

main();
