Ardian
2106638173


Tugas 7:
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

BONUS: Saya mengimplementasikan warna yang berbeda yaitu abu-abu pada setiap tombol dan primarySwatch, sebenarnya saya ingin menggunakan warna abu-abu yang lebih gelap untuk primarySwatch namun selalu merah (error).


Tugas 8:
1.  Ketika kita mengganti ke halaman lain, halaman tersebut ditambahkan ke dalam tumpukan, dan ketika kita kembali ke halaman sebelumnya, halaman terakhir dihapus dari tumpukan.

2. Navigator memiliki tiga tipe routing, yaitu push, pop, dan replace. Routing dengan tipe push digunakan untuk menambahkan halaman baru pada tumpukan, sedangkan routing dengan tipe pop digunakan untuk menghapus halaman terakhir pada tumpukan. Tipe routing replace digunakan untuk mengganti halaman saat ini dengan halaman baru.

3. onPressed, onChanged, onTap, InkWell, onSubmitted, onScroll, onLongPress, dll.

4.  - Drawer:
        Widget ini digunakan untuk menyediakan navigasi samping
    
    - Form:
        Digunakan untuk mengelola dan memvalidasi input dari pengguna.
    
    - Scaffold:
        Digunakan untuk menyediakan kerangka dasar aplikasi, seperti app bar, body, dan sebagainya
    
    - Container:
        Digunakan untuk membuat kotak yang dapat diatur ukurannya dan diisi dengan widget lain.

    - TextFormField:
        Digunakan untuk menampilkan input dari pengguna dan menyediakan kontrol untuk mengelola input tersebut

    - Icon:
        Digunakan untuk menampilkan ikon

    - InputBorder:
        Digunakan untuk menambahkan border pada input field.
    
    - FilteringTextInputFormatter:
        Digunakan untuk memformat input yang diterima oleh TextFormField.

    - TextEditingController:
        Digunakan untuk memformat input yang diterima oleh 'TextFormField'.

    - GlobalKey:
        Digunakan untuk mengidentifikasi suatu widget secara unik di dalam tree-widget.

    - ListTile:
        Widget ini digunakan untuk menampilkan elemen yang dapat diklik oleh pengguna.

    - Padding:
        Widget ini digunakan untuk menambahkan padding atau jarak antara widget dengan widget lain.

    - Column:
        Widget ini digunakan untuk menampilkan children secara vertikal.

    - Text:
        Widget ini digunakan untuk menampilkan teks pada halaman.

    - Navigator:
        Widget ini digunakan untuk menavigasi ke halaman lain dalam aplikasi.

    - MaterialPageRoute:
        Widget in digunakan untuk

    - AppBar:
        widget yang menyediakan tampilan bar di bagian atas halaman.

5.  Pertama saya membuat folder "widgets" dan "pages" pada lib. Kemudian saya membuat drawer dengan cara menambahkan file baru di dalam folder "widgets" bernama drawer.dart. Pada drawer tersebut saya menyediakan dua navigasi yaitu naviagasi ke menu dan navigasi untuk menambah tugas. Lalu saya menampilkan drawer tersebut pada AppBar di file menu.dart. Setelah itu saya membuat form dengan cara membuat file form.dart di dalam folder pages, lalu pada fungsi onTap tombol transaksi, saya menambahkan navigasi menuju ke form. Pada form.dart Saya menambahkan variable untuk setiap input yang diperlukan, kemudian saya membuat input-inputnya yaitu "Nama tugas" menggunakan widget TextFormField yang dibungkus oleh Padding, begitu juga dengan input "Nama Mata Kuliah" dan "Deskripsi Tugas". Untuk "Persentase Progress" saya juga menggunakan widget TextFormField yang dibungkus oleh Padding namun saya menambahkan validator yang akan memastikan bahwa input yang diterima adalah angka dan juga dalam range 0 sampai 100. Setelah itu, saya membuat tombol tambah dengan widget TextButton yang akan memunculkan popup. Kemudian pada Children [] di widget TextButton, saya menambahkan Text('Nama Tugas: $_namaTugas') dll agar informasi data yang telah diinput ditampilkan pada popup. Tidak lupa saya mengarahkan navigasi "Tambah Tugas" pada Drawer agar mengarah ke Form dengan cara menggunakan Navigator.pushReplacement.