import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: PageOne(),
    ),
  );
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wybór zadania",
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Visibility/Opacity",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(),
                  ),
                );
              },
            ),
            TextButton(
              child:
              Text("Card ListTile", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageThree(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("ListView.builder",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageFive(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("TextField", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageSix(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("TextEditingController",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageSeven(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatefulWidget {
  PageTwo();
  @override
  _PageTwoState createState() => _PageTwoState();
}

double _myOpacity = 1.0;

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invisible/Opacity", textAlign: TextAlign.center),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              child: Text(
                "Niewidzialny",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 25,
                ),
              ),
              visible: false,
            ),
            SizedBox(
              height: 10,
            ),
            Visibility(
              child: Text(
                "Widzialny",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 25,
                ),
              ),
              visible: true,
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
              opacity: 0.5,
              child: Text(
                "Przeźroczystość",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
                opacity: _myOpacity,
                child: Text(
                  "DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, "
                      "DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, "
                      "DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, "
                      "DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, "
                      "DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, "
                      "DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, "
                      "DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, "
                      "DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, DZIABRZDYL, ",
                  style: TextStyle(
                    fontFamily: "Comic Sans MS",
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Zmień",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                setState(() {
                  if (_myOpacity > 0.1) {
                    _myOpacity = _myOpacity - 0.1;}
                  else {
                    _myOpacity = _myOpacity + 0.9;
                  }
                });
              },
            ),

            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Wróć", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card and ListTile"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  dense: true,
                  title: Text("Find your phone"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Text("Location"),
                  subtitle: Text("Show details"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  dense: true,
                  title: Text("Phone details"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.android),
                  title: Text("Android version"),
                  subtitle: Text("11.8"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.flag),
                  title: Text("Język"),
                  subtitle: Text("Angielski"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              TextButton(
                child: Text("Wróć", style: TextStyle(color: Colors.black)),
                onPressed: () {
                  Navigator.pop(context, 6);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageFive extends StatelessWidget {
  final List<String> items;

  PageFive({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = List<String>.generate(20001, (i) => "Item $i");
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder", textAlign: TextAlign.center),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<String>('items', items));
  }
}

class PageSix extends StatelessWidget {
  PageSix();

  TextEditingController _NameControler = TextEditingController();
  TextEditingController _SecondNameControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField", textAlign: TextAlign.center),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: _NameControler,
                  decoration: InputDecoration(
                      hintText: "Imię",
                      labelText: "imie",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "Comic Sans MS",
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.new_releases)),
                  obscureText: false,
                  maxLength: 20,
                  maxLines: 1,
                  onChanged: (text) {}),
              TextField(
                  controller: _SecondNameControler,
                  decoration: InputDecoration(
                      hintText: "Nazwisko",
                      labelText: "nazwisko",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "Comic Sans MS",
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.drive_file_rename_outline)),
                  obscureText: false,
                  maxLength: 20,
                  maxLines: 1,
                  onChanged: (text) {}),
              TextField(
                  decoration: InputDecoration(
                    hintText: "Hasło",
                    labelText: "Hasło",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Comic Sans MS",
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.shield),
                  ),
                  obscureText: true,
                  maxLength: 20,
                  maxLines: 1,
                  onSubmitted: (text) {
                    if (text == "Hasło123") {
                      showDialog( context: context,
                          builder: (context) => AlertDialog(
                              content: Text("Witam ponownie " +
                                  _NameControler.text +
                                  " " +
                                  _SecondNameControler.text)));
                    }
                    else{showDialog( context: context,
                        builder: (context) => AlertDialog(
                            content: Text("Hasło jest niepoprawne")));}
                  }),
              TextButton(
                child: Text(
                  "Wróć",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pop(context, 6);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageSeven extends StatefulWidget {
  @override
  _PageSeven createState() => _PageSeven();
}

class _PageSeven extends State<PageSeven> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextEditingController", textAlign: TextAlign.center),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: "Telefon",
                labelText: "Napisz swój numer telefonu",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.blueGrey,
                  fontFamily: "Comic Sans MS",
                ),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
              maxLength: 12,
              maxLines: 1,
            ),
            TextButton(
              child: Text(
                "Wróć",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  content: Text("Napisałeś: ${myController.text}")));
        },
        tooltip: 'Increment',
        child: Icon(Icons.looks),
      ),
    );
  }
}