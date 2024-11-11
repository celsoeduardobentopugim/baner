import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perfil de Usuário")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stack para sobrepor a foto do perfil sobre o banner
            Stack(
              clipBehavior: Clip.none, // Para não cortar a imagem
              children: [
                // Banner de fundo
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://via.placeholder.com/400x200'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Foto de perfil sobre o banner
                Positioned(
                  top: 120, // Posiciona a foto um pouco abaixo
                  left: 16,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://via.placeholder.com/100'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 80), // Espaço entre a imagem e o nome
            // Nome do usuário
            Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Bio do usuário
            Text(
              'Apaixonado por tecnologia e desenvolvimento de software.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            // Row para os botões de ação
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Botão de seguir
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Seguir'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                ),
                SizedBox(width: 16),
                // Botão de enviar mensagem
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Enviar Mensagem'),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
