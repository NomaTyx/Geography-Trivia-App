import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';
import 'package:get_storage/get_storage.dart';

class PlayerDataController extends GetxController with GetSingleTickerProviderStateMixin {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String? deviceID;
  String? playerName;
  String? playerRegion;
  RxInt playerScoreTotal = 0.obs;

  @override
  void onInit() {
    if(GetStorage().hasData("totalScore")) {
      playerScoreTotal = GetStorage().read("totalScore");
      print("player score is ${playerScoreTotal.value}");
    }

    ever(playerScoreTotal, (_) {
      GetStorage().write('totalScore', playerScoreTotal.value);
    });

    super.onInit();
  }

  Future<void> addUser() async {
    print(playerName);
    // Create a new user with a first and last name
    var user = <String, dynamic>{
      "Name": playerName ?? "no name detected",
      "Region": playerRegion ?? "no region detected",
      "Score": playerScoreTotal.value,
      "DeviceID": await findDeviceID(),
    };

    firestore.collection("users").doc("$deviceID").set(user);
  }

  Future<String> findDeviceID() async {
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
    var doc = await firestore.collection("users").doc(deviceID).get();
    exists = doc.exists;
    if (exists) {
      Map<String, dynamic> data = doc.data()!;

      playerName = data["Name"];
      playerScoreTotal.value = data["Score"];
      playerRegion = data["Region"];
    }
    return exists;
  }

  void setPlayerName(String name) {
    playerName = name;
    print("the player's name is $playerName");
  }

  void setPlayerRegion(String region) {
     playerRegion = region;
     print("the player's region is $playerRegion");
  }

  Future<void> addToPlayerScore(int score) async {
    playerScoreTotal += score;
    print("score total is $playerScoreTotal");
    final data = {"Score": playerScoreTotal.value};
    firestore.collection("users").doc(deviceID).set(data, SetOptions(merge: true));
  }

  void resetScore() {
    playerScoreTotal = 0.obs;
    GetStorage().write('totalScore', 0);
    final data = {"Score": 0};
    firestore.collection("users").doc(deviceID).set(data, SetOptions(merge: true));
    print("score resetted");
  }
}

class Player {
  String? deviceID;
  String? playerName;
  String? playerRegion;
  RxInt playerScoreTotal = 0.obs;
}