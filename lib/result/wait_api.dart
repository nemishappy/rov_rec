import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/result/result1.dart';
import 'package:rov_rec/result/result2.dart';
import 'package:rov_rec/result/result3.dart';
import 'package:rov_rec/result/result4.dart';
import 'package:rov_rec/result/result5.dart';
import 'package:rov_rec/service/singleton.dart';
import 'package:http/http.dart' as http;

class Res {
  final String id;
  const Res(this.id);
}

class WaitingWidget extends StatefulWidget {
  const WaitingWidget({Key? key}) : super(key: key);

  @override
  _WaitingWidgetState createState() => _WaitingWidgetState();
}

class _WaitingWidgetState extends State<WaitingWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Singleton sg = Singleton();
  @override
  void initState() {
    super.initState();
    _loadAns();
  }

  void _loadAns() async {
    Map<String, String> body = {
      'b': sg.questions[0].toString(),
      'c': sg.questions[1].toString(),
      'd': sg.questions[2].toString(),
      'e': sg.questions[3].toString(),
      'f': sg.questions[4].toString(),
      'g': sg.questions[5].toString(),
      'h': sg.questions[6].toString(),
      'i': sg.questions[7].toString(),
    };
    var resp = await predictPrice(body);
    _sendToResult(resp);
  }

  _sendToResult(int resp) async {
    switch (resp) {
      case 1:
        await Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Result1Widget()),
          (Route<dynamic> route) => false,
        );
        break;
      case 2:
        await Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Result2Widget()),
          (Route<dynamic> route) => false,
        );
        break;
      case 3:
        await Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Result3Widget()),
          (Route<dynamic> route) => false,
        );
        break;
      case 4:
        await Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Result4Widget()),
          (Route<dynamic> route) => false,
        );
        break;
      case 5:
        await Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Result5Widget()),
          (Route<dynamic> route) => false,
        );
        break;
      default:
    }
  }

  //METHOD TO PREDICT PRICE
  Future<int> predictPrice(var body) async {
    final uri = Uri.http('157.245.144.155:8000', '/predict', body);
    final response = await http.post(uri, headers: <String, String>{
      'Content-Type': 'application/json',
    });
    if (response.statusCode == 200) {
      print(response.statusCode);
      print("DATA FETCHED SUCCESSFULLY");
      var result = json.decode(response.body);
      print(result["prediction"]);
      return result["prediction"];
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF343434),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Material(
                  color: Colors.transparent,
                  elevation: 6,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 54, 24, 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                CircularProgressIndicator(),
                                Text("Loading"),
                              ],
                            ),
                          ),
                        ],
                      )))
            ])));
  }
}
