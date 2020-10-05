import 'package:flutter/material.dart';

final TextEditingController cmInput = TextEditingController(text: "");
final TextEditingController kgInput = TextEditingController(text: "");

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double cm = 0;
  int kg = 0;
  double result = 0;
  double impact = 0;

  calculation() {
    setState(() {
      cm = double.parse(cmInput.text);
      kg = int.parse(kgInput.text);
      impact = cm * cm;
      result = kg / impact;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vücut Kitle Endeksi Hesapla"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: TextField(
                  controller: cmInput,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Height",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: TextField(
                  controller: kgInput,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Weight",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              RaisedButton(
                onPressed: () {
                  calculation();
                },
                child: Text("Result"),
              ),
              SizedBox(
                height: 25,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Result: $result",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
