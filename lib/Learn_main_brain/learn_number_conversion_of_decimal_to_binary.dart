// ignore: non_constant_identifier_names
String learn_number_conversion_of_decimal_to_binary(String decimalString ) {
  
  String dublicate = decimalString;
  String dublicateFirst;
  String r;
  int rInt;
  String text = "";
  String explain = "";
  int decimal;
  var list;
  // ignore: non_constant_identifier_names
  String decimal_first_part;
  // ignore: non_constant_identifier_names
  String decimal_last_part;
  // ignore: non_constant_identifier_names
  var last_part_list;
  // ignore: non_constant_identifier_names
  String last_part_first;
  // ignore: non_constant_identifier_names
  String last_part_last;
  
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
      "For the conversion of ($decimalString)${unicode_map[10][1]} to binary number system, we divide the integer part by 2 and record the remainder. Then divide the result of this division again by 2 and so on until the result of division is zero\n\n";

  if (decimalString.contains(".")) {
    list = decimalString.split(".");
    decimal_first_part = list[0];
    dublicateFirst = decimal_first_part;
    decimal_last_part = list[1];
    decimal_last_part = "0." + decimal_last_part;
    decimal = int.parse(decimal_first_part);
    do {
      rInt = decimal ~/ 2;
      r = (decimal % 2).toString();
      text = text + r;
      explain = explain + "$decimal ÷ 2 = ${decimal ~/ 2} Remainder $r \n";
      decimal = rInt;
    } while (rInt != 0);
    text = text.split("").reversed.join();
    finatText = finatText +
        explain +
        "\n" +
        "Now, we have to scan the remainder from the bottom. So, the integer part binary number is = $text" +
        "\n\nThe complete result is: \n\n($dublicateFirst)${unicode_map[10][1]} = ($text)${unicode_map[2][1]}\n\nTo get the binary of the fractional part ($decimal_last_part), we have multiplied this part by 2 and take the integer part before the decimal point as result. Then the remaining fractional part will be again multiplied by 2.\n\n";

    last_part_list = fractional_part(decimal_last_part);
    last_part_first = last_part_list[0];
    last_part_last = last_part_list[1];
    finatText = finatText +
        "$last_part_first \nNow, we have to scan the integer from the top. So, the fractional part binary number is = $last_part_last\n";
    finatText +=
        // ignore: unnecessary_brace_in_string_interps
        "\nThe complete result is:\n\n($dublicate)${unicode_map[10][1]} = (${text}.${last_part_last})${unicode_map[2][1]}";
    // print(explain);
    // print(last_part_first);
    // print(last_part_last + "\n");
    return finatText;
  } else {
    decimal = int.parse(decimalString);
    do {
      rInt = decimal ~/ 2;
      r = (decimal % 2).toString();
      text = text + r;
      explain = explain + "$decimal ÷ 2 = ${decimal ~/ 2} Remainder $r \n";
      decimal = rInt;
    } while (rInt != 0);
    text = text.split("").reversed.join();

    finatText = finatText +
        explain +
        "\n" +
        "Now, we have to scan the remainder from the bottom. So, the integer part binary number is = $text\n\nThe complete result is:" +
        "\n\nThe complete result is: \n\n($dublicate)${unicode_map[10][1]} = ($text)${unicode_map[2][1]}";
    return finatText;
  }
}

// ignore: non_constant_identifier_names
List fractional_part(String fraction) {
  String returnThis = "";
  // ignore: non_constant_identifier_names
  double convert_to_double;
  // ignore: non_constant_identifier_names
  String convert_to_string;
  // ignore: non_constant_identifier_names
  String add_zero = "";
  // ignore: non_constant_identifier_names
  String FractionText = "";
  var list;

  // ignore: non_constant_identifier_names
  String loop_brain = fraction;

  for (var i = 0; i < 10; i++) {
    var split = loop_brain.split(".");
    if (i != 0) {
      returnThis = returnThis + split[0];
    }
    add_zero = "0." + split[1];
    convert_to_double = double.parse(add_zero);
    convert_to_double = convert_to_double * 2;
    convert_to_string = convert_to_double.toString();

    loop_brain = convert_to_string;
    FractionText = FractionText +
        "$add_zero * 2 = $convert_to_string Integer ${convert_to_double.floor()} \n";
  }
  list = [FractionText, returnThis];
  return list;
}
