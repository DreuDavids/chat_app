import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  //color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
  filled: true,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(
        //color: Colors.lightBlueAccent,
        //width: 2.0
        ),
  ),
);

const kidTextFieldDecoration = InputDecoration(
  hintText: 'Enter Value',
  filled: true,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
