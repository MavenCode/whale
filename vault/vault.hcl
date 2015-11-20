backend "consul" {
  address = "consul:8500"
  path = "vault"
  advertise_addr = "http://127.0.0.1"
}

listener "tcp" {
 address = "0.0.0.0:8200"
 tls_disable = 1
}
