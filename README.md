# Minimalist State Management


This repository demonstrates an efficient implementation of state management in Flutter using a service locator pattern with `getIt`. The primary goal is to achieve reactive code without resorting to imperative approaches like `setState`. The code is designed to observe changes only in the needed areas, eliminating the need to rebuilding unneccessary areas..

## Acknowledgements

Special thanks to [Ozkan Kaya](https://github.com/ozkayas) for providing the insightful tutorial and code implementation on efficient state management using service locator in Flutter. This project drew inspiration and learning from his work.


## How to Use

1. **Setup `getIt`:** Initialize the service locator `getIt` in the `main` function by calling `initGetIt()`.
2. **Widgets:**
   - `MyHomePage`: Represents the main page of the app. It utilizes `CounterState` and `ListViewState` for managing state.
   - `CounterText`: Widget responsible for displaying the current counter value.
   - `ListViewContainer`: Widget for displaying a list of posts with add and remove functionality.
3. **State Management:**
   - `CounterState`: Manages the counter state with methods for incrementing, decrementing, and resetting the counter.
   - `ListViewState`: Manages the list of posts with methods for adding and removing posts.
   - Both `CounterState` and `ListViewState` utilize `ValueNotifier` to notify listeners of state changes.
4. **UI Components:**
   - `AlertDialog`: Displays a warning when the counter reaches 10, prompting the user to continue or reset.
   - `AppBar`: Customized app bar with an icon.
   - `FloatingActionButton`: Allows adding new posts to the list.

## Key Features

- **Reactive Code:** Utilizes `ValueNotifier` and `ValueListenableBuilder` to achieve reactive behavior without relying on `setState`.
- **Service Locator Pattern:** Uses `getIt` for efficient and centralized dependency management.
- **Separation of Concerns:** State management logic is separated from UI components for better code organization and maintainability.

## Dependencies

- `flutter/material.dart`: Flutter framework for building UI.
- `get_it`: Package for implementing the service locator pattern.

## Getting Started

1. Clone the repository.
2. Ensure Flutter SDK is installed and up-to-date.
3. Run `flutter pub get` to install dependencies.
4. Run the app on your preferred device or emulator.

## Contributing

Contributions are welcome! If you have suggestions for improvements or new features, feel free to open an issue or submit a pull request.

