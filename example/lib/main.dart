import 'package:advance_country_picker/advance_country_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Advance Country Picker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Advance Country Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            CountryCodeWidget(
              onTap: (country) {
                print(country?.name);
              },
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: AdvanceCountryCodeInputField(
                hintText: "XXXXXXXXXX",
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await AdvanceCountryPicker().showCountryPickerDialog(context,filteredCountries: ['229', '55', '225', '56', '237', '86', '57', '20', '233', '852', '62', '91', '254'
            , '52', '234', '63', '48', '221', '255', '256', '84', '27', '260', '998',  '66','992', '252', '40', '48', '51', '92', '60', '254', '226',  '55', '880', '54']);
        },
        tooltip: 'open country picker',
        child: const Icon(Icons.flag),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
