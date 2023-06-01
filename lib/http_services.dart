import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:namdz/model/calendermodel.dart';

import 'global.dart';
import 'model/account.dart';

Future<bool> checkLogin(String user, String password) async {
  var url = Uri.parse("http://192.168.0.106/lich/account/login.php");
  var response = await http.post(url, body: {
    "username": user,
    "password": password,
  });
  var data = json.decode(response.body);
  print(data);
  if (data == "ok") {
    accountInstane = await getAccount(user, password);
    return true;
  } else
    return false;
}

Future<Account> getAccount(String user, String password) async {
  var url = Uri.parse("http://192.168.0.106/lich/account/getAccount.php");
  var response = await http.post(url, body: {
    "username": user,
    "password": password,
  });
  //var data = json.decode(response.body);
  var data = response.body;
  List<Account> temp = AccountFromJson(data);
  return temp[0];
}

Future<bool> checkRegister(
    String user, String password, String repassword) async {
  var url = Uri.parse("http://192.168.0.106/lich/account/register.php");
  var response = await http.post(url, body: {
    "username": user,
    "password": password,
  });
  var data = json.decode(response.body);
  print(data);
  if (data == "DANG KI THANH CONG") {
    return true;
  } else
    return false;
}

Future<void> createLich(Calendermodel calendermodel) async {
  var url = Uri.parse("http://192.168.0.106/lich/account/createLich.php");
  var response = await http.post(url, body: {
    "ID": accountInstane!.id,
    "timesStart": calendermodel.timesStart,
    "timesEnd": calendermodel.timesEnd,
    "subjectName": calendermodel.subjectName,
    "locations": calendermodel.locations,
    "background": calendermodel.background,
    "isAllDay": calendermodel.isAllDay,
  });
  //var data = json.decode(response.body);
}

Future<List<Calendermodel>> loadLich() async {
  var url = Uri.parse("http://192.168.0.106/lich/account/loadLich.php");
  var response = await http.post(url, body: {
    "ID": accountInstane!.id,
  });

  var data = response.body;
  return calenderFromJson(data);
}
