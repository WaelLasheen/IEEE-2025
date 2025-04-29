# Headphone Showcase App

A Flutter application that showcases different headphone models with color selection and view customization.

## Features

- Interactive headphone display with multiple view angles (front, cover, side)
- Color selection for headphones (Black, Brown, Silver)
- Favourite toggle functionality
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

- `HeadphoneProvider`: Manages the state for color selection, view angles, and favourite status
- `HeadPhoneScreen`: Main screen that displays the product
- Various widgets for different sections of the UI (photo display, details, color selection)

## Screenshots
![Screenshot_20250426-133948](https://github.com/user-attachments/assets/a2ab8888-e7a5-467a-8dee-6a23d0c169e7)

![Screenshot_20250426-133958](https://github.com/user-attachments/assets/81340794-e7b4-4cbf-bb39-caf57432fa72)

![Screenshot_20250426-134008](https://github.com/user-attachments/assets/ccb9ba07-d742-4121-a1b0-2384f5e990bf)

![Screenshot_20250426-134013](https://github.com/user-attachments/assets/6cc753c2-6bf2-431d-aa3a-6590cef542b4)
