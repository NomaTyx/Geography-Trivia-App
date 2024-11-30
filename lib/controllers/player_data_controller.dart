import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';

class PlayerDataController extends GetxController with GetSingleTickerProviderStateMixin {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String? deviceID;
  String? playerName;
  String? playerRegion;
  int playerScore = 0;

  Future<void> addUser() async {
    print(playerName);
    // Create a new user with a first and last name
    var user = <String, dynamic>{
      "Name": playerName ?? "no name detected",
      "Region": playerRegion ?? "no region detected",
      "Score": playerScore ?? 0,
      "DeviceID": await findDeviceID() ?? "no id detected",
    };

    firestore.collection("users").doc("$deviceID").set(user);

// Add a new document with a generated ID
//     firestore.collection("users").add(user).then((DocumentReference doc) =>
//         print('DocumentSnapshot added with ID: ${doc.id}'));
  }

  Future<String> findDeviceID() async {
    String deviceName;
    String deviceVersion;
    String? identifier;
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceID = build.id;
        return build.id; //UUID for Android
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceID = data.identifierForVendor.toString();
        return data.identifierForVendor.toString(); //UUID for iOS
      }
    } catch (e) {
      print('Failed to get platform version');
    }
    return "no ID detected";
  }

  Future<bool> deviceExists() async {
    bool exists = false;
    await firestore.collection("users").doc(deviceID).get().then(
          (DocumentSnapshot doc) {
            print("doc exists is ${doc.exists}");
            exists = doc.exists;
      },
      onError: (e) => print("Error getting document: $e"),
    );
    return exists;
  }

  Future<void> updatePlayerScore() async {

  }
}