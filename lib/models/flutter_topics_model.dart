import 'package:cultour/models/layout_questions_model.dart';
import 'package:cultour/models/naviagation_questions_model.dart';
import 'package:cultour/models/widget_questions_model.dart';
import 'package:cultour/models/state_questions_model.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
 final int id;
 final String topicName;
 final Image topicIcon;
 final Color topicColor;
 final List<dynamic> topicQuestions;

 FlutterTopics({
   required this.id,
   required this.topicColor,
   required this.topicIcon,
   required this.topicName,
   required this.topicQuestions,
 });
}

final List<FlutterTopics> flutterTopicsList = [
 FlutterTopics(
   id: 0,
   topicColor: cardColor,
   topicIcon: Image.asset('assets/lawangsewu.png'),
   topicName: "Lawang Sewu Semarang",
   topicQuestions: widgetQuestionsList,
 ),
 FlutterTopics(
   id: 1,
   topicColor: cardColor,
   topicIcon: Image.asset('assets/sampokong.png'),
   topicName: "Klenteng Sam Po Kong",
   topicQuestions: stateQuestionsList,
 ),
 FlutterTopics(
   id: 2,
   topicColor: cardColor,
   topicIcon: Image.asset('assets/kotalama.png'),
   topicName: "Kota Lama Semarang",
   topicQuestions: navigateQuestionsList,
 ),
 FlutterTopics(
   id: 3,
   topicColor: cardColor,
   topicIcon: Image.asset('assets/keraton.png'),
   topicName: "Kasunanan Surakarta",
   topicQuestions: layOutQuestionsList,
 ),
];
