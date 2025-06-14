import 'package:flutter/material.dart';

class AccountCreationView extends StatefulWidget {
  const AccountCreationView({super.key});

  @override
  State<AccountCreationView> createState() => _AccountCreationViewState();
}

class _AccountCreationViewState extends State<AccountCreationView> {
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _apellido = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();
  final TextEditingController _bb = TextEditingController();
  final TextEditingController _mm = TextEditingController();
  final TextEditingController _aa = TextEditingController();
  final TextEditingController _hombre = TextEditingController();
  final TextEditingController _mujer = TextEditingController();
  final TextEditingController _personalizado = TextEditingController();
  final TextEditingController _correo = TextEditingController();
  final TextEditingController _contrasena = TextEditingController();
  @override
  void dispose() {
    _nombre.dispose();
    _apellido.dispose();
    _bb.dispose();
    _mm.dispose();
    _aa.dispose();
    _hombre.dispose();
    _mujer.dispose();
    _personalizado.dispose();
    _correo.dispose();
    _contrasena.dispose();
    _birthdateController.dispose();
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
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _bb,
                      decoration: InputDecoration(
                        hintText: _bb.text.isEmpty ? '15' : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: _mm,
                      decoration: InputDecoration(
                        hintText: _mm.text.isEmpty ? 'enero' : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: _aa,
                      decoration: InputDecoration(
                        hintText: _aa.text.isEmpty ? 'año' : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _mujer,
                      decoration: InputDecoration(
                        hintText: _mujer.text.isEmpty ? 'mujer' : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: _hombre,
                      decoration: InputDecoration(
                        hintText: _hombre.text.isEmpty ? 'hombre' : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: _personalizado,
                      decoration: InputDecoration(
                        hintText: _personalizado.text.isEmpty
                            ? 'pesonalizado'
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
              Expanded(
                child: TextField(
                  controller: _correo,
                  decoration: InputDecoration(
                    hintText: _correo.text.isEmpty ? 'Nombre' : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
              ),
              Expanded(
                child: TextField(
                  controller: _contrasena,
                  decoration: InputDecoration(
                    hintText: _contrasena.text.isEmpty ? 'Nombre' : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
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
                  'Crear cuenta',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
