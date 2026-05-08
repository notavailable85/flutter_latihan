import 'dart:ui';

import 'package:flutter/material.dart';

class ProfilSaya extends StatelessWidget {
  const ProfilSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Profil Saya',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        // children: [
        //   Container(
        //     alignment: Alignment.center,
        //     width: double.infinity,
        //     color: const Color(0x00000000),
        //     padding: const EdgeInsets.all(16),
        //     child: Column(
        children: [
          const Text(
            'Nama : Azhar Ridwan',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.location_on, size: 30, color: Colors.black),
              SizedBox(width: 5),
              Text('Jakarta Barat', style: TextStyle(fontSize: 16)),
            ],
          ),
          const SizedBox(height: 5),
          const Text(
            'Peserta pelatihan asal jakarta barat yang sedang mengikuti pelatihan App Developer Batch 2 tahun 2026',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
    //     ],
    //   ),
    // );
  }
}
