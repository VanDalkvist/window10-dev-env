disable_mlock = true

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_cert_file = "/vault/tls/vault.cert"
  tls_key_file = "/vault/tls/vault.key"
}
