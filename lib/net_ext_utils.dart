import 'dart:convert';

extension StringExt on String {
  ///json字符串转map
  Map<String, dynamic> toMap() {
    return jsonDecode(this);
  }

  ///判断字符串是否是数字
  bool isNumeric() {
    if (this == null) {
      return false;
    }
    return double.tryParse(this) != null;
  }

  Pattern toReg() {
    return RegExp(this);
  }

  ///判断是否为null或空值
  bool isNullOrEmpty() {
    if (this == null || this.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool trimIsNullOrEmpty() {
    if (this == null || this.isEmpty) {
      return true;
    } else {
      if (this.trim().isEmpty) {
        return true;
      } else {
        return false;
      }
    }
  }

  double? toDouble() {
    return double.tryParse(this);
  }

  int? toInt() {
    return int.tryParse(this);
  }

  DateTime? toDate() {
    return DateTime.tryParse(this);
  }
}
