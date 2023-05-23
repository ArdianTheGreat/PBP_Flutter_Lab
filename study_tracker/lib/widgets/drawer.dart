import 'package:study_tracker/pages/menu.dart';
import 'package:flutter/material.dart';

import 'package:study_tracker/pages/form.dart';

import '../pages/assignments.dart';


class DrawerMenu extends StatelessWidget {

  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Menu'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),

          ListTile(
            title: const Text('Tambah Tugas'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),

          ListTile(
            title: const Text('Informasi Tugas'),
            onTap: () {
                // Route menu ke halaman transaksi
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const AssignmentPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

