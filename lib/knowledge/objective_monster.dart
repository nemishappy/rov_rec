// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/widgets/mywidgets.dart';

class MonsterKnowLedgeWidget extends StatefulWidget {
  const MonsterKnowLedgeWidget({Key? key}) : super(key: key);

  @override
  _MonsterKnowLedgeWidgetState createState() => _MonsterKnowLedgeWidgetState();
}

class _MonsterKnowLedgeWidgetState extends State<MonsterKnowLedgeWidget> {
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text(
                        'Objective and Monster in ROV',
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
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
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
                                text: 'Objective',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' ????????? ??????????????????????????? ???????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????? ???????????? ???????????????????????????????????????????????????????????????????????? ??????????????????????????????????????? ??????????????????????????????????????????????????????????????????????????????????????????????????????????????? Object ?????????????????????????????????????????????????????????????????????????????????????????????????????? Objective ???????????????????????????????????????????????????????????????????????????????????????????????????????????? 1. ????????????????????? Abyssal Dragon 2. ????????????????????? Dark Slayer'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/objective.jpeg',
                        ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
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
                                text: 'Abyssal Dragon',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' ?????????????????????????????????????????????????????????????????????????????????: ???????????????????????????????????????Abyssal Dragon???????????? ????????????????????????????????? ????????? [Lighting Thunder] ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? 30% ????????????????????????????????????????????? ????????????????????????????????????????????????????????????????????? 90 ??????????????????'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
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
                                text: 'Holy Dragon',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' ?????????????????????????????????????????????????????????????????? Holy Dragon: ??????????????????????????????????????? Holy Dragon ???????????? ????????????????????????????????? ????????? [Light Thunder] ?????????????????? ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? 30% ?????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ????????????????????????????????????????????????????????? 3% ??????????????????????????????????????????????????????????????????????????????????????? (1% ??????????????????????????????????????????????????????????????????????????????????????????????????? 200 ??????????????? ?????????????????????????????????????????????????????????????????????????????? 400 ???????????????) ???????????????????????? 90 ?????????????????? (???????????????????????? 3 ??????????????????)'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/Dragon.jpeg',
                        ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
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
                                text: 'Dark Slayer',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' ????????????????????????Dark Slayer ????????????????????????????????????: Dark Slayer ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ?????????????????????????????????????????? ??? ????????????????????????????????????????????????????????????????????? ??????????????????????????????????????? Dark Slayer ????????????????????? ?????????????????????????????????????????? [Dark Slayer Power I] ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? 90 ??????????????????'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
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
                                text: 'Infinite Slayer',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' ????????????????????????????????????????????????????????????: Infinite Slayer ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ??????????????????????????????????????? ????????????????????????????????????????????????????????????????????? ??????????????????????????????????????? Infinite Slayer ????????????????????? ?????????????????????????????????????????? [Dark Slayer Power II] ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ??????????????????????????? HP ????????? ??? ?????????????????????????????????????????? 90 ?????????????????? ??????????????????????????????????????????????????????????????????????????????????????????????????????????????? [ Infinite Slayer] ???????????????????????????????????????????????????????????????????????????'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/Dark.jpeg',
                        ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
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
                                text: 'God Slayer',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' ????????????????????????????????????????????????????????????: God Slayer ??????????????????????????????????????????????????????????????????????????????????????? 15 ?????????????????????????????? ???????????????????????????????????? ??? ????????????????????????????????????????????????????????????????????? ???????????????????????????????????????God Slayer ????????????????????? ????????????????????????????????? ????????? [Dark Slayer Power III] ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ?????????????????????????????????????????? ????????????????????????????????????????????????????????????????????????????????? 90 ?????????????????? ?????????????????????????????????????????? ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? God Slayer'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/God.jpeg',
                        ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Text(
                        '?????????????????? Monster ??????????????????????????????????????????????????????????????????????????????????????????????????? ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????????????????? 1. Sage Golem 2. Might Golem',
                        style: TextStyle(
                          color: Color(0xFF303030),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
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
                                text: 'Sage Golem',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' ??????????????????(Sage Golem) ?????????????????????????????????????????????????????? Saga Buff ???????????????????????????????????????????????? 20% ????????? ?????????????????????????????? 3% ????????? ?????????????????? ???????????????????????????????????? 70 ?????????????????? ?????????????????????????????????????????????????????? ??? 90 ?????????????????? ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/sage_golem.jpeg',
                        ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
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
                                text: 'Might Golem',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' ??????????????????(Might Golem) ??????????????????????????????????????????????????????????????????????????????????????? Might Buff ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ??????????????????????????????????????????????????????????????????????????? 21-50 ??????????????? ????????? ?????????????????? ??????????????????????????? 70 ?????????????????? ?????????????????????????????????????????????????????????????????????????????? 90 ?????????????????? ??????????????????????????????????????????????????????????????????????????????????????????????????????'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/might_golem.jpeg',
                        ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24, 30, 24, 20),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(),
                child: ButtonWidget(
                  text: '????????????????????????',
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
