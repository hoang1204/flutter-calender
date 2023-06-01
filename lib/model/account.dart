// To parse this JSON data, do
//
//     final account = accountFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'account.freezed.dart';
part 'account.g.dart';

List<Account> AccountFromJson(String str) =>
    List<Account>.from(json.decode(str).map((x) => Account.fromJson(x)));
Account accountFromJson(String str) => Account.fromJson(json.decode(str));

String accountToJson(Account data) => json.encode(data.toJson());

@freezed
class Account with _$Account {
  const factory Account({
    String? id,
    String? account,
    String? password,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
