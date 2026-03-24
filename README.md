# myapp

# Prompt
crea una interfaz de tienda de electrónicos llamada "PChop".

Requerimientos técnicos:

Estructura: Utiliza un GridView.builder. Debe mostrar exactamente 2 columnas y, al tener 14 productos, resultará en 7 filas.

Datos: Crea una lista de objetos (List de Maps) con 14 productos diferentes (PC, Teclado, Mouse, Monitor, etc.). Cada producto debe tener su propio nombre, un subtítulo descriptivo y una URL de imagen única apuntando a archivos RAW de GitHub.

Diseño de Tarjeta (Card): Cada celda debe tener:

Una imagen en la parte superior con bordes redondeados.

Debajo de la imagen, tres filas de contenido:

Fila 1: Título del producto en negrita.

Fila 2: Subtítulo en un tono gris suave.

Fila 3: Un set de 5 estrellas (iconos) para la calificación.

Estilo y Colores: >    - Usa una paleta de colores pasteles.

El color principal debe ser un morado pastel (hexadecimal 0xFFD1C4E9 para fondos y 0xFF7B1FA2 para textos resaltados).

Los bordes de las tarjetas deben ser redondeados (borderRadius: 20) y tener una sombra muy sutil.

Calidad del código: Asegúrate de usar const donde sea posible, manejar errores de carga de imagen con errorBuilder y que el childAspectRatio permita ver todo el texto sin errores de overflow.
<img width="410" height="690" alt="image" src="https://github.com/user-attachments/assets/2f79960d-ea80-4f67-b8b1-53bf5269e5b8" />
<img width="416" height="688" alt="image" src="https://github.com/user-attachments/assets/ce61abe5-a0bf-4633-8265-18b077cfbe89" />
<img width="426" height="708" alt="image" src="https://github.com/user-attachments/assets/395c663a-1a92-4338-8ef5-72fb29120170" />
<img width="395" height="696" alt="image" src="https://github.com/user-attachments/assets/0e591708-8f85-4596-98b7-159788af77e7" />

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
