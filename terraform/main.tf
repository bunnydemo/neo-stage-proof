# No provider: terraform_data is built in. The state lives in the Bunnyshell managed backend
# (/bns/helpers/terraform/get_managed_backend > zz_backend_override.tf).
resource "terraform_data" "proof" {
  input = "neo-stage-proof"
}

output "proof_id" {
  value = terraform_data.proof.id
}
