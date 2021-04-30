import 'package:aba/common/appcolor.dart';
import 'package:aba/data/model/notification_announcement_model.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AnnouncementItem extends StatelessWidget {
  final AnnouncementModel annoucementModel;

  const AnnouncementItem({Key key, this.annoucementModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var image = annoucementModel.backgroundImage;

    buildCollapsed2() {
      return Stack(
        children: [
          Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: Text(
                    annoucementModel.demodescription,
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Image.network(
              image,
              fit: BoxFit.fill,
            ),
            height: 150,
            width: double.infinity,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0),
                  Colors.black,
                ],
                stops: [
                  0,
                  1,
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    annoucementModel.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.alltext,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    annoucementModel.dateTime,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    buildExpanded2() {
      return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Image.network(
              image,
              fit: BoxFit.fill,
            ),
            height: 200,
            width: double.infinity,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0),
                  Colors.black,
                ],
                stops: [
                  0,
                  1,
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    annoucementModel.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.alltext,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    annoucementModel.dateTime,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 30),
                  child: Text(
                    annoucementModel.description,
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expandable(
                  collapsed: Container(height: 200, child: buildCollapsed2()),
                  expanded: buildExpanded2(),
                ),
                Divider(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Builder(
                        builder: (context) {
                          var controller = ExpandableController.of(context);
                          return FlatButton(
                            child: Text(
                              annoucementModel.detail,
                              style: TextStyle(color: Colors.cyan[600]),
                            ),
                            onPressed: () {
                              controller.toggle();
                            },
                          );
                        },
                      ),
                      Builder(
                        builder: (context) {
                          var controller = ExpandableController.of(context);
                          return IconButton(
                            icon: controller.expanded
                                ? Icon(Icons.keyboard_arrow_up)
                                : Icon(Icons.keyboard_arrow_down),
                            onPressed: () {
                              controller.toggle();
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
