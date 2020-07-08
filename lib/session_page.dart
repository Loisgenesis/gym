import 'package:flutter/material.dart';
import 'package:interview_test/my_colors.dart';

class SessionWidget extends StatefulWidget {
  @override
  _SessionWidgetState createState() => _SessionWidgetState();
}

class _SessionWidgetState extends State<SessionWidget> {
  var textStyle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  var secStyle = TextStyle(color: Colors.white, fontSize: 14);
  var thirdStyle = TextStyle(color: Colors.grey, fontSize: 12);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          height: 230,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/gym.jpeg",
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Catherine Williams",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Back and Abs",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Advanced",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, -30.0),
          child: Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: MyColors.colorPrimaryLight,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "4 Feb",
                        style: textStyle,
                      ),
                      Text(
                        "h 14:00",
                        style: textStyle,
                      ),
                      Text(
                        "1 hr",
                        style: textStyle,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Date",
                        style: secStyle,
                      ),
                      Text(
                        "Schedule",
                        style: secStyle,
                      ),
                      Text(
                        "Time",
                        style: secStyle,
                      )
                    ],
                  ),
                ],
              )),
        ),
        Transform.translate(
          offset: Offset(0.0, -45.0),
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: MyColors.colorPrimary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Exercises",
                      style: textStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 2,
                    child: ListView.separated(
                      separatorBuilder:
                          (context, index) => Divider(
                        color: MyColors.accentColor,
                      ),
                      // Let the ListView know how many items it needs to build.
                      itemCount: 10,
                      // Provide a builder function. This is where the magic happens.
                      // Convert each item into a widget based on the type of item it is.
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Pull-up",
                                    style: textStyle,
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Set 5",
                                        style: thirdStyle,
                                      ),
                                      SizedBox(width: 20,),
                                      Text(
                                        "Reps 10",
                                        style: thirdStyle,
                                      ),
                                      SizedBox(width: 20,),
                                      Text(
                                        "Rest 60sec",
                                        style: thirdStyle,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.check_circle_outline,
                                color: MyColors.accentColor,
                                size: 30,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
