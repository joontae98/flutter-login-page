import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // Snackbar 출력을 위해 Globalkey 발급

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,//scaffold에 Globalkey 주입
        body: Stack(
          children: <Widget>[
            Container(
              color: Color(0xff000031),
            ), //color Hex ARGB
            Column(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.deepPurpleAccent,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color(0xff02F6D3),
                ),
              ],
            ),
            GestureDetector(
              child: Container(color: Color(0x000000)),//Screen 전체를 tap 했을경우 PageRoute를 위해 Stack 제일 위에 GestureDetector로 감싼 Container를 투명하게 생성
              onTap: () {
                scaffoldKey.currentState.showSnackBar(SnackBar(
                  content: Text("GestureDetector onTap test"),
                ));//scaffoldKey.currentState를 이용하여 Snackbar 출력
              },
            ),
          ],
        ),
      ),
    );
  }
}
