import 'package:flutter/material.dart';
import 'package:private_message/my_views/login_view.dart';

class AccountCreationView extends StatefulWidget {
  const AccountCreationView({super.key});

  @override
  State<AccountCreationView> createState() => _AccountCreationViewState();
}

class _AccountCreationViewState extends State<AccountCreationView> {
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _apellido = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();
  final TextEditingController _dd = TextEditingController();
  final TextEditingController _mm = TextEditingController();
  final TextEditingController _aa = TextEditingController();
  final TextEditingController _mujer = TextEditingController();
  final TextEditingController _hombre = TextEditingController();
  final TextEditingController _resevado = TextEditingController();
  final TextEditingController _correo = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _nombre.dispose();
    _apellido.dispose();
    _birthdateController.dispose();
    _dd.dispose();
    _mm.dispose();
    _aa.dispose();
    _mujer.dispose();
    _hombre.dispose();
    _resevado.dispose();
    _correo.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Text(
                'Crear cuenta',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _nombre,
                      decoration: InputDecoration(
                        hintText: _nombre.text.isEmpty ? 'Nombre' : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  const SizedBox(width: 12), // Espacio entre los dos campos
                  Expanded(
                    child: TextField(
                      controller: _apellido,
                      decoration: InputDecoration(
                        hintText: _apellido.text.isEmpty ? 'Apellido' : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  // Día (DD)
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: _dd.text.isNotEmpty ? _dd.text : null,
                      decoration: InputDecoration(
                        hintText: 'DD',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      items: List.generate(31, (index) {
                        final day = (index + 1).toString().padLeft(2, '0');
                        return DropdownMenuItem(value: day, child: Text(day));
                      }),
                      onChanged: (value) {
                        setState(() {
                          _dd.text = value!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Mes (MM)
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: _mm.text.isNotEmpty ? _mm.text : null,
                      decoration: InputDecoration(
                        hintText: 'Mes',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      items:
                          const [
                                'Enero',
                                'Febrero',
                                'Marzo',
                                'Abril',
                                'Mayo',
                                'Junio',
                                'Julio',
                                'Agosto',
                                'Septiembre',
                                'Octubre',
                                'Noviembre',
                                'Diciembre',
                              ]
                              .map(
                                (month) => DropdownMenuItem(
                                  value: month,
                                  child: Text(month),
                                ),
                              )
                              .toList(),
                      onChanged: (value) {
                        setState(() {
                          _mm.text = value!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Año (YYYY)
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: _aa.text.isNotEmpty ? _aa.text : null,
                      decoration: InputDecoration(
                        hintText: 'Año',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      items: List.generate(28, (index) {
                        final year = (1980 + index).toString();
                        return DropdownMenuItem(value: year, child: Text(year));
                      }),
                      onChanged: (value) {
                        setState(() {
                          _aa.text = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Row(
                children: [
                  // Mujer
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _seleccion = 'Mujer';
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Radio<String>(
                              value: 'Mujer',
                              groupValue: _seleccion,
                              onChanged: (value) {
                                setState(() {
                                  _seleccion = value!;
                                });
                              },
                            ),
                            const SizedBox(width: 6),
                            const Text('Mujer'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Hombre
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _seleccion = 'Hombre';
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Radio<String>(
                              value: 'Hombre',
                              groupValue: _seleccion,
                              onChanged: (value) {
                                setState(() {
                                  _seleccion = value!;
                                });
                              },
                            ),
                            const SizedBox(width: 6),
                            const Text('Hombre'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Reservado
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _seleccion = 'Reservado';
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Radio<String>(
                              value: 'Reservado',
                              groupValue: _seleccion,
                              onChanged: (value) {
                                setState(() {
                                  _seleccion = value!;
                                });
                              },
                            ),
                            const SizedBox(width: 6),
                            const Text('Reservado'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _correo,
                      decoration: InputDecoration(
                        hintText: _correo.text.isEmpty
                            ? 'Correo electrónico o número de teléfono'
                            : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _password,
                      decoration: InputDecoration(
                        hintText: _password.text.isEmpty
                            ? 'contraseña nueva'
                            : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),
              // Botón crear cuenta
              ElevatedButton(
                onPressed: () {
                  print('Género seleccionado: $_seleccion');
                  // Lógica para registrar cuenta
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(size.width * 0.9, 55),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Registrarme',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
                child: const Text(
                  '¿Ya tienes cuenta?',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

String _seleccion = '';
