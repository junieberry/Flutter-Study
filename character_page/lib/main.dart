import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'junyoung page',
      debugShowCheckedModeBanner: false, //debug 그거 지우기
      home:Mypage(),
    );
  }
}

class Mypage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.indigo,
        appBar: AppBar(
            title:Text('Junyoung'), //appbar에 text 넣기
            centerTitle: true, //appbar에서 title 수정하기
            backgroundColor: Colors.indigoAccent, //appbar 색상 수정하기
            elevation:20.0, //appbar가 떠있는 효과를 준다
            leading: IconButton( //눌러야되니까 IconButton으로!
              icon:Icon(Icons.menu), //그 햄버거 모양
              onPressed: (){ //클릭 이벤트 발생
                print('menu button clicked');
              },//void function임
            ), // leading = 간단한 위젯 등을 앱바 왼쪽에 위치시킴 (다른 곳에도 쓰임)
          actions:<Widget>[ //actions = 복수의 아이콘 등을 오른쪽에 배치할 때
            IconButton( //눌러야되니까 IconButton으로!
              icon:Icon(Icons.shopping_cart), //쇼핑 카트
              onPressed: (){
                print('shopping cart button clicked');
              },//void function임
            ),
            IconButton( //눌러야되니까 IconButton으로!
              icon:Icon(Icons.search), //돋보기
              onPressed: (){
                print('search button clicked');
              },//void function임
            ),

          ]
        ),

        body:Padding(
          padding :EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //저번에 main AxisAlignment 쓴거랑 다르게 가로축 정렬을 해줌
            // start는 왼쪽 정렬!
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('resource/cat.gif'),
                  radius: 60.0,//크기 조정
                  backgroundColor: Colors.white, //투명한 이미지면 뒤에 설정 ㄱㄴ
                ),
              ), //아주 멋진 위젯
              Divider( //구분선
                height: 60.0, //이거는 위와 아래를 30씩만큼 나눈다는것 (위에 30, 아래에 30)
                color: Colors.grey[850], //색
                thickness: 0.5, //굵기
                endIndent: 0.0, //끝에서부터 얼마나 떨어져있는지 (패딩이 30이니까 똑같이 30해주면 된다)
              ),
              Text('NAME',
              style: TextStyle( //text의 style을 지정할 수 있는 위젯이다. ctrl을 누르고 클릭하면 다양한 속성을 볼 수 있다.
                color:Colors.white, //글자 색깔 바꿔줌
                letterSpacing: 2.0, //철자 간 간격 조정해줌
              ),),
              SizedBox(
                height:20.0, //위 아래 간격 사이를 10만큼 넓혀준다
              ),
              Text('Junyoung',
              style: TextStyle(
                color:Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0, //글자 굵기 (단위가 뭐지?)
                fontWeight: FontWeight.bold, //글자 굵기 조절해줌
              ),),
              SizedBox(
                height:30.0, //위 아래 간격 사이를 10만큼 넓혀준다
              ),
              Text('LEVEL',
                style: TextStyle( //text의 style을 지정할 수 있는 위젯이다. ctrl을 누르고 클릭하면 다양한 속성을 볼 수 있다.
                  color:Colors.white, //글자 색깔 바꿔줌
                  letterSpacing: 2.0, //철자 간 간격 조정해줌
                ),),
              SizedBox(
                height:10.0, //위 아래 간격 사이를 10만큼 넓혀준다
              ),
              Text('22',
                style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0, //글자 굵기 (단위가 뭐지?)
                  fontWeight: FontWeight.bold, //글자 굵기 조절해줌
                ),
              ),
              SizedBox(
                height:40.0, //위 아래 간격 사이를 10만큼 넓혀준다
              ),
              Row(
                children:<Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width:10,
                  ),
                  Text('Computer Education',
                  style:TextStyle(
                    color:Colors.white,
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),)
                ]
              ),
              Row(
                  children:<Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width:10,
                    ),
                    Text('College of Education',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                      ),)
                  ]
              ),
              Row(
                  children:<Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width:10,
                    ),
                    Text('Sungkyungwan University',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                      ),)
                  ]
              ),
            ],
          ),
        ),
    );
  }
}