import 'dart:math';

// ignore: non_constant_identifier_names
double Hexadecimal_to_decimal_conversion(String bin) {
  String dec;
  var list;
  var a;
  var b;
  var len;
  var x = 0;
  var r;
  String digit;
  // ignore: non_constant_identifier_names
  double last_bin = 0.0;
  // ignore: non_constant_identifier_names
  double first_bin = 0.0;
  var power = -1;
  

  // ignore: non_constant_identifier_names
  var Replaceing = {
    "A": "10",
    "a": "10",
    "B": "11",
    "b": "11",
    "C": "12",
    "c": "12",
    "D": "13",
    "d": "13",
    "E": "14",
    "e": "14",
    "F": "15",
    "f": "15",
  };
  if (bin.contains(".")) {
    list = bin.split(".");
    print(list);
    a = list[0];
    b = list[1];

    a = int.parse(a, radix: 16).toRadixString(10);
    first_bin = double.parse(a);
    len = b.length;
    

    for (var i = 0; i < len; i++) {
      digit = b[i];
      digit = digit.replaceAll("A", Replaceing["A"]);
      digit = digit.replaceAll("a", Replaceing["a"]);
      digit = digit.replaceAll("B", Replaceing["B"]);
      digit = digit.replaceAll("b", Replaceing["b"]);
      digit = digit.replaceAll("C", Replaceing["C"]);
      digit = digit.replaceAll("c", Replaceing["c"]);
      digit = digit.replaceAll("D", Replaceing["D"]);
      digit = digit.replaceAll("d", Replaceing["d"]);
      digit = digit.replaceAll("E", Replaceing["E"]);
      digit = digit.replaceAll("e", Replaceing["e"]);
      digit = digit.replaceAll("F", Replaceing["F"]);
      digit = digit.replaceAll("f", Replaceing["f"]);
      r = int.parse(digit);
      last_bin = last_bin + r * pow(16, power);
      x = x + 1;
      power = power - 1;
    }

    print(first_bin + last_bin);
    return first_bin + last_bin;
  } else {
    dec = int.parse(bin, radix: 16).toRadixString(10);
    return double.parse(dec);
  }
}
