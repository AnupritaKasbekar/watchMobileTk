import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mobileSetting extends StatefulWidget {
  @override
  _mobileSettingState createState() => _mobileSettingState();
}

class _mobileSettingState extends State<mobileSetting> {
  bool toggleValue = false;
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(40.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Constant connection',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //  Expanded(
              // child:
              AnimatedContainer(
                duration: Duration(
                  milliseconds: 1000,
                ),
                height: 40.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: toggleValue
                      ? Colors.greenAccent[100]
                      : Colors.redAccent[100].withOpacity(0.5),
                ),
                child: Stack(
                  children: <Widget>[
                    AnimatedPositioned(
                      duration: Duration(
                        milliseconds: 1000,
                      ),
                      curve: Curves.easeIn,
                      top: 3.0,
                      left: toggleValue ? 60.0 : 0.0,
                      right: toggleValue ? 0.0 : 60.0,
                      child: InkWell(
                        onTap: toggleButton,
                        child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 1000),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return RotationTransition(
                                turns: animation,
                                child: child,
                              );
                            },
                            child: toggleValue
                                ? Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 35.0,
                                    key: UniqueKey(),
                                  )
                                : Icon(Icons.remove_circle_outline,
                                    color: Colors.red,
                                    size: 35.0,
                                    key: UniqueKey())),
                      ),
                    )
                  ],
                ),
              ),
              // ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(40.0),
          ),
          Row(
            children: [
              // Expanded(
              // child:
              Text(
                'signal strength',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //  ),
              CupertinoSlider(
                value: sliderValue,
                onChanged: (double val) {
                  print(val);

                  setState(
                    () {
                      sliderValue = val;
                    },
                  );
                },
                min: 0,
                max: 10,
                divisions: 10,
                //  label: "$sliderValue",
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(40.0),
          ),
          Row(
            children: [
              Text(
                ' Alert on Battery ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
