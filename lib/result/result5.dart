import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/knowledge/menu.dart';
import 'package:rov_rec/widgets/mywidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Result5Widget extends StatefulWidget {
  const Result5Widget({
    Key? key,
  }) : super(key: key);

  @override
  _Result5WidgetState createState() => _Result5WidgetState();
}

class _Result5WidgetState extends State<Result5Widget> {
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
                              24, 54, 24, 24),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),
                                child: Text(
                                  '??????????????????????????????????????? $username ?????????',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xFF303030),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              Image.asset(
                                'assets/images/knowledge/role/abyss_role.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: Text(
                                  'Abyssal Dragon (Carry)',
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
                                  '???????????????????????? :\n   ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????? ??????????????????????????????????????? Support ?????????????????????????????????????????????',
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
                                  '?????????????????????????????? :',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 15, 0, 0),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(24, 0, 24, 0),
                                              child: Center(
                                                  child: Image.asset(
                                                'assets/images/carry/carry1.png',
                                              ))),
                                        ),
                                        Expanded(
                                          child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(24, 0, 24, 0),
                                              child: Center(
                                                  child: Image.asset(
                                                'assets/images/carry/carry2.png',
                                              ))),
                                        ),
                                        Expanded(
                                          child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(24, 0, 24, 0),
                                              child: Center(
                                                  child: Image.asset(
                                                'assets/images/carry/carry3.png',
                                              ))),
                                        ),
                                      ])),
                              Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 15, 0, 0),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Expanded(
                                          child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(24, 0, 24, 0),
                                              child: Center(
                                                  child: Text('HAYATE'))),
                                        ),
                                        Expanded(
                                          child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(24, 0, 24, 0),
                                              child:
                                                  Center(child: Text('SLIMS'))),
                                        ),
                                        Expanded(
                                          child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(24, 0, 24, 0),
                                              child:
                                                  Center(child: Text('ELSU'))),
                                        ),
                                      ])),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 40, 0, 0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(),
                                  child: ButtonWidget(
                                    text: '???????????????',
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
                                          duration:
                                              const Duration(milliseconds: 300),
                                          reverseDuration:
                                              const Duration(milliseconds: 300),
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
