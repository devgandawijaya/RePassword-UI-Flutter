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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(50.0),
        children: <Widget>[
          Align(
            child: GestureDetector(
              onTap: () {
                // Action to perform on icon click
                print('Icon clicked');
                Navigator.of(context).pop(true);
              },
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  Icons.close,
                  size: 35.0,
                ),
              ),
            ),
          ), // Icon
          Padding(
            padding: EdgeInsets.fromLTRB(8, 50, 8, 0),
            child: Text(
              'Reset',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  height: 0),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 50),
            child: Text(
              'Password',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  height: 0 // adjust the font size as needed
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter your email',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: SizedBox(
              height: 45,
              child: ElevatedButton(
                onPressed: null,
                child: const Text('Reset Password'),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blue),
                  // Set background color
                  minimumSize:
                  MaterialStateProperty.all(Size(double.infinity, 0)),
                  // Set minimumSize for width to be 100%
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  // Set text color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10), // Set border radius
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
