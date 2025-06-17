import 'package:flutter/material.dart';
import 'package:private_message/account_creation_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: -0.5,
                  child: const Icon(
                    Icons.favorite_border,
                    size: 100,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 50),

                // campo usuario
                SizedBox(
                  width: size.width * 0.8,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Correo electrónico o número de teléfono',
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      prefixIcon: const Icon(Icons.person, color: Colors.black),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),

                const SizedBox(height: 12),

                // campo contraseña
                SizedBox(
                  width: size.width * 0.8,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),

                const SizedBox(height: 20),

                // botón iniciar sesión
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 150,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 20),

                // texto ¿Olvidaste tu contraseña?
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 100),

                // botón crear cuenta
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountCreationView(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: const Size(400, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.black, width: 2),
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
      ),
    );
  }
}
