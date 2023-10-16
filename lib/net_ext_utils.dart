import 'dart:convert';

extension NetStringExt1 on String {
  ///json字符串转map
  Map<String, dynamic> toMap() {
    return jsonDecode(this);
  }

}
