import 'dart:math';

// ignore: non_constant_identifier_names
double Binary_to_decimal_conversion(String bin) {
  String dec;
  var list;
  var a;
  var b;
  var len;
  var x = 0;
  var r;
  // ignore: non_constant_identifier_names
  double last_bin = 0.0;
  // ignore: non_constant_identifier_names
  double first_bin = 0.0;
  var power = -1;
  
  if (bin.contains(".")) {
    list = bin.split(".");
    print(list);
    a = list[0];
    b = list[1];

    a = int.parse(a, radix: 2).toRadixString(10);
    first_bin = double.parse(a);
    len = b.length;
    power = -len;
    b = int.parse(b);
    print(len);
    while (x < len) {
      r = b % 10;
      print(r);
      last_bin = last_bin + r * pow(2, power);
      x = x + 1;
      power = power + 1;
      b = b ~/ 10;
    }
    return first_bin + last_bin;
  } else {
    dec = int.parse(bin, radix: 2).toRadixString(10);
    return double.parse(dec);
  }
}
