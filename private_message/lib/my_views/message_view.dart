import 'package:flutter/material.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  final List<String> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.insert(0, text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 5),
                  const CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                      'https://tse3.mm.bing.net/th?id=OIP.Gs7Vj7yBU5-9oMGTemYj3gHaGk&pid=Api&P=0&h=180',
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      "Jholian manuel",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.phone, color: Colors.black),
                    onPressed: () {
                      // lógica de llamada
                    },
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.videocam, color: Colors.black),
                    onPressed: () {
                      // lógica de videollamada
                    },
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),

            // Mensajes
            Expanded(
              child: _messages.isEmpty
                  ? const Center(child: Text("No hay mensajes aún"))
                  : ListView.builder(
                      reverse: true,
                      itemCount: _messages.length,
                      itemBuilder: (context, index) {
                        return Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              _messages[index],
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        );
                      },
                    ),
            ),

            const Divider(height: 1),

            // Campo de mensaje + íconos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.add, color: Colors.black),
                    onPressed: () {
                      // lógica agrgar archivo
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera_alt, color: Colors.black),
                    onPressed: () {
                      // lógica de entrar a camara
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.image, color: Colors.black),
                    onPressed: () {
                      // lógica de envira imagen
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.mic, color: Colors.black),
                    onPressed: () {
                      // lógica de gravar audio
                    },
                  ),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "Aa",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                      ),
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.emoji_emotions, color: Colors.black),
                    onPressed: () {
                      // lógica de emogi
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.black),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
