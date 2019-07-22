import 'package:chain_c_app_flutter/pages/news.dart';
import 'package:flutter/cupertino.dart';

import 'common.dart';

/// 认证用户
///
class AuthenticatedUser extends CommonRecordKey {
  String mobilePhone;
  String email;
  String username;
  AuthUserInformation auth;
  String personalInformation;
  CommonRecordKey wallt;
  AuthDeviceInformation loginDevices;
  bool isRealName;
  AuthenticatedUser(
      {@required String hash,
      @required String range,
      @required String index,
      this.mobilePhone,
      this.email,
      this.username,
      this.auth,
      this.personalInformation,
      this.wallt,
      this.loginDevices,
      this.isRealName})
      : super(hash, range, index);
}

class AuthUserInformation {
  int level;
  String roleArn;
  String authUserType;

  AuthUserInformation({this.level, this.roleArn, this.authUserType});
}

class AuthDeviceInformation {
  String uuid;
  int timestamp;
  AuthDeviceInformation({this.uuid, this.timestamp});
}

class AuthRealName {
  String type;
  String licence;
  String realName;
  int timestamp;
  AuthRealName({this.type, this.licence, this.realName, this.timestamp});
}

class AuthLoginWithSMSInput {
  String mobilePhoneNumber;
  String countryCode;
  AuthLoginWithSMSInput({this.mobilePhoneNumber, this.countryCode});
}

class DeviceInformation {
  String cordova;
  bool isVirtual;
  String manufacturer;
  String model;
  String platform;
  String serial;
  String uuid;
  String version;

  DeviceInformation(
      {this.cordova,
      this.isVirtual,
      this.manufacturer,
      this.model,
      this.platform,
      this.serial,
      this.uuid,
      this.version});
}

class AuthLoginWithSMSSendCodeResponse {
  String msg_id;
  String provider;
  AuthLoginWithSMSSendCodeResponse({
    this.msg_id,
    this.provider
  });
}
