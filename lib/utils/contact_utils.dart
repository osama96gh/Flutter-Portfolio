import 'package:flutter/material.dart';

class ContactInfo {
  final IconData icon;
  final String title;
  final String details;

  const ContactInfo(
      {required this.icon, required this.title, required this.details});
}

class ContactUtils {
  static const List<ContactInfo> contacts = [
    ContactInfo(
      icon: Icons.home,
      title: "Location",
      details: "Cyberjaya, Malaysia",
    ),
    ContactInfo(
      icon: Icons.phone,
      title: "Phone",
      details: "+60 19-692 9872",
    ),
    ContactInfo(
      icon: Icons.mail,
      title: "Email",
      details: "osama.ghazal.1996@gmail.com",
    ),
  ];

}
