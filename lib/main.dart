import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(key: ValueKey('teste')));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Listagem de criptomoedas'),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // theme: ThemeData(
      //   colorScheme: const ColorScheme(
      //       brightness: Brightness.light,
      //       primary: Colors.grey,
      //       onPrimary: Colors.white,
      //       secondary: Colors.indigo,
      //       onSecondary: Colors.indigo,
      //       error: Colors.indigo,
      //       onError: Colors.green,
      //       background: Colors.green,
      //       onBackground: Colors.green,
      //       surface: Colors.green,
      //       onSurface: Colors.green),
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 2, 5, 41),
      //   // primaryColor: Colors.lightBlue[800],

      //   // brightness: Brightness.dark,
      //   // primarySwatch: Colors.blue,
      //   // primaryColor: Colors.indigo[900],
      //   textTheme: const TextTheme(
      //     headline1:
      //         TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //     headline6: TextStyle(color: Colors.white),
      //     bodyText1: TextStyle(color: Colors.white, fontFamily: 'Hind'),
      //     bodyText2: TextStyle(color: Colors.white, fontFamily: 'Hind'),
      //   ),
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      backgroundColor: Colors.blue.shade900,
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Container(
            padding: const EdgeInsets.only(left: 4, right: 4),
            height: 70,
            decoration: BoxDecoration(
                color: Colors.blue.shade900,
                border: const Border(bottom: BorderSide(color: Colors.white))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.network(
                    'https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579',
                    width: 48,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text.rich(TextSpan(children: <InlineSpan>[
                      TextSpan(
                          text: 'Bitcoin',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.fontSize)),
                      const WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: SizedBox(width: 4)),
                      TextSpan(
                          text: 'BTC',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.fontSize))
                    ])),
                  )
                ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text.rich(TextSpan(
                        text: '24h',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ))),
                    Text.rich(TextSpan(
                        text: '20,04%', style: TextStyle(color: Colors.white)))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text.rich(TextSpan(
                        text: 'Preço atual',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ))),
                    Text.rich(TextSpan(
                        text: 'R\$ 10.000,00',
                        style: TextStyle(color: Colors.white)))
                  ],
                ),
              ],
            ))
      ]),

      // Image.network(
      //     'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Google_Images_2015_logo.svg/1200px-Google_Images_2015_logo.svg.png'),
      // const Text.rich(TextSpan(children: [
      //   TextSpan(
      //       text: 'Click', style: TextStyle(fontWeight: FontWeight.bold)),
      //   WidgetSpan(
      //       child: Icon(
      //     Icons.add,
      //     size: 50,
      //     shadows: [
      //       Shadow(color: Colors.blue, offset: Offset(0, 10)),
      //       Shadow(color: Colors.red, offset: Offset(10, 20))
      //     ],
      //   )),
      //   TextSpan(
      //       text: 'to add', style: TextStyle(fontStyle: FontStyle.italic))
      // ]))
    );

    // body: Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       const Text(
    //         'You have pushed the button this many times:',
    //       ),
    //       Text(
    //         '$_counter',
    //         style: Theme.of(context).textTheme.headline4,
    //       ),
    //     ],
    //   ),
    // ),
    // floatingActionButton: FloatingActionButton(
    //   onPressed: _incrementCounter,
    //   tooltip: 'Increment',
    //   child: const Icon(Icons.add),
    // ), // This trailing comma makes auto-formatting nicer for build methods.
  }
}
