import 'package:flutter/material.dart';
import 'package:chain_c_app_flutter/config/auth_interface.dart';
import 'package:chain_c_app_flutter/config/aws_interface.dart';

class Auth with ChangeNotifier {
  AuthState initialAuthState = AuthState(
      currentUser: null,
      authRedircetUrl: null,
      smsInput: null,
      smsResponse: null,
      isSending: false,
      isAuthing: false,
      smsSentCount: 0,
      awsCreds: null,
      isAwsCredRefreshing: false,
      idtoken: null);
  getIdtoken() {}
}

class AuthState {
  AuthenticatedUser currentUser;
  String authRedircetUrl;
  AuthLoginWithSMSInput smsInput;
  AuthLoginWithSMSSendCodeResponse smsResponse;
  int smsSentCount;
  bool isSending;
  bool isAuthing;
  AWSSTSAssumeRoleResult awsCreds;
  bool isAwsCredRefreshing;
  IdToken idtoken;

  AuthState(
      {this.currentUser,
      this.authRedircetUrl,
      this.smsInput,
      this.smsResponse,
      this.smsSentCount,
      this.isSending,
      this.isAuthing,
      this.awsCreds,
      this.isAwsCredRefreshing,
      this.idtoken});
}
