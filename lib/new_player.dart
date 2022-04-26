import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/knowledge/newbie_knowledge.dart';
import 'package:rov_rec/questionnaire/question1.dart';
import 'package:rov_rec/widgets/mywidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckNewWidget extends StatefulWidget {
  const CheckNewWidget({Key? key}) : super(key: key);

  @override
  _CheckNewWidgetState createState() => _CheckNewWidgetState();
}

class _CheckNewWidgetState extends State<CheckNewWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String username = '';
  @override
  void initState() {
    super.initState();
    _loadName();
  }

  void _loadName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = (prefs.getString('username') ?? '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Getting Started',
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            child: Text(
                              'ยินดีต้อนรับคุณ $username',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xFF303030),
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 10, 0, 0),
                            child: Text(
                              'ก่อนที่จะเข้าสู่แบบสอบถามแนะนำฮีโร่:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 22,
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                            child: Text(
                              'คุณมีความรู้เกี่ยวกับในด้านต่างๆ\nของ ROV หรือไม่?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 40, 0, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: ButtonWidget(
                                text: 'มีอยู่แล้ว, เริ่มทำแบบสอบทดสอบเลย',
                                options: const ButtonOptions(
                                  width: 200,
                                  height: 50,
                                  color: Color(0xFF046EBC),
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: const Question1Widget(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: ButtonWidget(
                                text: 'ไม่มี, ฉันไม่แน่ใจขอดูข้อมูลเกมก่อน',
                                options: const ButtonOptions(
                                  width: 200,
                                  height: 50,
                                  color: Color(0xFF046EBC),
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: const NewbieKnowledgeWidget(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ])));
  }
}
