import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/knowledge/menu.dart';
import 'package:rov_rec/widgets/mywidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewbieKnowledgeWidget extends StatefulWidget {
  const NewbieKnowledgeWidget({Key? key}) : super(key: key);

  @override
  _NewbieKnowledgeWidgetState createState() => _NewbieKnowledgeWidgetState();
}

class _NewbieKnowledgeWidgetState extends State<NewbieKnowledgeWidget> {
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
            'Rov Knowledge',
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
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF343434),
        body: SingleChildScrollView(
            child: Container(
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 34, 24, 24),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                child: Text(
                                  'ROV คืออะไร',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'ROV คือ เกมบนมือถือแนว MOBA โดยจะแบ่งเป็น 2 ทีม เมื่อฝั่งใดฝั่งหนึ่งทำลายสิ่งก่อสร้างหลัก หรือศัพท์ในเกมที่เรียกกันว่า บ้าน ได้ก่อนจะเป็นฝ่ายที่ชนะ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'โดยเราจะต้องเล่น ด้วยการควบคุมฮีโร่ต่าง ๆ ในเกมซึ่งมีมากถึง 112 ตัวละคร ซึ่งแต่ละตัวละครก็จะมีหน้าที่ที่แตกต่างกัน ตามตำแหน่งของตัวละคร',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Image.asset(
                                    'assets/images/knowledge/rov_cover.jpeg',
                                  )),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 40, 0, 0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
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
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: const MenuKnowLedge(),
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
                ]))));
  }
}
