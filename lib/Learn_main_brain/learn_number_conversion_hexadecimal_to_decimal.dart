import 'dart:math';

// ignore: non_constant_identifier_names
String learn_number_conversion_of_hexadecimal_to_decimal(String bin) {
  
  String dublicate;

  String dec;
  var list;
  var a;
  var b;
  var len;

  int radix;
  int i;
  String text = "= ";
  // ignore: non_constant_identifier_names
  int decimal_length;

  // ignore: non_constant_identifier_names
  double first_dec;
  String digit;

    


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
  var x = 0;
  var r;
  var power=-1;
  // ignore: non_constant_identifier_names
  double last_dec = 0.0;
  double decInt;
  // ignore: non_constant_identifier_names
  String DecString;

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
      "For the conversion of ($bin)${unicode_map[16][1]} to decimal number system, each coefficient is multiplied by corresponding power of 16 and added to obtain the decimal number.\n\n= $bin\n";

  if (bin.contains(".")) {
    list = bin.split(".");

    a = list[0];
    b = list[1];

    len = a.length;

    DecString = int.parse(a, radix: 16).toRadixString(10);
    first_dec = double.parse(DecString);

    radix = len - 1;
    for (i = 0; i < len; i++) {
      
      if (a[i] == "A" || a[i] == "a") {
        digit = "10";
      } else if (a[i] == "B" || a[i] == "b") {
        digit = "11";
      } else if (a[i] == "C" || a[i] == "c") {
        digit = "12";
      } else if (a[i] == "D" || a[i] == "d") {
        digit = "13";
      } else if (a[i] == "E" || a[i] == "e") {
        digit = "14";
      } else if (a[i] == "F" || a[i] == "f") {
        digit = "15";
      } else {
        digit = a[i];
      }

        // ignore: unnecessary_brace_in_string_interps
        text = text + "${digit}*16${unicode_map[radix][0]} + ";
      
      radix = radix - 1;
    }

  

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
      last_dec = last_dec + r * pow(16, power);
      x = x + 1;
      power = power - 1;
    }
    

    
    
    
    decimal_length = b.length;
    for (var j = 0; j < decimal_length; j++) {
      if (b[j] == "A" || b[j] == "a") {
        digit = "10";
      } else if (b[j] == "B" || b[j] == "b") {
        digit = "11";
      } else if (b[j] == "C" || b[j] == "c") {
        digit = "12";
      } else if (b[j] == "D" || b[j] == "d") {
        digit = "13";
      } else if (b[j] == "E" || b[j] == "e") {
        digit = "14";
      } else if (b[j] == "F" || b[j] == "f") {
        digit = "15";
      } else {
        digit = b[j];
      }

      if (radix != -decimal_length) {
        // ignore: unnecessary_brace_in_string_interps
        text = text + "${digit}*16${unicode_map[radix][0]} + ";
      } else {
        // ignore: unnecessary_brace_in_string_interps
        text = text + "${digit}*16${unicode_map[radix][0]}";
      }
      radix = radix - 1;
    }

    decInt = first_dec + last_dec;
    dec = decInt.toString();
    finatText = finatText +
        text +
        "\n= " +
        dec +
        "\n\nThe complete result is: \n\n" +
        "($bin)${unicode_map[16][1]} = ($dec)${unicode_map[10][1]}";
        return finatText;


  } else {
    len = bin.length;
    dec = int.parse(bin, radix: 16).toRadixString(10);
    radix = len - 1;
    for (i = 0; i < len; i++) {
      if (bin[i] == "A" || bin[i] == "a") {
        digit = "10";
      } else if (bin[i] == "B" || bin[i] == "b") {
        digit = "11";
      } else if (bin[i] == "C" || bin[i] == "c") {
        digit = "12";
      } else if (bin[i] == "D" || bin[i] == "d") {
        digit = "13";
      } else if (bin[i] == "E" || bin[i] == "e") {
        digit = "14";
      } else if (bin[i] == "F" || bin[i] == "f") {
        digit = "15";
      } else {
        digit = bin[i];
      }

      if (radix != 0) {
        // ignore: unnecessary_brace_in_string_interps
        text = text + "${digit}*16${unicode_map[radix][0]} + ";
      } else {
        // ignore: unnecessary_brace_in_string_interps
        text = text + "${digit}*16${unicode_map[radix][0]}";
      }
      radix = radix - 1;
    }
    dec = int.parse(bin, radix: 16).toRadixString(10);
    dublicate = dec;

    dec = "= " + dec;
    finatText = finatText +
        text +
        "\n" +
        dec +
        "\n\nThe complete result is: \n\n" +
        "($bin)${unicode_map[16][1]} = ($dublicate)${unicode_map[10][1]}";
    
        return finatText;

  }
}
