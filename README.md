# Advance Country Picker

`advance_country_picker` is a Flutter package that provides a customizable country picker widget. This package includes functionalities for selecting countries, displaying flags, and parsing phone numbers with country codes. It is easy to integrate into your Flutter applications. You can get countries list, get country by name, by country code, by nationality and by dial code. There two ways to select a country using dialogue and bottomsheet.


![Package Functionality](https://firebasestorage.googleapis.com/v0/b/money-assistant-15daf.appspot.com/o/Screenshot_2024-07-27-11-59-15-57_012c8c35a03834d0a5c0d5d58debcc52.jpg?alt=media&token=d6b4e714-3017-46bf-9a21-a4400cbc2a98)

![Package Functionality](https://firebasestorage.googleapis.com/v0/b/money-assistant-15daf.appspot.com/o/picker.gif?alt=media&token=23839934-0095-4d63-b222-ec072c98c095)

![Package Functionality](https://firebasestorage.googleapis.com/v0/b/money-assistant-15daf.appspot.com/o/textfield.gif?alt=media&token=a58c39a7-10cd-465c-9925-0d2cefdf1e7c)

## Features

- Customizable country picker widget
- Customizable country phone input field
- Customizable dialoge and bottomsheet
- Displays country flags
- get countries list
- Provides methods to get and set phone number and country programmatically
- get country by country code
- get country by country name
- get country by dial code
- get country by nationality
- Parses phone numbers with country codes
- phone number formatters
- Validation: Validate based on type (mobile, fixed line, voip)
- Formatting: Format phone number for a specific country
- Phone ranges: find all phone numbers in a range of phone numbers
- Find phone numbers in a text
- Supports eastern arabic digits
- Uses best-in-class metadata from Google's libPhoneNumber project.

## Installation

Add `advance_country_picker` to your `pubspec.yaml`:

```yaml
dependencies:
  advance_country_picker: ^1.0.0
```

Then run `flutter pub get` to install the package.

## Usage

### Country Picker Widget

You can use the `AdvanceCountryPickerWidget` to display a list of countries with search functionality:

```dart
import 'package:flutter/material.dart';
import 'package:advance_country_picker/advance_country_picker.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Advance Country Picker Example'),
        ),
        body: Center(
          child: AdvanceCountryPickerWidget(
            onSelected: (Country? country) {
              // Handle country selection
              print('Selected country: ${country?.name}');
            },
          ),
        ),
      ),
    );
  }
}
```

### Phone Number Input with Country Code

The `PhoneNumberInput` widget allows users to input phone numbers with a customizable country code selector. You can get the input phone number and set the country and phone number programmatically.

```dart
import 'package:flutter/material.dart';
import 'package:advance_country_picker/advance_country_picker.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Phone Number Input Example'),
        ),
        body: Center(
          child: PhoneNumberInput(
            onPhoneNumberChanged: (phoneNumber, country) {
              // Handle phone number change
              print('Phone number: $phoneNumber, Country: ${country?.name}');
            },
          ),
        ),
      ),
    );
  }
}
```

### Getting and Setting Phone Number Programmatically

You can get the input phone number and set the country and phone number programmatically using methods provided by the `PhoneNumberInput` widget.

```dart
import 'package:flutter/material.dart';
import 'package:advance_country_picker/advance_country_picker.dart';

class MyAppState extends State<MyApp> {
  final PhoneNumberInput _phoneNumberInput = PhoneNumberInput();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Phone Number Input Example'),
        ),
        body: Column(
          children: [
            _phoneNumberInput,
            ElevatedButton(
              onPressed: () {
                // Get the input phone number
                String phoneNumber = _phoneNumberInput.phoneNumber;
                print('Phone number: $phoneNumber');
              },
              child: Text('Get Phone Number'),
            ),
            ElevatedButton(
              onPressed: () {
                // Set the country and phone number programmatically
                _phoneNumberInput.setCountryAndPhoneNumber(
                  Country(name: 'United States', countryCode: 'US', dialCode: '+1', flag: 'assets/flags/us.png'),
                  '1234567890',
                );
              },
              child: Text('Set Country and Phone Number'),
            ),
          ],
        ),
      ),
    );
  }
}
```

### Parsing Phone Numbers

The `advance_country_picker` package also includes functionality from the `phone_numbers_parser` package to parse and validate phone numbers.

```dart
import 'package:advance_country_picker/phone_numbers_parser.dart';

void main() {
  PhoneNumberParser parser = PhoneNumberParser();
  PhoneNumber phoneNumber = parser.parse('+14155552671');

  print('Country: ${phoneNumber.country}');
  print('National Number: ${phoneNumber.nationalNumber}');
}
```

## Customizing Widgets

You can customize various aspects of the widgets provided by `advance_country_picker`:

### AdvanceCountryPickerWidget

- `itemTextStyle`: TextStyle for list items
- `searchInputStyle`: TextStyle for search input
- `searchInputDecoration`: Decoration for search input
- `flagIconWidth`: Width of flag icons
- `flagIconHeight`: Height of flag icons
- `showSeparator`: Whether to show separators between list items
- `focusSearchBox`: Whether to focus the search box automatically
- `searchHintText`: Hint text for the search input
- `filteredCountries`: List of countries to filter

### PhoneNumberInput

- `phoneNumberTextStyle`: TextStyle for the phone number input
- `phoneNumberInputDecoration`: Decoration for the phone number input
- `flagIconWidth`: Width of flag icons
- `flagIconHeight`: Height of flag icons
- `countryCodeTextStyle`: TextStyle for the country code
- `selectorType`: Selector type for country code (bottom sheet or dialog)
- `filteredCountries`: List of countries to filter
- `initialCountry`: Initial selected country
- `initialPhoneNumber`: Initial phone number


## Contributing

Contributions are welcome! Please submit a pull request or open an issue to discuss changes.

## License

This package is licensed under the MIT License. See the `LICENSE` file for more details.