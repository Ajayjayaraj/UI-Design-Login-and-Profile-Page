import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SFUIDisplay',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(35, 30, 35, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://krausefx.com/assets/posts/profilePictures/FelixKrause2016.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                          ),
                          mywid("Manuel B Garcia", "Professional Teacher", 23)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mywid1("35g", "Protein"),
                            mywid1("25g", "Carbs"),
                            mywid1("19g", "Fat"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mywid("Daily Calories", "1800-2000 Kal", 20),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.cyan,
                              child: Text(
                                "Edit",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: mywid("Macronutrient Distribution",
                            "Protien (20%) Carbs (35%)", 20),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: mywid("My Collection", "Total 40 recipes", 20),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Favorite Meal",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "40 meals saved",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[600]),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                mywid2(
                                    "https://img.etimg.com/thumb/msid-75193002,width-650,imgsize-521928,,resizemode-4,quality-100/food-4-hotel-others.jpg"),
                                SizedBox(width: 10),
                                // mywid2(
                                //     "https://b.zmtcdn.com/data/reviews_photos/b7f/b9c8ea9ab7d060ba2ddedf6c9b739b7f_1525467014.jpg"),
                                // SizedBox(width: 10),
                                mywid2(
                                    "https://static.toiimg.com/thumb/msid-77028654,width-1200,height-900,resizemode-4/.jpg"),
                                SizedBox(width: 10),
                                mywid2(
                                    "https://img.etimg.com/thumb/msid-75193002,width-650,imgsize-521928,,resizemode-4,quality-100/food-4-hotel-others.jpg"),
                                SizedBox(width: 10),
                                MaterialButton(
                                  height: 30,
                                  minWidth: 15,
                                  color: Colors.cyan,
                                  onPressed: () {},
                                  child: Text(
                                    "40",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  mywid(String gram, String thing, double size) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            gram,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            thing,
            style: TextStyle(fontSize: 15, color: Colors.grey[600]),
          ),
        ],
      );
  mywid1(String gram, String thing) => Column(
        children: [
          Text(
            gram,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            thing,
            style: TextStyle(fontSize: 15, color: Colors.grey[500]),
          ),
        ],
      );
  mywid2(String s) => Image(
        fit: BoxFit.cover,
        height: 30,
        image: NetworkImage(s),
      );
}
