# sistematika-utils
Utils for sistematika

update_o2cgan.sh
----------------------------
- install sshpass, kemudian tambahkan fingerprint dengan ssh user@host(lihat di dalam file) -> ketik yes
- Update o2c_gan with parameter -e {environtment} -m {module (1(default)->odoo_sistematika_module, 2->api_o2c_gan)}, ex:
  sh update_o2cgan.sh -e dev
