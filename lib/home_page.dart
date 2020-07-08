import 'package:flutter/material.dart';
import 'package:interview_test/my_colors.dart';
import 'package:interview_test/my_strings.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  var textStyle = TextStyle(color: Colors.white, fontSize: 20);
  List<TrainingSessions> trainingSessions;

  @override
  void initState() {
    getDummyList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.colorPrimary,
      appBar: AppBar(
        elevation: 0,
        title: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              MyStrings.welcome,
              style: textStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Today",
                      style: textStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "14:00",
                      style: textStyle,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 50,
                  child: VerticalDivider(
                    color: MyColors.accentColor,
                    thickness: 0.5,
                    width: 1,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      MyStrings.training,
                      style: textStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Satya Clarke",
                      style: textStyle,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: size.width / 2,
              child: Text(
                "Your training sessions",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: _getTrainingWidgets(),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: size.width / 2,
              child: Text(
                "Latest clients",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: _getClientWidgets(),
            ),
          ],
        ),
      )),
    );
  }

  Widget _getTrainingWidgets() {
    return new ListView(
      padding: EdgeInsets.all(0),
      scrollDirection: Axis.horizontal,
      children: trainingSessions.map((session) {
        return _getTrainingSessionData(session);
      }).toList(),
    );
  }

  Widget _getClientWidgets() {
    return new ListView(
      padding: EdgeInsets.all(0),
      scrollDirection: Axis.horizontal,
      children: trainingSessions.map((clients) {
        return _getClientsData(clients);
      }).toList(),
    );
  }

  Widget _getTrainingSessionData(TrainingSessions sessions) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.8,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(
              sessions.image,
            ),
            fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(2, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(5)),
            child: Text(
              sessions.title,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  sessions.subTitle,
                  style: textStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  sessions.noOfPeople,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _getClientsData(TrainingSessions sessions) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width / 3,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(
                  sessions.image,
                ),
                fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(2, 5), // changes position of shadow
            ),
          ],),
        child: Center(
          child: Text(
            sessions.name,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ));
  }

  getDummyList() {
    trainingSessions = [
      TrainingSessions("assets/images/gym.jpeg", "Advanced", "Back and Abs",
          "13 people this week",
          name: "Catherine Williams"),
      TrainingSessions(
          "assets/images/gym1.jpg", "Beginner", "Biceps", "17 people this week",
          name: "Mark Foster"),
      TrainingSessions("assets/images/gym2.jpg", "Intermediate", "Sit Ups",
          "11 people this week",
          name: "Serena Angel"),
    ];
  }
}

class TrainingSessions {
  String image;
  String title;
  String subTitle;
  String noOfPeople;
  String name;

  TrainingSessions(this.image, this.title, this.subTitle, this.noOfPeople,
      {this.name});
}
