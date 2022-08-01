provider "yandex" {
    service_account_key_file = var.YC_SERVICE_ACCOUNT_KEY_FILE
    cloud_id  = var.CLOUD_ID
    folder_id = var.FOLDER_ID
}

# network #
resource "yandex_vpc_network" "netology-net" {
    name = "netology-net"
}

resource "yandex_vpc_subnet" "netology-net-subnet-a" {
    name           = "subnet-a"
    v4_cidr_blocks = ["192.168.10.0/24"]
    zone           = "ru-central1-a"
    network_id     = "${yandex_vpc_network.netology-net.id}"
}

resource "yandex_vpc_subnet" "netology-net-subnet-b" {
    name           = "subnet-b"
    v4_cidr_blocks = ["192.168.20.0/24"]
    zone           = "ru-central1-b"
    network_id     = "${yandex_vpc_network.netology-net.id}"
}

resource "yandex_vpc_subnet" "netology-net-subnet-c" {
    name           = "subnet-c"
    v4_cidr_blocks = ["192.168.30.0/24"]
    zone           = "ru-central1-c"
    network_id     = "${yandex_vpc_network.netology-net.id}"
}