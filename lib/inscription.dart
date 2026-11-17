import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'email',
                hintText: 'Entrer votre email',
              ),
              validator: (value) {
                if (value == null || value.contains('@')) {
                  return 'email invalide';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'mot de passe',
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.length < 8) {
                  return 'mot de passe doit contenir au moins 8 caractères';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('inscription'),
            ),
          ],
        ),
      ),
    );
  }
}
