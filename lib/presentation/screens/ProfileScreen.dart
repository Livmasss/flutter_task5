import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Сейранян Самвел Гагикович"),
        Text("ЭФБО-01-22"),
        Text("ПКС 5 задание"),
      ],
    );
  }
}
