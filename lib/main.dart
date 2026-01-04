import 'package:swingers_app/lounge_screen.dart';
import 'package:swingers_app/chat_screen.dart';
import 'package:swingers_app/profile_screen.dart';
// Esta es la pantalla que verán después de pagar
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
final List<Widget> _pages = [
    const LoungeScreen(), // Pantalla 1
    const ChatScreen(),   // Pantalla 2 (La que acabas de crear)
    const ProfileScreen(), // Pantalla 3
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
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "Mensajes"), // <--- AÑADE ESTO
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
      ),
