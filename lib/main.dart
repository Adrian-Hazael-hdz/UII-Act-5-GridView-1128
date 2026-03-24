import 'package:flutter/material.dart';

void main() => runApp(const PChopApp());

class PChopApp extends StatelessWidget {
  const PChopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // Fondo lavanda pastel muy suave
        scaffoldBackgroundColor: const Color(0xFFF8F4FF), 
      ),
      home: const ProductGridScreen(),
    );
  }
}

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // LISTA DE 14 PRODUCTOS CON LINKS INDEPENDIENTES
    // Reemplaza las URLs por tus links de GitHub (formato raw)
    final List<Map<String, String>> products = [
      {'name': 'Laptop Pro X', 'sub': 'Procesador i9', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/laptop.jpg'},
      {'name': 'Mouse RGB', 'sub': 'Sensor Óptico', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto2.jpg'},
      {'name': 'Teclado Mecánico', 'sub': 'Switch Brown', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto4.jpg'},
      {'name': 'Monitor 4K', 'sub': '144Hz IPS', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto6.jpg'},
      {'name': 'Audífonos Pro', 'sub': 'Noise Cancelling', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto5.jpg'},
      {'name': 'Webcam HD', 'sub': '1080p 60fps', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/webcam.jpg'},
      {'name': 'Silla Gamer', 'sub': 'Ergonómica Pastel', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/silla.jpg'},
      {'name': 'Micrófono USB', 'sub': 'Calidad Estudio', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/microfono.jpg'},
      {'name': 'Gabinete ATX', 'sub': 'Cristal Templado', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/gabinete.jpg'},
      {'name': 'Tarjeta Video', 'sub': 'RTX Edition', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/tarjeta.jpg'},
      {'name': 'Memoria RAM', 'sub': '16GB DDR5', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/ram.jpg'},
      {'name': 'Disco SSD', 'sub': '1TB NVMe', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/ssd.jpg'},
      {'name': 'Pad Mouse XL', 'sub': 'Superficie Speed', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/mousepad.jpg'},
      {'name': 'Enfriamiento', 'sub': 'Líquido RGB', 'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/enfriamiento.jpg'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('PChop Electronics', 
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color(0xFFD1C4E9), // Morado pastel principal
        elevation: 2,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        // Configuración: 2 columnas, 7 filas (automático por el itemCount de 14)
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.7, // Proporción estirada para las 3 filas inferiores
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            title: products[index]['name']!,
            subtitle: products[index]['sub']!,
            imageUrl: products[index]['url']!,
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE1BEE7), width: 1), // Borde morado pastel
      ),
      child: Column(
        children: [
          // Espacio para la imagen
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                // Si el link falla, muestra un color pastel de respaldo
                errorBuilder: (context, error, stackTrace) => 
                  Container(color: const Color(0xFFF3E5F5), child: const Icon(Icons.computer, color: Colors.purple)),
              ),
            ),
          ),
          
          // PARTE INFERIOR (3 filas de información)
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Fila 1: Título
                  Text(
                    title,
                    style: const TextStyle(
  fontWeight: FontWeight.bold, 
  fontSize: 15, 
  color: Color(0xFF7B1FA2), // Cambiado de 0Box a 0xFF
),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // Fila 2: Subtítulo
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                  // Fila 3: Estrellitas
                  const Row(
                    children: [
                      Icon(Icons.star, size: 14, color: Color(0xFFFFD54F)),
                      Icon(Icons.star, size: 14, color: Color(0xFFFFD54F)),
                      Icon(Icons.star, size: 14, color: Color(0xFFFFD54F)),
                      Icon(Icons.star, size: 14, color: Color(0xFFFFD54F)),
                      Icon(Icons.star_half, size: 14, color: Color(0xFFFFD54F)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}