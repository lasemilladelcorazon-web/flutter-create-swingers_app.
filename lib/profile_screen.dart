import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MI PERFIL EXCLUSIVO", style: TextStyle(letterSpacing: 2, fontSize: 16)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: const Icon(Icons.settings, color: Color(0xFFD4AF37)), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Avatar con borde dorado
            Center(
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(color: Color(0xFFD4AF37), shape: BoxShape.circle),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, size: 60, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text("PAREJA LIBERAL", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("Madrid, España", style: TextStyle(color: Colors.grey)),
            
            // Estado de la membresía de 19,99€
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A1A),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.5)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.verified_user, color: Color(0xFFD4AF37)),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("MEMBRESÍA ACTIVA", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Renovación: Enero 2027", style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),

            // Gestión de Llaves Privadas
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStatColumn("Llaves Dadas", "12"),
                  _buildStatColumn("Llaves Recibidas", "8"),
                  _buildStatColumn("Fotos Privadas", "5"),
                ],
              ),
            ),

            const SizedBox(height: 30),
            // Galería Privada (Bloqueada)
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(alignment: Alignment.centerLeft, child: Text("MI GALERÍA PRIVADA", style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1))),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              padding: const EdgeInsets.all(20),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(3, (index) => Container(
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.lock_outline, color: Color(0xFFD4AF37)),
              )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, String count) {
    return Column(
      children: [
        Text(count, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFD4AF37))),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
