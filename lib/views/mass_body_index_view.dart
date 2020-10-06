import 'package:flutter/material.dart';

final TextEditingController cmInput = TextEditingController(text: "");
final TextEditingController kgInput = TextEditingController(text: "");

class MassBodyIndexView extends StatefulWidget {
  MassBodyIndexView({Key key}) : super(key: key);

  @override
  _MassBodyIndexViewState createState() => _MassBodyIndexViewState();
}

class _MassBodyIndexViewState extends State<MassBodyIndexView> {
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

  get pageHeight => MediaQuery.of(context).size.height;
  get pageWidth => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mass Body Index"),
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
                height: pageHeight * 0.03,
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
                height: pageHeight * 0.03,
              ),
              RaisedButton(
                onPressed: () {
                  calculation();
                },
                child: Text("Result"),
              ),
              SizedBox(
                height: pageHeight * 0.03,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "BMI: $result",
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