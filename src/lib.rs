use serde::{Deserialize, Serialize};
use thiserror::Error;

#[derive(Debug, Error)]
pub enum ValidationError {
    #[error("missing field: {0}")]
    MissingField(&'static str),
    #[error("invalid state: {0}")]
    InvalidState(&'static str),
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct AnchorTotem {
    pub totem_id: String,
    pub owner: String,
    pub mission: String,
    pub principles: Vec<String>,
    pub restraints: Vec<String>,
    pub status: String,
}

impl AnchorTotem {
    pub fn validate(&self) -> Result<(), ValidationError> {
        if self.totem_id.is_empty() { return Err(ValidationError::MissingField("totem_id")); }
        if self.owner.is_empty() { return Err(ValidationError::MissingField("owner")); }
        if self.mission.is_empty() { return Err(ValidationError::MissingField("mission")); }
        if self.principles.is_empty() { return Err(ValidationError::MissingField("principles")); }
        if self.restraints.is_empty() { return Err(ValidationError::MissingField("restraints")); }
        Ok(())
    }
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct IpComplianceCheck {
    pub artifact_id: String,
    pub ip_status: String,
    pub result: String,
}

impl IpComplianceCheck {
    pub fn is_publishable(&self) -> bool {
        matches!(self.result.as_str(), "allow" | "allow_with_attribution")
    }
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct EdgeExit {
    pub exit_id: String,
    pub owner: String,
    pub intent: String,
    pub audience: String,
    pub trace_id: String,
}

impl EdgeExit {
    pub fn validate(&self) -> Result<(), ValidationError> {
        if self.exit_id.is_empty() { return Err(ValidationError::MissingField("exit_id")); }
        if self.owner.is_empty() { return Err(ValidationError::MissingField("owner")); }
        if self.intent.is_empty() { return Err(ValidationError::MissingField("intent")); }
        if self.audience.is_empty() { return Err(ValidationError::MissingField("audience")); }
        if self.trace_id.is_empty() { return Err(ValidationError::MissingField("trace_id")); }
        Ok(())
    }
}
