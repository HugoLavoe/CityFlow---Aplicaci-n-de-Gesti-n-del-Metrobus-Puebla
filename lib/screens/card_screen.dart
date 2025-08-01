import 'package:flutter/material.dart';
import '../widgets/drawer_widget.dart';
import 'package:cityflow/screens/recarga_screen.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Tarjetas'),
      ),
      drawer: const DrawerWidget(), // Menú desplegable
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/card_image.png'), // Imagen de la tarjeta
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Apodo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para ver saldo
              },
              child: const Text('Ver Saldo'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const RecargaScreen()),
                );
              },
              child: const Text('Recargar'),
            ),
          ],
        ),
      ),
    );
  }
}
