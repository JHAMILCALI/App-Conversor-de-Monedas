# 💱 Conversor de Monedas - Flutter App

Una aplicación móvil desarrollada en Flutter que permite convertir montos entre distintas monedas de forma sencilla y rápida. Ideal para estudiantes, viajeros o cualquier persona que necesite realizar conversiones básicas entre monedas.

---

## 📱 Características

- ✅ Conversión entre las siguientes monedas:
  - Bolivianos (Bs)
  - Dólares estadounidenses (USD)
  - Euros (EUR)
  - Soles peruanos (SOL)
- ✅ Interfaz intuitiva y colorida
- ✅ Mensajes de error amigables
- ✅ Soporte para entradas numéricas
- ✅ Conversión en tiempo real con solo presionar un botón
- ✅ Diseño adaptable a diferentes tamaños de pantalla
- ✅ Imagen decorativa en la pantalla principal

---

## 🧠 Funcionamiento

1. El usuario ingresa un **monto numérico**
2. Selecciona la **moneda de origen** y la **moneda destino**
3. Al presionar el botón **"Convertir Monedas"**, la aplicación realiza el cálculo usando tasas fijas
4. El resultado se muestra en pantalla con estilo destacado

---

## 💻 Tecnologías usadas

- Flutter (SDK)
- Dart (Lenguaje de programación)
- Android SDK
- Widgets nativos de Flutter (`TextField`, `DropdownButtonFormField`, `ElevatedButton`, `Container`, etc.)

---

## 📂 Estructura del Proyecto

```bash
conversor_monedas/
├── android/
├── ios/
├── lib/
│ └── main.dart
├── assets/
│ └── img/
│ └── imgConver.png
├── test/
├── pubspec.yaml
└── README.md
```


- `lib/main.dart` → Archivo principal con toda la lógica y la interfaz
- `assets/img/imgConver.png` → Imagen decorativa utilizada en la pantalla
- `pubspec.yaml` → Declaración de dependencias y recursos (como imágenes)

---

## 🛠️ Cómo compilar y ejecutar

### Prerrequisitos
- Flutter SDK instalado ([Guía de instalación](https://flutter.dev/docs/get-started/install))
- Dispositivo físico o emulador conectado

### 1. Clonar el repositorio (si aplica)

```bash
git clone https://github.com/tu_usuario/flutter-conversor-monedas.git
```
```bash
cd flutter-conversor-monedas
```
2. Instalar dependencias
```bash
flutter pub get
```
3. Ejecutar en modo desarrollo
```bash
flutter run
```
4. Compilar APK para Android
```bash
flutter build apk --release
```