import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/knowledge/menu.dart';
import 'package:rov_rec/widgets/mywidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MapKnowLedgeWidget extends StatefulWidget {
  const MapKnowLedgeWidget({Key? key}) : super(key: key);

  @override
  _MapKnowLedgeWidgetState createState() => _MapKnowLedgeWidgetState();
}

class _MapKnowLedgeWidgetState extends State<MapKnowLedgeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text(
                        'คำศัทพ์เกี่ยวกับ แผนที่ในเกม ROV',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF303030),
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/rov_term_map.png',
                        ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Top lane',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = หรืออีกชื่อคือ เลน Dark Slayer ทางเดินด้านบน มี Objective Cruise Eagle อาศัยอยู่'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Top jungle',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' = ป่าด้านบน '),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Triangle area',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' = พื้นที่สามเหลี่ยม'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Team base',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' = ป้อมหรือฐานทีม'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Boundary line',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' = เส้นแบ่งเขตแดน'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Middle lane',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' = ทางเดินกลาง'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Two team',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' = เส้นแบ่งสองทีม'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Shortest lane',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' = ทางเดินสั้นที่สุด'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Bottom lane',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = หรืออีกชื่อคือ เลน Abyssal Dragon  ทางเดินด้านล่าง มี Objective Spirit Sentinel อาศัยอยู่ '),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24, 30, 24, 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: ButtonWidget(
                  text: 'ย้อนกลับ',
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
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
