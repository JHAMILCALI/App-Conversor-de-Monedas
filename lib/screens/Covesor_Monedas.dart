import 'package:flutter/material.dart';

class ConversorDeMonedas extends StatefulWidget {
  const ConversorDeMonedas({super.key});

  @override
  State<ConversorDeMonedas> createState() => _ConversorDeMonedasState();
}

class _ConversorDeMonedasState extends State<ConversorDeMonedas> {
  TextEditingController _montoController = TextEditingController();
  List<String> monedas = ['Bs', 'USD', 'EUR', 'SOL'];
  String monedaSeleccionada1 = 'Bs';
  String monedaSeleccionada2 = 'USD';
  String resultadoTexto = '';

  double convertirMoneda(
    double monto,
    String monedaOrigen,
    String monedaDestino,
  ) {
    Map<String, double> tasas = {
      'USD': 1.0,
      'Bs': 6.93,
      'EUR': 0.87,
      'SOL': 3.62,
    };

    double montoEnUSD = monto / tasas[monedaOrigen]!;
    double montoConvertido = montoEnUSD * tasas[monedaDestino]!;
    return montoConvertido;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONVERSOR DE MONEDAS'),
        backgroundColor: Color.fromARGB(255, 43, 150, 243),
      ),
      backgroundColor: Color.fromARGB(255, 113, 185, 248),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CONVERSOR DE MONEDAS',
              style: TextStyle(fontSize: 30, color: Colors.lightGreenAccent),
            ),
            SizedBox(height: 16),
            Image.asset('assets/img/imgConver.png', height: 100),
            SizedBox(height: 20),
            TextField(
              controller: _montoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingresa el monto',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: monedaSeleccionada1,
              decoration: InputDecoration(
                labelText: 'Selecciona la moneda que tenga',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.orangeAccent,
              ),
              items:
                  monedas.map((String moneda) {
                    return DropdownMenuItem<String>(
                      value: moneda,
                      child: Text(moneda),
                    );
                  }).toList(),
              onChanged: (String? nuevoValor) {
                setState(() {
                  monedaSeleccionada1 = nuevoValor!;
                });
              },
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: monedaSeleccionada2,
              decoration: InputDecoration(
                labelText: 'Selecciona la moneda a convertir',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.teal,
              ),
              items:
                  monedas.map((String moneda) {
                    return DropdownMenuItem<String>(
                      value: moneda,
                      child: Text(moneda),
                    );
                  }).toList(),
              onChanged: (String? nuevoValor) {
                setState(() {
                  monedaSeleccionada2 = nuevoValor!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Color de fondo del botón
                foregroundColor: Colors.white, // Color del texto del botón
                textStyle: TextStyle(
                  fontSize: 18, // Tamaño de letra
                  fontWeight: FontWeight.bold, // Negrita o normal
                ),
              ),
              onPressed: () {
                String montoTexto = _montoController.text;
                double? monto = double.tryParse(montoTexto);

                if (monto == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor ingresa un monto válido'),
                    ),
                  );
                  return;
                }

                double resultado = convertirMoneda(
                  monto,
                  monedaSeleccionada1,
                  monedaSeleccionada2,
                );

                setState(() {
                  resultadoTexto =
                      '$monto $monedaSeleccionada1 => ${resultado.toStringAsFixed(2)} $monedaSeleccionada2';
                });
              },
              child: Text('Convertir Monedas'),
            ),
            SizedBox(height: 20),
            if (resultadoTexto.isNotEmpty)
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.yellow[100], // Fondo del texto
                  border: Border.all(color: Colors.orange, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  resultadoTexto,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            SizedBox(height: 20),
            Text(
              'JHAMIL CALIXTO MAMANI QUEA',
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 43, 26, 237),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
