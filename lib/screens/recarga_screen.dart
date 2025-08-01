import 'package:flutter/material.dart';
import '../widgets/drawer_widget.dart';
import 'package:cityflow/screens/nuevaTarjeta_screen.dart';

class RecargaScreen extends StatelessWidget {
  const RecargaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Tarjetas'),
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/tarjetaVMC.jpg'),
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Apodo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Recargar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const NuevaTarjetaScreen()),
                );
              },
              child: const Text('Agregar Tarjeta'),
            ),
          ],
        ),
      ),
    );
  }
}
