import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shadowing_carrot_app/constants.dart';
import 'package:shadowing_carrot_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.4,
                automaticallyImplyLeading: true,
                leading: Icon(Icons.arrow_back),
                flexibleSpace: PageView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Image.network(
                        "https://picsum.photos/id/${index + 1}/200/300",
                        fit: BoxFit.cover);
                  },
                ),
                actions: [
                  Icon(Icons.add_box_rounded),
                  SizedBox(width: 25.0),
                  Icon(Icons.add_a_photo_sharp),
                  SizedBox(width: 25.0),
                ],
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/avatar.png"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15),
                                Text(
                                  "양산",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "양주동",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10.0,
                                left: 75.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image(
                                    image: AssetImage("assets/image.png"),
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10.0,
                                right: 55.0,
                                child: Text(
                                  "36.5˚C",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 15.0,
                                left: 70.0,
                                child: Text(
                                  "매너온도",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 35.0,
                                left: 50.0,
                                child: Icon(
                                  FontAwesomeIcons.fire,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Container(
                        color: Colors.white12,
                        width: double.infinity,
                        height: 2),
                    SizedBox(height: 10),
                    Text(
                      "기라티나 띠부실",
                      style: TextStyle(color: kTextLightColor, fontSize: 28),
                    ),
                    Text(
                      "기타 중고물품, 34분 전",
                      style: TextStyle(color: kDarkColor),
                    ),
                    SizedBox(height: 20),
                    Text(
                        "가격 제안받습니다 이마트 앞에서 직거래 가능합니다. "
                        "참고로 오늘 나온겁니다 거래하실때 환불안됩니다.",
                        style: TextStyle(color: kTextColor, fontSize: 18)),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "거래 희망 장소",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "이마트앞 >",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    AspectRatio(
                      aspectRatio: 5 / 3,
                      child: Image.asset(
                        "assets/emart.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 1.0,
          color: Colors.black, // 바텀 앱바의 배경색을 지정합니다.
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: Icon(Icons.favorite_border_outlined),
                  onPressed: () {
                    // 홈 아이콘을 눌렀을 때 실행할 동작을 추가할 수 있습니다.
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 1,
                  height: 70,
                  color: Colors.white12,
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1원",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "가격 제안하기",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepOrange),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("채팅하기",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.deepOrange,
                    minimumSize: Size(100, 45),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
