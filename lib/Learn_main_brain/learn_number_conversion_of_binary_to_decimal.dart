import 'dart:math';


// ignore: non_constant_identifier_names
String learn_number_conversion_of_binary_to_decimal(String bin) {
  String text = "= ";
  String dec;
  String dublicate;
  var list;
  var a;
  var b;
  var len;

  int radix;
  int i;
  // ignore: non_constant_identifier_names
  int decimal_length;

  // ignore: non_constant_identifier_names
  double first_bin;

  var x = 0;
  var r;
  var power;
  // ignore: non_constant_identifier_names
  double last_bin = 0.0;
  double decInt;

  // ignore: non_constant_identifier_names
  var unicode_map = {
    //  #           superscript     subscript
    0: ['\u2070', '\u2080'],
    1: ['\u00B9', '\u2081'],
    2: ['\u00B2', '\u2082'],
    3: ['\u00B3', '\u2083'],
    4: ['\u2074', '\u2084'],
    5: ['\u2075', '\u2085'],
    6: ['\u2076', '\u2086'],
    7: ['\u2077', '\u2087'],
    8: ['\u2078', '\u2088'],
    9: ['\u2079', '\u2089'],

    10: ['\u00B9\u2070', '\u2081\u2080'],
    11: ['\u00B9\u00B9', '\u2081\u2081'],
    12: ['\u00B9\u00B2', '\u2081\u2082'],
    13: ['\u00B9\u00B3', '\u2081\u2083'],
    14: ['\u00B9\u2074', '\u2081\u2084'],
    15: ['\u00B9\u2075', '\u2081\u2085'],
    16: ['\u00B9\u2076', '\u2081\u2086'],
    17: ['\u00B9\u2077', '\u2081\u2087'],
    18: ['\u00B9\u2078', '\u2081\u2088'],
    19: ['\u00B9\u2079', '\u2081\u2089'],

    -1: ['\u207B\u00B9', '\u208B\u2081'],
    -2: ['\u207B\u00B2', '\u208B\u2082'],
    -3: ['\u207B\u00B3', '\u208B\u2083'],
    -4: ['\u207B\u2074', '\u208B\u2084'],
    -5: ['\u207B\u2075', '\u208B\u2085'],
    -6: ['\u207B\u2076', '\u208B\u2086'],
    -7: ['\u207B\u2077', '\u208B\u2087'],
    -8: ['\u207B\u2078', '\u208B\u2088'],
    -9: ['\u207B\u2079', '\u208B\u2089'],

    -10: ['\u207B\u00B9\u2070', '\u208B\u2081\u2080'],
    -11: ['\u207B\u00B9\u00B9', '\u208B\u2081\u2081'],
    -12: ['\u207B\u00B9\u00B2', '\u208B\u2081\u2082'],
    -13: ['\u207B\u00B9\u00B3', '\u208B\u2081\u2083'],
    -14: ['\u207B\u00B9\u2074', '\u208B\u2081\u2084'],
    -15: ['\u207B\u00B9\u2075', '\u208B\u2081\u2085'],
    -16: ['\u207B\u00B9\u2076', '\u208B\u2081\u2086'],
    -17: ['\u207B\u00B9\u2077', '\u208B\u2081\u2087'],
    -18: ['\u207B\u00B9\u2078', '\u208B\u2081\u2088'],
    -19: ['\u207B\u00B9\u2079', '\u208B\u2081\u2089'],
  };

  String finatText =
      "For the conversion of ($bin)${unicode_map[2][1]} to decimal number system, each coefficient is multiplied by corresponding power of 2 and added to obtain the decimal number.\n\n= $bin\n";
  if (bin.contains(".")) {
    list = bin.split(".");

    a = list[0];
    b = list[1];

    len = a.length;
    radix = len - 1;
    for (i = 0; i < len; i++) {
      text = text + "${a[i]}*2${unicode_map[radix][0]}+ ";

      radix = radix - 1;
    }

    decimal_length = b.length;
    for (var j = 0; j < decimal_length; j++) {
      if (radix != -decimal_length) {
        text = text + "${b[j]}*2${unicode_map[radix][0]}+ ";
      } else {
        text = text + "${b[j]}*2${unicode_map[radix][0]}";
      }
      radix = radix - 1;
    }

    a = int.parse(a, radix: 2).toRadixString(10);
    first_bin = double.parse(a);
    len = b.length;
    power = -len;
    b = int.parse(b);

    while (x < len) {
      r = b % 10;

      last_bin = last_bin + r * pow(2, power);
      x = x + 1;
      power = power + 1;
      b = b ~/ 10;
    }
    decInt = first_bin + last_bin;
    dec = decInt.toString();
    dublicate = dec;
    dec = "= " + dec;

    finatText = finatText +
        text +
        "\n" +
        dec +
        "\n\nThe complete result is: \n\n" +
        "($bin)${unicode_map[2][1]} = ($dublicate)${unicode_map[10][1]}";
    // list = [finatText, dublicate];
    return finatText;
  } else {
    len = bin.length;
    radix = len - 1;
    for (i = 0; i < len; i++) {
      if (radix != 0) {
        text = text + "${bin[i]}*2${unicode_map[radix][0]} + ";
      } else {
        text = text + "${bin[i]}*2${unicode_map[radix][0]}";
      }
      radix = radix - 1;
    }
    dec = int.parse(bin, radix: 2).toRadixString(10);
    dublicate = dec;

    dec = "= " + dec;

    finatText = finatText +
        text +
        "\n" +
        dec +
        "\n\nThe complete result is: \n\n" +
        "($bin)${unicode_map[2][1]} = ($dublicate)${unicode_map[10][1]}";
    // list = [finatText, dublicate];
    return finatText;
  }
}
