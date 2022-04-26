import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rov_rec/knowledge/menu.dart';
import 'package:rov_rec/widgets/mywidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GeneralKnowLedgeWidget extends StatefulWidget {
  const GeneralKnowLedgeWidget({Key? key}) : super(key: key);

  @override
  _GeneralKnowLedgeWidgetState createState() => _GeneralKnowLedgeWidgetState();
}

class _GeneralKnowLedgeWidgetState extends State<GeneralKnowLedgeWidget> {
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
                        'คำศัทพ์ทั่วไปในเกม ROV',
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
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Items',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = อุปกรณ์ส่วมใส่ เพื่อเพิ่มค่าสถานณะที่สามารถซื้อได้ในร้านค้า'),
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
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/items.jpeg',
                        ))),
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
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Lane',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = เลน (Lane) คือ เส้นทางเดินในแผนที่ (Map) มีให้เลือก 3 ทาง คือ เลนบน (Top) เลนกลาง (Middle) เลนล่าง (Bottom) มีอธิบายเพิ่มเติมในหัวข้อ แผนที่'),
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
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/Map_of_MOBA.png',
                        ))),
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
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Rank',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = การจัดอันดับ8ความสามารถของผู้เล่น มีทั้งหมด 8 อันดับด้วยกัน เรียงการสูงไปต่ำดังนี้ Glorious Ruler, Conquerer, Commander, Diamond, Platinum, Gold, Sliver และ Brozen'),
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
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/rank.jpeg',
                        ))),
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
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Rune',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = Rune หรือ รูน คือสิ่งที่จะช่วยเพิ่มค่าสถานณะของฮีโร่ ซึ่งจะมีพลัง ทั้งหมด 3 สี คือ แดง ม่วง เขียว'),
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
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Center(
                            child: Image.asset(
                          'assets/images/knowledge/rune.jpeg',
                        ))),
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
                      child: Text.rich(
                        TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Farming',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = Farming หรือการฟาร์ม เป็นการเก็บเกี่ยวทรัพยากร หรือเงินในเกม เพื่อใช้ในการซื้อไอเทมในร้านค้า โดยเงินในเกมจะหาได้จากการฆ่ามอนสเตอร์ หรือ ฮีโร่'),
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
                children: [
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
                                text: 'Monster',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = มอนสเตอร์ คือ NPC สัตว์ประหลาด ที่มีอยู่ในเกมสามารถให้ฮีโร่ฆ่าเพื่อการฟาร์มได้'),
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
                children: [
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
                                text: 'Jungle',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = ป่า (Jungle) คือ พื้นที่ที่พ้นออกไปจากฐาน (Base) จะมีมอนสเตอร์ชนิดพิเศษ ที่ฆ่าแล้วสามารถได้รับบัพ หรือสถานะพิเศษได้'),
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
                children: [
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
                                text: 'Base',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = ฐาน (Base) คือ พื้นที่ที่แต่ละทีมเป็นเจ้าของในมุมของตนเอง มุมที่อยู่ตรงข้ามจะเป็นฐานของศัตรู'),
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
                children: [
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
                                text: 'All',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = ออล หรือ รวมกลุ่ม คือ การมารวมกันเพื่อเตรียมตัวต่อสู้กันเป็นทีม'),
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
                children: [
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
                                text: 'Damage',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = ความเสียหายที่ได้รับ หรือพลังโจมตีของเรา (การโจมตีปกติ หรือสกิล) ใช้ได้หลากหลายบริบท เช่น ตัวละครนี้ทำดาเมจได้เยอะมาก แปลว่า ตัวละครนี้สร้างความเสียหายให้กับคนอื่นได้มาก หรือเราโดนดาเมจเยอะ แปลว่า ตัวละครของเราได้รับความเสียหายมาก'),
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
                children: [
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
                                text: 'CC (Crowd Control)',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = แปลว่าความสามารถในการทำให้ศัตรูผิดปกตินั่นเอง เช่น การทำให้หยุดนิ่ง, การทำให้เคลื่อนที่ช้าลง, การทำให้ศัตรูร่ายสกิลไม่ได้ และอื่น ๆ'),
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
                children: [
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
                                text: 'Buff',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = บัฟ สิ่งที่ช่วยเพิ่มค่าสถานะนั้น ๆ เช่น บัฟความเร็วในการโจมตีคือสกิลหรือความสามารถที่ช่วยเพิ่มความเร็วในการโจมตี หรืออีกบริบทหนึ่งที่ใช้กันคือ เอาไว้เรียกตัวละครที่ได้รับการอัปเดตมาให้แข็งแกร่งขึ้น เช่น ในแพตช์นี้ live22 ถูกบัฟ แปลว่า ในแพตช์นี้ Valhein ถูกปรับให้แข็งแกร่งขึ้น'),
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
                children: [
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
                                text: 'Nerf',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ' = เนิฟ การปรับให้ตัวละครนั้นอ่อนแอลง เช่น ในแพตช์นี้ Valhein ถูกเนิฟ แปลว่า ในแพตช์นี้ Valhein อ่อนแอลง'),
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
