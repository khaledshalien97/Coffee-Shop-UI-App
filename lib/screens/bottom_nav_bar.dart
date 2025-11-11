import 'package:coffee_shop_mobile_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

const _barColor = Color(0xFF2D2D2F);
const _selectedBg = Color(0xFFB87453);
const _iconColor = Colors.white70;
const _iconSelected = Colors.white;

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _index = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      body: _pages[_index],

      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Container(
          height: 72,
          decoration: BoxDecoration(
            color: _barColor,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.35),
                blurRadius: 30,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: Row(
            children: [
              _navItem(Icons.home_rounded, 0),
              _navItem(Icons.notifications_none_rounded, 1),
              _navItem(Icons.shopping_bag_outlined, 2),
              _navItem(Icons.person_outline_rounded, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, int index) {
    final bool selected = index == _index;
    return Expanded(
      child: Center(
        child: GestureDetector(
          onTap: () => setState(() => _index = index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            padding: EdgeInsets.all(selected ? 10 : 6),
            decoration: BoxDecoration(
              color: selected ? _selectedBg : Colors.transparent,
              borderRadius: BorderRadius.circular(16),
              boxShadow: selected
                  ? [
                      BoxShadow(
                        color: _selectedBg.withOpacity(0.45),
                        blurRadius: 16,
                        offset: const Offset(0, 6),
                      ),
                    ]
                  : null,
            ),
            child: Icon(
              icon,
              size: selected ? 28 : 26,
              color: selected ? _iconSelected : _iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
