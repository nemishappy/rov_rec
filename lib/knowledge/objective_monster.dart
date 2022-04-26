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
                                    ' คือ มอนสเตอร์ ขนาดใหญ่ อาศัยอยู่ช่วงแบ่งตรงกลางแมพระหว่างสองทีม เป็นมอนสเตอร์ที่เมื่อทีมใดทีมหนึ่งฆ่าได้ จะได้รับทั้งบัพพิเศษ เงิน และค่าประสบการณ์จำนวนมาก ให้กับทั้งทีม จึงทำให้ทำทั้งสองทีมต้องแย่งชิงการฆ่า Object เพื่อชิงความได้เปรียบให้กับทีมซึ่ง Objective หลักจะมีเกิดอยู่สองฝั่งแม่น้ำด้วยกัน 1. ฝั่งเลน Abyssal Dragon 2. ฝั่งเลน Dark Slayer'),
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
                                    ' เอฟเฟกต์การสังหารมังกรปีศาจ: หลังจากเอาชนะAbyssal Dragonแล้ว ทีมจะได้รับ บัฟ [Lighting Thunder] การโจมตีและทักษะปกติจะสร้างความเสียหายเพิ่มเติม 30% ให้กับมินเนี่ยน และมอนสเตอร์ป่าเป็นเวลา 90 วินาที'),
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
                                    ' เอฟเฟกต์การสังหารมังกร Holy Dragon: หลังจากเอาชนะ Holy Dragon แล้ว คุณจะได้รับ บัฟ [Light Thunder] ของทีม นอกจากการโจมตีและทักษะทั่วไปที่จะสร้างความเสียหายเพิ่มเติม 30% ให้กับมินเนี่ยนและมอนสเตอร์ป่า ยังสร้างความเสียหายเพิ่มเติมเมื่อโจมตียูนิตฮีโร่ สร้างความเสียหายเวท 3% ของพลังชีวิตสูงสุดของเป้าหมาย (1% สำหรับการโจมตีกายภาพเพิ่มเติมทุกๆ 200 ครั้ง หรือการโจมตีด้วยเวทย์มนตร์ 400 ครั้ง) เป็นเวลา 90 วินาที (คูลดาวน์ 3 วินาที)'),
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
                                    ' เอฟเฟกต์Dark Slayer และการสังหาร: Dark Slayer จะปรากฏในสมรภูมิในตำนานในเวลาสองนาทีของเกม และจะรีเฟรชทุก ๆ สามนาทีหลังจากการสังหาร หลังจากเอาชนะ Dark Slayer ได้แล้ว ทีมจะได้รับบัฟ [Dark Slayer Power I] การโจมตีบนป้อมปราการจะสร้างความเสียหายเพิ่มเติมเป็นเวลา 90 วินาที'),
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
                                    ' และเอฟเฟกต์การสังหาร: Infinite Slayer จะปรากฏในสมรภูมิในตำนานในเวลาแปดนาทีของเกม และรีเฟรชทุกๆ สามนาทีหลังจากการสังหาร หลังจากเอาชนะ Infinite Slayer ได้แล้ว ทีมจะได้รับบัฟ [Dark Slayer Power II] ซึ่งจะเพิ่มพลังป้องกันทางกายภาพและเวทมนตร์ และฟื้นฟู HP ทุก ๆ วินาทีเป็นเวลา 90 วินาที ในเวลาเดียวกันผู้ที่สังหารสามารถเรียก [ Infinite Slayer] เพื่อโจมตีป้อมของศัตรูได้'),
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
                                    ' และเอฟเฟกต์การสังหาร: God Slayer จะปรากฏในสมรภูมิในตำนานในเวลา 15 นาทีของเกม และรีเฟรชทุก ๆ สี่นาทีหลังจากการสังหาร หลังจากเอาชนะGod Slayer ได้แล้ว คุณจะได้รับ บัฟ [Dark Slayer Power III] ซึ่งสามารถเพิ่มการป้องกันทางกายภาพและเวทมนตร์ในปริมาณที่สูงขึ้น และฟื้นฟูจำนวน ที่สูงขึ้นต่อวินาทีเป็นเวลา 90 วินาที ในเวลาเดียวกัน ครีปในเลนกลางเวฟถัดไปจะถูกแทนที่โดยด้วย God Slayer'),
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
                        'ในฝั่ง Monster ในป่าก็จะมีความสำคัญที่ลดน้อยลงไป แต่ก็ยังมอบความาสามารถให้กับฮีโร่ของผู้ที่สามารถสังหารมอนสเตอร์ป่าได้ ซึ่งป่าในแต่ละทีมก็มีบัพที่สำคัญ จากสองมอนสเตอร์ด้วยกัน 1. Sage Golem 2. Might Golem',
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
                                    ' บัฟฟ้า(Sage Golem) เมื่อเราฆ่าได้จะมี Saga Buff ลดคูลดานว์สกิลลง 20% และ ฟื้นฟูมานา 3% ต่อ วินาที ติดตัวให้เรา 70 วินาที และจะเกิดมาใหม่ทุก ๆ 90 วินาที เราสามารถมาฆ่าและเก็บบัฟฟ้าได้อีกเมื่อมันเกิดมาใหม่ บัฟฟ้านี้ถ้าเรามีติดตัวอยู่แล้วเกิดโดนฆ่า บัฟจะตกเป็นของฮีโร่ที่ฆ่าเราทันที'),
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
                                    ' บัฟแดง(Might Golem) เมื่อเราฆ่าตัวนนี้เราจะได้บัฟ Might Buff ได้สามารถโจมตีปกติจะลดความเร็วการเคลื่อนที่เป้าหมาย เผาไหม่เป้าหมายระยะประชิด 21-50 หน่วย ต่อ วินาที ติดตัวเรา 70 วินาที และจะเกิดใหม่หลังถูกฆ่าทุก 90 วินาที และสามารถโดนแย่งได้เหมือนกับบัฟฟ้า'),
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
