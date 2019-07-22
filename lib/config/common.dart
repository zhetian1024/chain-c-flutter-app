import 'package:flutter/foundation.dart';

/// 通用的记录模型。
///
/// 
class CommonRecordKey {
  String hash;
  String range;
  String index;
  int timestamp;

  CommonRecordKey(this.hash, this.range, this.index, {this.timestamp});
}
