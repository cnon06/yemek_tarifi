import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    var propertiesOfScreen = MediaQuery.of(context);
    var screenWidth=propertiesOfScreen.size.width;
    var screenHeight=propertiesOfScreen.size.height;


    return Scaffold(



      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
      
      SingleChildScrollView(
        child: Column(

          children:  [
           Image(image: const AssetImage("images/kofte.jpg"),width: screenWidth,),
            Row(

              children: [
                Expanded(
                  child: SizedBox(
                    height: screenHeight/17,
                    child: TextButton(onPressed: ()
                    {
                      print('Beğenildi.');
                    },

                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.orange,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          ),
                        ),
                        child: Text("Beğen")),
                  ),
                ),

                Expanded(
                  child: SizedBox(
                    height: screenHeight/17,
                    child: TextButton(onPressed: ()
                    {
                      print('Yorum yapıldı.');
                    },

                        style: TextButton.styleFrom(

                          primary: Colors.black,
                          backgroundColor: Colors.orangeAccent,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          ),

                        ),


                        child: Text("Yorum Yap")),
                  ),
                ),
              ],

            ),



            Padding(padding:  EdgeInsets.only(top: screenHeight/100, left: screenHeight/150, right: screenHeight/150),
            child:
            Column(




              children: [


                Row(
                  children:  [
                    Text("Köfte",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth/20,
                      ),
                    ),

                  ],
                ),

                Row(
                  children: [
                    Yazi("Izgara üzerinde pişirime uygun.", screenWidth/25),
                    const Spacer(),
                    Yazi("8 Ağustos", screenWidth/25),


                  ],
                ),


                Padding( padding: EdgeInsets.only(top: screenHeight/100),
                  child: Yazi(
                      "Soğanları rendeleyelim."
                          "Maydanozu ince kıyalım."
                          "Bir tepsiye alalım baharat, ekmek kıyması ve tuzunu ilave edelim."
                          "Güzelce yoğuralım. Ne kadar yoğurursak o kadar lezzetli köftelerimiz olur."
                          "İstediğimiz şekli verip vaktiniz varsa buzdolabında dinlendirelim."
                          "Dinlenmiş köfteler çok daha lezzetli olur bilginize."
                          "Sıvı yağda kızartıp sıcak servis yapalım."
                          "Afiyet olsun."
                      , screenWidth/25),
                )

              ],


            ),
            ),






          ],

        ),
      ),
    );
  }
}

class Yazi extends StatelessWidget {


  String icerik;
  double Boyut;

  Yazi(this.icerik, this.Boyut);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: Boyut),);
  }
}
