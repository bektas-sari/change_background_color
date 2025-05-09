# Color Changer App

This is a simple yet interactive Flutter application that demonstrates how to dynamically change the background color of the screen using a button. It also displays the current color name on the screen, adjusting the text color for optimal readability based on background brightness.

## Features

* Single button interface for simplicity
* Changes screen background color on each button press
* Displays the current color name dynamically
* Automatically adjusts text color for readability (black or white)

## Screenshots

| Before                            | After                           |
| --------------------------------- | ------------------------------- |
| ![Before](screenshots/before.png) | ![After](screenshots/after.png) |

## Getting Started

### Prerequisites

* Flutter SDK installed ([installation guide](https://flutter.dev/docs/get-started/install))
* A code editor like [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/)

### Installation

```bash
git clone https://github.com/your-username/change_background_color.git
cd color_changer_app
flutter pub get
flutter run
```

## Code Overview

The main functionality is handled in the `StatefulWidget`:

```dart
void changeColor() {
  final selectedColor =
      colorList[DateTime.now().second % colorList.length];

  setState(() {
    backgroundColor = selectedColor;
    colorName = colorMap[selectedColor] ?? 'unknown';
  });
}
```

## Folder Structure

```
lib/
  main.dart          # Main app logic
assets/
  ...               # (optional) images or icons
```

## License

This project is open source and available under the [MIT License](LICENSE).

## Contact

For questions or suggestions:

* GitHub Issues: [Open an issue](https://github.com/your-username/color_changer_app/issues)
* Email: [yourname@example.com](mailto:yourname@example.com)

