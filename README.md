# JSON to CSV Conversion and Saving App

![Flutter Logo](https://flutter.dev/images/flutter-logo-sharing.png)

A Flutter app that fetches student data from an API, converts it to CSV format, and saves it to the device's storage.

## Features

- Fetches student data from a specified API.
- Converts the fetched data to CSV format.
- Saves the CSV file to the device's storage for easy access.

## Getting Started

Follow these steps to get the app up and running on your local machine:

1. Install [Flutter](https://flutter.dev/docs/get-started/install).
2. Clone this repository:

   ```bash
   git clone https://github.com/your-username/json-to-csv-app.git
   ```

3. Navigate to the project directory:

   ```bash
   cd json-to-csv-app
   ```

4. Install dependencies:

   ```bash
   flutter pub get
   ```

5. Run the app:

   ```bash
   flutter run
   ```

## Usage

1. Launch the app on your emulator or device.
2. Press the "Convert and Save CSV" button.
3. The app will fetch student data, convert it to CSV, and save it to your device's storage.
4. You can then access the saved CSV file through your device's file manager.

## Dependencies

- [csv](https://pub.dev/packages/csv) - A library for reading and writing CSV data.
- [dio](https://pub.dev/packages/dio) - A powerful HTTP client for Dart.
- [path_provider](https://pub.dev/packages/path_provider) - Provides platform-specific locations to store files.
- [permission_handler](https://pub.dev/packages/permission_handler) - A plugin for handling permissions.

## Contributing

Contributions are welcome! Feel free to open a pull request for any enhancements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
