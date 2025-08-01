import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NuevaTarjetaScreen extends StatelessWidget {
  const NuevaTarjetaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Tarjeta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Número de Tarjeta
            const Text(
              'Número de Tarjeta',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 16,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly, // Solo números
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: '1234 5678 9012 3456',
                counterText: "", // Oculta el contador de caracteres
              ),
            ),
            const SizedBox(height: 16),

            // Nombre en la Tarjeta
            const Text(
              'Nombre en la Tarjeta',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.name,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')), // Solo letras y espacios
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nombre Apellido',
              ),
            ),
            const SizedBox(height: 16),

            // Fecha de Vencimiento
            const Text(
              'Fecha de Vencimiento',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.datetime,
              maxLength: 5,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')), // Solo números y '/'
                LengthLimitingTextInputFormatter(5),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'MM/AA',
                counterText: "",
              ),
            ),
            const SizedBox(height: 16),

            // Código CVV
            const Text(
              'Código CVV',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 3,
              obscureText: true,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly, // Solo números
                LengthLimitingTextInputFormatter(3),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: '123',
                counterText: "",
              ),
            ),
            const SizedBox(height: 32),

            // Botón Agregar
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Acción para agregar la tarjeta
                },
                child: const Text('Agregar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
