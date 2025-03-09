import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profil",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 70,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/images/profil.jpg'),
            ),
            const SizedBox(height: 15),
            const Text(
              "I Ketut Resika Arthana, S.T., M.Kom",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            const Text(
              "http://www.rey1024.com",
              style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  _buildGridItem(Icons.gps_fixed, "Singaraja", Colors.green),
                  _buildGridItem(Icons.store, "Panji", Colors.orange),
                  _buildGridItem(Icons.music_note, "All Genre", Colors.purple),
                  _buildGridItem(Icons.business, "Undiksha", Colors.blue),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String label, Color iconColor) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15), // Hanya atas yang beradius
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(0), // Lurus di bagian bawah
          bottomRight: Radius.circular(0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Icon(icon, size: 50, color: iconColor),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.zero, // Tidak ada radius untuk bawah
            ),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
