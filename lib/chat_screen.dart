import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            const CircleAvatar(backgroundColor: Color(0xFFD4AF37), radius: 15),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Pareja Elegant", style: TextStyle(fontSize: 14)),
                Text("En línea", style: TextStyle(fontSize: 10, color: Colors.green)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.vpn_key, color: Color(0xFFD4AF37)), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // Aviso de seguridad
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.white10,
            width: double.infinity,
            child: const Text(
              "🔒 Chat encriptado. Capturas de pantalla bloqueadas.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ),
          
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                _buildBubble("Hola, nos ha encantado vuestro perfil. ¿Tenéis la llave?", false),
                _buildBubble("¡Hola! Sí, os la acabamos de enviar. ¿Os apetece un cóctel este viernes?", true),
              ],
            ),
          ),

          // Barra de escritura
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.black,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Escribe un mensaje...",
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const CircleAvatar(
                  backgroundColor: Color(0xFFD4AF37),
                  child: Icon(Icons.send, color: Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBubble(String text, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isMe ? const Color(0xFFD4AF37) : Colors.white12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(color: isMe ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
