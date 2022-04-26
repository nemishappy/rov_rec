import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/questionnaire/question2.dart';
import 'package:rov_rec/questionnaire/question6.dart';
import 'package:rov_rec/service/singleton.dart';
import 'package:rov_rec/widgets/mywidgets.dart';

class Question5Widget extends StatefulWidget {
  const Question5Widget({Key? key}) : super(key: key);

  @override
  _Question5WidgetState createState() => _Question5WidgetState();
}

class _Question5WidgetState extends State<Question5Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Singleton sg = Singleton();
  final checkboxValue = List<bool>.filled(4, false);
  @override
  void initState() {
    super.initState();
    var index = sg.questions[4];
    if (index != 0) {
      checkboxValue[index - 1] = true;
    }
  }

  void _nextQuestion() async {
    // sg.questions[0] = value;
    for (var i = 0; i < 4; i++) {
      print(checkboxValue[i]);
      if (checkboxValue[i]) {
        sg.questions[4] = i + 1;
        print(sg.questions[4]);
        await Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 300),
            reverseDuration: Duration(milliseconds: 300),
            child: const Question6Widget(),
          ),
        );
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
                              'Question 5',
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
                              'ลักษณะการเล่นของคุณเป็นแบบไหน',
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
                                      for (var i = 0; i < 4; i++) {
                                        checkboxValue[i] = false;
                                      }
                                    }
                                    checkboxValue[0] = newValue!;
                                  });
                                },
                                title: const Text(
                                  'ความเสี่ยงต่ำ',
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
                                      for (var i = 0; i < 4; i++) {
                                        checkboxValue[i] = false;
                                      }
                                    }
                                    checkboxValue[1] = newValue!;
                                  });
                                },
                                title: const Text(
                                  'ความเสี่ยงปานกลาง',
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
                                      for (var i = 0; i < 4; i++) {
                                        checkboxValue[i] = false;
                                      }
                                    }
                                    checkboxValue[2] = newValue!;
                                  });
                                },
                                title: const Text(
                                  'ความเสี่ยงสูง',
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
                                      for (var i = 0; i < 4; i++) {
                                        checkboxValue[i] = false;
                                      }
                                    }
                                    checkboxValue[3] = newValue!;
                                  });
                                },
                                title: const Text(
                                  'ความเสี่ยงสูงมาก',
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
