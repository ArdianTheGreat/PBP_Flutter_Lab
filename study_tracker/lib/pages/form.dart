import 'package:study_tracker/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _namaTugas = "";
  String _namaMataKuliah = "";
  int _persentaseProgress = 0;
  String _deskripsiTugas = "";
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
              title: Text('Form'),
          ),
          drawer: const DrawerMenu(),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                // Menggunakan padding sebesar 8 pixels
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Contoh: Tugas 2",
                          labelText: "Nama Tugas",
                          // Menambahkan icon agar lebih intuitif
                          icon: const Icon(Icons.edit_note),
                          // Menambahkan circular border agar lebih rapi
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        // Menambahkan behavior saat nama diketik
                        onChanged: (String? value) {
                          setState(() {
                            _namaTugas = value!;
                          });
                        },
                        // Menambahkan behavior saat data disimpan
                        onSaved: (String? value) {
                          setState(() {
                            _namaTugas = value!;
                          });
                        },
                        // Validator sebagai validasi form
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama tugas tidak boleh kosong!';
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                // Menggunakan padding sebesar 8 pixels
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Contoh: PBP",
                          labelText: "Nama Mata Kuliah",
                          // Menambahkan icon agar lebih intuitif
                          icon: const Icon(Icons.edit_note),
                          // Menambahkan circular border agar lebih rapi
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        // Menambahkan behavior saat nama diketik
                        onChanged: (String? value) {
                          setState(() {
                            _namaTugas = value!;
                          });
                        },
                        // Menambahkan behavior saat data disimpan
                        onSaved: (String? value) {
                          setState(() {
                            _namaTugas = value!;
                          });
                        },
                        // Validator sebagai validasi form
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama mata kuliah tidak boleh kosong!';
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                          labelText: "Persentase progress",
                          // Menambahkan icon agar lebih intuitif
                          icon: const Icon(Icons.edit_note),
                          // Menambahkan circular border agar lebih rapi
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        // Menambahkan behavior saat jumlah diketik
                        onChanged: (String? value) {
                          setState(() {
                            _persentaseProgress = int.parse(value!);
                          });
                        },
                        // Menambahkan behavior saat data disimpan
                        onSaved: (String? value) {
                          setState(() {
                            _persentaseProgress = int.parse(value!);
                          });
                        },
                        // Validator sebagai validasi form
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Persentase progress tidak boleh kosong!';
                          }
                          int? intValue = int.tryParse(value);
                          if (intValue == null) {
                            return 'Persentase progress harus berupa angka!';
                          }
                          if (intValue < 0 || intValue > 100){
                            return 'Persentase progress harus di antara 0 sampai 100!';
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      // Menggunakan padding sebesar 8 pixels
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Contoh: Membuat form flutter!",
                          labelText: "Deskripsi Tugas",
                          // Menambahkan icon agar lebih intuitif
                          icon: const Icon(Icons.notes),
                          // Menambahkan circular border agar lebih rapi
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        // Menambahkan behavior saat nama diketik
                        onChanged: (String? value) {
                          setState(() {
                            _deskripsiTugas = value!;
                          });
                        },
                        // Menambahkan behavior saat data disimpan
                        onSaved: (String? value) {
                          setState(() {
                            _deskripsiTugas = value!;
                          });
                        },
                        // Validator sebagai validasi form
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Deskripsi tugas tidak boleh kosong!';
                          }
                          return null;
                        },
                      ),
                    ),

                    TextButton(
                      child: const Text(
                        "Tambah",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 15,
                                child: Container(
                                  child: ListView(
                                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                                    shrinkWrap: true,
                                    children: <Widget>[
                                      Center(child: const Text('Informasi Data')),
                                      SizedBox(height: 20),
                                      // TODO: Munculkan informasi yang didapat dari form
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Kembali'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ]
                ),
              ),
            ),
          )
      );
    }
}
