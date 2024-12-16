import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';


//this class is currently not being used in the app. it's only still here because i spent like five hours on it, and theoretically i might want to add accounts in the future.
class AuthServices extends GetxController with GetSingleTickerProviderStateMixin {
  FirebaseAuth auth = FirebaseAuth.instance;
  String? deviceID;
  String? playerName;

  Future<void> signUp(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      print("trying to sign user up");
    } catch (e) {
      print("failed to sign user in");
    }
  }

  Future<void> logIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      print("trying to log in");
    } catch (e) {
      print("failed to log user in");
    }
  }

  Future<void> updateDisplayName(String desiredName) async {
    try {
      await auth.currentUser?.updateDisplayName(desiredName);
    } catch (e) {
      print("Error: updatedisplayname failed");
    }
  }

  Future<String?> getCurrentUID() async {
    if(auth.currentUser != null) {
        return auth.currentUser!.uid;
    }
    return '0';
  }

  bool isLoggedIn() {
    if(auth.currentUser != null)
      return true;

    return false;
  }

  Future<void> logOut() async {
    if(auth.currentUser != null) {
      auth.signOut();
    }
  }

  Future<void> findDeviceID() async {
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceID = build.id; //UUID for Android
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceID = data.identifierForVendor; //UUID for iOS
      }
    } catch (e) {
      print('Failed to get platform version');
    }
  }
}