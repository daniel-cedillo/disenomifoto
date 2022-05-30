import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,

      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mi foto generacion 19-22'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Agregando bordes a Cedillo',
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 30, 60, 30),
                child: Material(
                  color: Colors.transparent,
                  elevation: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(14, 40, 0, 0),
                      child: Text(
                        'Cedillo Sandoval Daniel Arturo',
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 5,
                indent: 100,
                endIndent: 100,
                color: Colors.black,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Image.network(
                  'https://raw.githubusercontent.com/daniel-cedillo/imagenes-para-flutter/main/CEDI.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                thickness: 5,
                indent: 100,
                endIndent: 100,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 30, 60, 30),
                child: Material(
                  color: Colors.transparent,
                  elevation: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(77, 40, 0, 0),
                      child: Text(
                        'Programacion\n             6-I',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
