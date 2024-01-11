# Inisialisasi skrip bash
#!/bin/bash

# Menggunakan perulangan while sebagai infinity loop untuk membuat program berjalan terus menerus
while true
do

  echo "Menampilkan ukuran memory pada sistem dalam satuan megabytes"
  # free untuk enampilkan informasi ukuran memory pada sistem dan --mega untuk menampilkan dalam satuan megabytes
  free --mega
  # Membuat baru baru dengan perintah echo ""
  echo ""
  # Menunggu 3 detik sebelum melanjutkan ke langkah berikutnya
  sleep 3s

  echo "Menampilkan penggunaan ruang disk pada filesystem dalam satuan gigabytes"
  # df untuk menampilkan informasi penggunaan ruang disk pada filesystem dan -h untuk menampilkan dalam satuan gigabytes
  df -h
  # Membuat baris baru dengan perintah echo ""
  echo ""
  # Menunggu 3 detik sebelum melanjutkan ke langkah berikutnya
  sleep 3s

  echo "Menampilkan penggunaan ruang disk pada filesystem hanya untuk kolom Filesystem dan Use% (ditampilkan juga nama kolomnya) serta tanpa menyertakan tmpfs"
  # df untuk menampilkan informasi penggunaan ruang disk pada filesystem hanya untuk kolom Filesystem dan Use% (tanpa tmpfs) menggunakan perintah 'df'
  # df untuk menampilkan informasi penggunaan ruang disk pada filesystem dan h untuk menampilkan dalam satuan gigabytes
  # --output='source','pcent' untuk menampilkan dalam satuan % dan -x tmpfs untuk tidak menyertakan tmpfs
  df -h --output='source','pcent' -x tmpfs
  echo ""
  # Menunggu 1 menit sebelum memulai iterasi loop berikutnya
  sleep 1m 

# Akhir dari while loop
done