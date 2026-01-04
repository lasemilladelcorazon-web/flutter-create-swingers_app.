import 'package:flutter/material.dart';

void main() => runApp(const SwingersApp());

class SwingersApp extends StatelessWidget {
  const SwingersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFD4AF37),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const ManifestoPage(),
    );
  }
}

// --- PANTALLA 1: MANIFIESTO ---
class ManifestoPage extends StatelessWidget {
  const ManifestoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("SWINGERS", style: TextStyle(fontSize: 30, letterSpacing: 10, color: Color(0xFFD4AF37), fontWeight: FontWeight.bold)),
            const SizedBox(height: 50),
            const Text(
              "BIENVENIDO AL CLUB\n\nEste es un espacio exclusivo. Para acceder al Lounge y los eventos privados, debes pagar la membresía anual.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 60),
                shape: const StadiumBorder(),
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PaywallPage())),
              child: const Text("ACEPTO EL MANIFIESTO", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

// --- PANTALLA 2: PAGO 19.99€ ---
class PaywallPage extends StatelessWidget {
  const PaywallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Icon(Icons.stars, color: Color(0xFFD4AF37), size: 70),
            const SizedBox(height: 20),
            const Text("MEMBRESÍA EXCLUSIVA", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: const Color(0xFF111111),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFFD4AF37)),
              ),
              child: Column(
                children: [
                  const Text("19,99€", style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Color(0xFFD4AF37))),
                  const Text("PAGO ÚNICO ANUAL", style: TextStyle(letterSpacing: 2, fontSize: 12, color: Colors.grey)),
                  const Divider(height: 40, color: Colors.white24),
                  const Text("✓ Acceso al Lounge Privado\n✓ Llaves de Seguridad para Fotos\n✓ Eventos VIP Verificados", style: TextStyle(height: 2.0)),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD4AF37),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 65),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MainNavigation()));
              },
              child: const Text("PAGAR Y ENTRAR AL CLUB", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}

// --- NAVEGACIÓN PRINCIPAL ---
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const Center(child: Text("LOUNGE: Parejas cerca de ti")),
    const Center(child: Text("MENSAJES: Tus chats privados")),
    const Center(child: Text("PERFIL: Tu identidad VIP")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: const Color(0xFFD4AF37),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Lounge"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
      ),
    );
  }
}
