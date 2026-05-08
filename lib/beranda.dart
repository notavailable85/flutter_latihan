import 'package:flutter/material.dart';

void main() {
  runApp(const SafetynesiaApp());
}

class SafetynesiaApp extends StatelessWidget {
  const SafetynesiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Safetynesia',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,

        title: const Text(
          "Safetynesia",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),

          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const Text(
                      "Selamat Datang 👋",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Platform Training & Sertifikasi K3 Indonesia",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 15),

                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),

                      child: const Text(
                        "Lihat Jadwal Training",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Menu Utama
              const Text(
                "Layanan Utama",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                crossAxisSpacing: 15,
                mainAxisSpacing: 15,

                children: [
                  buildMenu(
                    Icons.calendar_month,
                    "Jadwal\nPelatihan",
                    Colors.orange,
                  ),

                  buildMenu(
                    Icons.workspace_premium,
                    "Sertifikasi\nSMK3 & ISO",
                    Colors.blue,
                  ),

                  buildMenu(
                    Icons.badge,
                    "Perpanjangan\nSKP & Lisensi",
                    Colors.green,
                  ),

                  buildMenu(Icons.menu_book, "Materi\nTraining", Colors.purple),

                  buildMenu(Icons.gavel, "Regulasi\nK3", Colors.red),

                  buildMenu(Icons.article, "Artikel\nSafety", Colors.teal),
                ],
              ),

              const SizedBox(height: 30),

              // Jadwal Training
              const Text(
                "Training Terbaru",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              buildTrainingCard(
                "Ahli K3 Umum Kemnaker RI",
                "10 - 22 Mei 2026",
                "Online & Offline",
              ),

              buildTrainingCard("Petugas P3K", "15 Mei 2026", "Online"),

              buildTrainingCard("Operator Forklift", "20 Mei 2026", "Jakarta"),

              const SizedBox(height: 30),

              // Artikel
              const Text(
                "Artikel Keselamatan",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              buildArticleCard("Cara Menerapkan SMK3 di Perusahaan"),

              buildArticleCard("Pentingnya APD di Area Kerja"),

              buildArticleCard("Regulasi K3 Terbaru Tahun 2026"),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        selectedItemColor: Colors.orange,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.school), label: "Training"),

          BottomNavigationBarItem(icon: Icon(Icons.article), label: "Artikel"),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  // Widget Menu
  Widget buildMenu(IconData icon, String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color.withOpacity(0.2),

            child: Icon(icon, size: 35, color: color),
          ),

          const SizedBox(height: 15),

          Text(
            title,
            textAlign: TextAlign.center,

            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // Widget Training Card
  Widget buildTrainingCard(String title, String date, String location) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.orange,

          child: Icon(Icons.school, color: Colors.white),
        ),

        title: Text(title),

        subtitle: Text("$date\n$location"),

        isThreeLine: true,

        trailing: ElevatedButton(
          onPressed: () {},

          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),

          child: const Text("Daftar", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  // Widget Artikel
  Widget buildArticleCard(String title) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: ListTile(
        leading: const Icon(Icons.article, color: Colors.orange),

        title: Text(title),

        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
      ),
    );
  }
}
