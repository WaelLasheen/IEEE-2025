# Headphone Showcase App

A Flutter application that showcases different headphone models with color selection and view customization.

## Features

- Interactive headphone display with multiple view angles (front, cover, side)
- Color selection for headphones (Black, Brown, Silver)
- Favorite toggle functionality
- Product details display
- Clean and responsive UI design

## Project Structure

```
lib/
├── core/
│   └── image_manager.dart    # Manages image paths
├── provider/
│   └── headphone_provider.dart    # State management
├── screen/
│   ├── head_phone_screen.dart    # Main screen
│   └── widgets/    # UI components
│       ├── Cover.dart
│       ├── custom_button.dart
│       ├── custom_icon_logo.dart
│       ├── details_section.dart
│       ├── footer.dart
│       ├── photo_card.dart
│       ├── photo_section.dart
│       ├── row_options.dart
│       ├── select_color.dart
│       ├── select_color_button.dart
│       ├── select_cover.dart
│       └── star_rate.dart
└── main.dart    # App entry point
```

## Dependencies

- [Provider](https://pub.dev/packages/provider): ^6.1.2 - For state management
- Flutter SDK: ^3.5.3

## Implementation Details

The app uses the Provider pattern for state management. The main components include:

- `HeadphoneProvider`: Manages the state for color selection, view angles, and favorite status
- `HeadPhoneScreen`: Main screen that displays the product
- Various widgets for different sections of the UI (photo display, details, color selection)

## Screenshots

Screenshot_20250426-133948.png
Screenshot_20250426-133958.png
Screenshot_20250426-134008.png
Screenshot_20250426-134013.png