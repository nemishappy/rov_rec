import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/new_player.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPageWidget extends StatefulWidget {
  const OnboardingPageWidget({Key? key}) : super(key: key);

  @override
  _OnboardingPageWidgetState createState() => _OnboardingPageWidgetState();
}

class _OnboardingPageWidgetState extends State<OnboardingPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  _saveName() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('username', textController.text);
    await Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        duration: Duration(milliseconds: 300),
        reverseDuration: Duration(milliseconds: 300),
        child: const CheckNewWidget(),
      ),
    );
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
              color: Color(0xFF090F13),
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
        // resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF343434),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
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
                          Image.asset(
                            'assets/images/logo.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Text(
                              'สวัสดี!\nก่อนอื่นใดขอทำความรู้จักกับคุณ\nชื่อของคุณคือ?',
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: TextFormField(
                              controller: textController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                              ),
                            ),
                          ),
                          Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.fromHeight(
                                      40), // fromHeight use double.infinity as width and 40 is the height
                                ),
                                onPressed: () {
                                  _saveName();
                                },
                                child: Text('ต่อไป'),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
