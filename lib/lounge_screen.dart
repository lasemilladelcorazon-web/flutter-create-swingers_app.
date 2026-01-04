import 'package:flutter/material.dart';

class LoungeScreen extends StatelessWidget {
  const LoungeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("THE LOUNGE", style: TextStyle(letterSpacing: 4, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: const Icon(Icons.filter_list, color: Color(0xFFD4AF37)),
      ),
      body: Column(
        children: [
          // Banner de bienvenida al Club
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: const Color(0xFFD4AF37).withOpacity(0.1),
            child: const Text(
              "Solo miembros verificados",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFFD4AF37), fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: 5, // Simulación de 5 parejas cerca
              itemBuilder: (context, index) {
                return _buildLoungeCard();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoungeCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF111111),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        children: [
          // Imagen de perfil simulada (Elegante)
          Container(
            height: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              color: Colors.white05,
            ),
            child: const Center(child: Icon(Icons.group, size: 50, color: Colors.white24)),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Pareja Elegant - 32/30", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("A 5km de ti • Activos ahora", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                // Botón de solicitud de Llave
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Color(0xFFD4AF37)),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: const Text("PEDIR LLAVE", style: TextStyle(color: Color(0xFFD4AF37), fontSize: 12)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
