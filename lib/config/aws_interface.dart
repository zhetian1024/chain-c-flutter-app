import 'package:flutter/physics.dart';

class AWSSTSAssumeRoleResult {
  ResponseMetadata responseMetadata;
  AWSSTSTempCredentials Credentials;
  AWSSTSAssumeRoleUser AssumedRoleUser;
  AWSSTSAssumeRoleResult({
    this.responseMetadata,
    this.Credentials,
    this.AssumedRoleUser
  });
}

class ResponseMetadata {
  String requestId;
  ResponseMetadata({this.requestId});
}

class AWSSTSTempCredentials {
  String AccessKeyId;
  String SecretAccessKey;
  String SessionToken;
  String Expiration;
  AWSSTSTempCredentials(
      {this.AccessKeyId,
      this.SecretAccessKey,
      this.SessionToken,
      this.Expiration});
}

class AWSSTSAssumeRoleUser {
  String AssumedRoleId;
  String Arn;
  AWSSTSAssumeRoleUser({this.AssumedRoleId, this.Arn});
}
