Ardian
2106638173
Tugas 7

1.  Stateless widget digunakan untuk membuat komponen UI yang sederhana dan tidak memerlukan manajemen state internal. Widget ini bersifat immutable, artinya setelah dibuat, propertinya tidak dapat diubah. Stateless widget cocok untuk menampilkan informasi statis seperti tombol atau label, dan mudah dibuat. Di sisi lain, stateful widget bersifat mutable dan bisa mengubah state-nya selama digunakan. Widget ini digunakan untuk membuat komponen UI yang lebih kompleks seperti formulir input pengguna atau daftar dinamis. Karena bisa mengubah state, stateful widget bisa lebih sulit dikelola daripada stateless widget. Namun, stateful widget dibutuhkan untuk membuat antarmuka pengguna yang interaktif dan dinamis.

2.  - MaterialApp(return MaterialApp):
         Widget ini digunakan untuk menentukan konfigurasi dasar aplikasi seperti judul aplikasi dan tema.

    - Scaffold(return Scaffold):
        Widget ini digunakan sebagai template halaman dan menentukan tampilan umum aplikasi, seperti app bar dan body.

    - AppBar(appBar: AppBar):
        Widget ini digunakan untuk menampilkan app bar pada halaman, yaitu strip horizontal di bagian atas yang biasanya berisi judul aplikasi dan tombol navigasi.

    - SingleChildScrollView:
        Widget ini digunakan untuk membuat area wrapper yang dapat discroll.

    - Padding(child: Padding):
        Widget ini digunakan untuk menambahkan padding atau jarak antara widget dengan widget lain.

    - Column(child: Column):
        Widget ini digunakan untuk menampilkan children secara vertikal.

    - GridView.count(child: GridView.count):
        Widget ini digunakan untuk menampilkan grid dengan jumlah kolom yang ditentukan.

    - Material(child: Material):
        Widget ini digunakan untuk menentukan warna latar belakang dan tampilan umum widget.

    - InkWell(child: InkWell):
        Widget ini digunakan untuk membuat area responsive terhadap sentuhan.

    - Container(child: Container):
        Widget ini digunakan untuk menampilkan widget lain dan menambahkan dekorasi seperti background dan border.

    - Icon(child: Icon):
        Widget ini digunakan untuk menampilkan icon pada halaman.

    - Text(child: Text):
        Widget ini digunakan untuk menampilkan teks pada halaman.

3.  - Membuat program study_tracker dengan "flutter create study_tracker" pada terminal
    - Membuat widget "Lihat Study Tracker", "Tambah Tugas", dan "Logout" di dalam widget GridView.count menggunakan widget Material
    - Membuat snackbar untuk setiap tombol menggunakan function onTap()