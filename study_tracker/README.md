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


Tugas 9:
1. Ya, kita bisa mengambil data Json tanpa membuat model kustom terlebih dahulu. Untuk aplikasi yang memiliki tingkat kompleksitas yang relatif tinggi, tidak baik untuk melakukan pengambilan data Json tanpa membuat model kustom terlebih dahulu. Namun, pada aplikasi dengan tingkat kompleksitas yang rendah, tidak ada yang lebih baik antara membuat model kustom terlebih dahulu atau tidak, bergantung pada kenyamanan developer dan struktur aplikasi.

2.  - Mengambil data Json (dalam kasus ini di web django kita)
    - Parse data Json ke kode dart (seperti yang kita gunakan di website https://app.quicktype.io/)
    - Gunakan hasil parse pada program flutter kita
    - Buatkan coding-an untuk menampilkan data sesuai keinginan kita

3.  - User menginput data username dan password pada interface aplikasi flutter kita
    - Flutter mengirimkan data ke server web django kita untuk meng-verifikasi data yang dimasukkan user
    - Server django melakukan verifikasi data username dan password
    - Jika data valid, maka proses autentikasi berhasil dan user berhasil login dan dapat masuk ke halaman menu

4.  - AppBar: Digunakan untuk menampilkan AppBar (bilah aplikasi) di bagian atas layar.
    - Scaffold: Digunakan sebagai struktur dasar halaman dengan menyediakan layout utama dan komponen seperti AppBar, body, dan drawer.
    - Drawer: Digunakan untuk menampilkan Drawer (panel samping) yang berisi navigasi dan opsi lainnya.
    - Form: Digunakan untuk membuat form dengan validasi dan aksi yang berkaitan dengan pengisian form.
    - TextFormField: Digunakan untuk membuat input teks dengan berbagai konfigurasi seperti label, ikon, validasi, dan pengambilan nilai.
    - SingleChildScrollView: Digunakan untuk memberikan kemampuan scroll pada konten ketika melebihi ukuran layar.
    - Container: Digunakan untuk membuat kotak atau wadah yang dapat diatur dengan konfigurasi seperti margin, padding, dan dekorasi.
    - Padding: Digunakan untuk memberikan padding pada widget yang berada di dalamnya.
    - TextButton: Digunakan untuk membuat tombol dengan teks kustom.
    - ButtonStyle: Digunakan untuk mengatur gaya tombol seperti warna latar belakang dan teks.
    - CircularProgressIndicator: Digunakan untuk menampilkan indikator loading yang berbentuk lingkaran.
    - ListView.builder: Digunakan untuk membuat daftar item dengan membangun item secara dinamis berdasarkan data yang ada.
    - Center: Digunakan untuk mengatur widget ke tengah layar secara horizontal dan vertikal.
    - Column: Digunakan untuk mengatur widget dalam susunan kolom (vertical).
    - Row: Digunakan untuk mengatur widget dalam susunan baris (horizontal).
    - Text: Digunakan untuk menampilkan teks.
    - Icon: Digunakan untuk menampilkan ikon.
    - Decoration: Digunakan untuk memberikan dekorasi seperti warna, bentuk, dan bayangan pada widget.
    - BoxShadow: Digunakan untuk menambahkan efek bayangan pada widget.
    - TextEditingController: Digunakan untuk mengendalikan nilai dan interaksi pada TextFormField.

5.  - Migrasi web django saya ke server PaaS Domcloud (ardian-lab-pbp.domcloud.io)
    - Integrasi Sistem Autentikasi Web Service Django dengan Aplikasi Flutter dengan command flutter pub ... pada project django kita dan juga membuat aplikasi khusus untuk autentikasi yaitu authentication pada project django kita
    -  Membuat model kustom dari model Assignment dengan cara meng-parse data Json ke kode dart
    - Membuat file assignment.dart pada folder model lalu diisi dengan kode hasil parse data Json sebelumnya
    - Menambahkan Dependensi HTTP pada file android/app/src/main/AndroidManifest.xml
    - Membuat file assignments.dart pada folder pages yang dimana akan menjadi tempat data-data tugas
    - Integrasi form django dengan aplikas flutter dengan membuat create_assignment_flutter pada study_tracker/views.py
    - Integreasi fitur logout pada django dengan aplikasi flutter dengan fungsi logout pada authetication/views.py lalu menyesuaikan tombol logout pada menut.dart