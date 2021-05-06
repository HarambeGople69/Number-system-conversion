// ignore: non_constant_identifier_names
String decimal_to_hexadecimal_conversion(String decimal) {
  
  String binary;
  // ignore: non_constant_identifier_names
  String first_part;
  // ignore: non_constant_identifier_names
  String last_part;
  String b;
  if (decimal.contains(".")) {
    var list = decimal.split(".");
    first_part = int.parse(list[0], radix: 10).toRadixString(16);
    b = "0." + list[1];
    last_part = fractional_part(b);
    return first_part + "." + last_part;
  } else {
    binary = int.parse(decimal, radix: 10).toRadixString(16);
    return binary;
  }
}

// ignore: non_constant_identifier_names
String fractional_part(String fraction) {
  String returnThis = "";
  // ignore: non_constant_identifier_names
  double convert_to_double;
  // ignore: non_constant_identifier_names
  String convert_to_string;
  // ignore: non_constant_identifier_names
  String add_zero = "";
  print(fraction);
  
  // ignore: non_constant_identifier_names
  String loop_brain = fraction;
  print(loop_brain);
  for (var i = 0; i < 10; i++) {
    var split = loop_brain.split(".");
    if (i != 0) {
      if (split[0] == "10") {
      split[0] = "A";
    } else if (split[0] == "11") {
      split[0] = "B";
    } else if (split[0] == "12") {
      split[0] = "C";
    } else if (split[0] == "13") {
      split[0] = "D";
    } else if (split[0] == "14") {
      split[0] = "E";
    } else if (split[0] == "15") {
      split[0] = "F";
    }
      returnThis = returnThis + split[0];
    }
    add_zero = "0." + split[1];
    convert_to_double = double.parse(add_zero);
    convert_to_double = convert_to_double * 16;
    convert_to_string = convert_to_double.toString();
    print(convert_to_string);
    
    print(convert_to_string);
    loop_brain = convert_to_string;
  }
  return returnThis;
}
