import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/questionnaire/question2.dart';
import 'package:rov_rec/service/singleton.dart';
import 'package:rov_rec/widgets/mywidgets.dart';

class Question8Widget extends StatefulWidget {
  const Question8Widget({Key? key}) : super(key: key);

  @override
  _Question8WidgetState createState() => _Question8WidgetState();
}

class _Question8WidgetState extends State<Question8Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Singleton sg = Singleton();
  final checkboxValue = List<bool>.filled(5, false);
  @override
  void initState() {
    super.initState();
    var index = sg.questions[7];
    if (index != 0) {
      checkboxValue[index - 1] = true;
    }
  }

  void _nextQuestion() async {
    // sg.questions[0] = value;
    for (var i = 0; i < 5; i++) {
      print(checkboxValue[i]);
      if (checkboxValue[i]) {
        sg.questions[7] = i + 1;
        print(sg.questions[7]);
        for (var item in sg.questions) {
          print(item);
        }
        _openDialog();
        return;
      }
    }
    const snackBar = SnackBar(
      content: Text(
        'กรุณาตอบแบบสอบถาม ก่อนไปหน้าถัดไป',
        style: TextStyle(
          color: Color(0xFF303030),
          fontFamily: 'Sarabun',
        ),
      ),
      backgroundColor: Color(0xFFEEEEEE),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _openDialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('ยืนยันคำตอบทั้งหมดหรือไม่?',
                style: TextStyle(
                  color: Color(0xFF303030),
                  fontFamily: 'Sarabun',
                  fontSize: 24,
                )),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false), // passing false
                child: Text('ไม่ใช่',
                    style: TextStyle(
                      color: Color(0xFFff3503),
                      fontFamily: 'Sarabun',
                    )),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true), // passing true
                child: Text('ใช่',
                    style: TextStyle(
                      color: Color(0xFF1cac78),
                      fontFamily: 'Sarabun',
                    )),
              ),
            ],
          );
        }).then((exit) {
      if (exit == null) return;

      if (exit) {
        // user pressed Yes button
      } else {
        // user pressed No button
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'แบบทดสอบ',
            style: TextStyle(
              color: const Color(0xFF090F13),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 1,
        ),
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
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24, 54, 24, 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Text(
                              'Question 8',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Text(
                              'อะไรสำคัญที่สุดในเกมสำหรับคุณ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: CheckboxListTile(
                                value: checkboxValue[0],
                                onChanged: (newValue) {
                                  setState(() {
                                    if (newValue == true) {
                                      for (var i = 0; i < 5; i++) {
                                        checkboxValue[i] = false;
                                      }
                                    }
                                    checkboxValue[0] = newValue!;
                                  });
                                },
                                title: const Text(
                                  'การช่วยเพื่อน',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 18,
                                  ),
                                ),
                                dense: true,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: CheckboxListTile(
                                value: checkboxValue[1],
                                onChanged: (newValue) {
                                  setState(() {
                                    if (newValue == true) {
                                      for (var i = 0; i < 5; i++) {
                                        checkboxValue[i] = false;
                                      }
                                    }
                                    checkboxValue[1] = newValue!;
                                  });
                                },
                                title: const Text(
                                  'Objective',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 18,
                                  ),
                                ),
                                dense: true,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: CheckboxListTile(
                                value: checkboxValue[2],
                                onChanged: (newValue) {
                                  setState(() {
                                    if (newValue == true) {
                                      for (var i = 0; i < 5; i++) {
                                        checkboxValue[i] = false;
                                      }
                                    }
                                    checkboxValue[2] = newValue!;
                                  });
                                },
                                title: const Text(
                                  'การไฟต์ การต่อสู้เป็นทีม',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 18,
                                  ),
                                ),
                                dense: true,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: CheckboxListTile(
                                value: checkboxValue[3],
                                onChanged: (newValue) {
                                  setState(() {
                                    if (newValue == true) {
                                      for (var i = 0; i < 5; i++) {
                                        checkboxValue[i] = false;
                                      }
                                    }
                                    checkboxValue[3] = newValue!;
                                  });
                                },
                                title: const Text(
                                  'สิ่งก่อสร้าง(ป้อม)',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 18,
                                  ),
                                ),
                                dense: true,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: CheckboxListTile(
                                value: checkboxValue[3],
                                onChanged: (newValue) {
                                  setState(() {
                                    if (newValue == true) {
                                      for (var i = 0; i < 5; i++) {
                                        checkboxValue[i] = false;
                                      }
                                    }
                                    checkboxValue[4] = newValue!;
                                  });
                                },
                                title: const Text(
                                  'การสังหารศัตรู',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 18,
                                  ),
                                ),
                                dense: true,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: ButtonWidget(
                                  text: 'ต่อไป',
                                  options: const ButtonOptions(
                                    width: 200,
                                    height: 50,
                                    color: Color(0xFF046EBC),
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                  onPressed: _nextQuestion),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ])));
  }
}
