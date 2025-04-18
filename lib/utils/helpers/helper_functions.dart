import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class THelperFunctions {
  /// Returns a Color based on string value
  /// Example: ColorHelper.getColor('Green') -> Colors.green
  static Color? getColor(String value) {
    switch (value.toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'pink':
        return Colors.pink;
      case 'grey':
        return Colors.grey;
      case 'purple':
        return Colors.purple;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      default:
        return null; // Return null if no match found
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  /// Shows an alert dialog with title and message
  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  /// Navigates to a new screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
  /// Truncates text and adds ellipsis if it exceeds maxLength
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }

  /// Checks if the device is in dark mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  /// Returns the screen size
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  /// Returns the screen height
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// Returns the screen width
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }
  /// Formats a DateTime object into a string using the specified format
  /// Default format: 'dd MMM yyyy' (e.g., "05 Jul 2023")
  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  /// Removes duplicate elements from a list while preserving order
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  /// Wraps widgets into rows with specified number of widgets per row
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final endIndex = i + rowSize > widgets.length ? widgets.length : i + rowSize;
      wrappedList.add(
        Row(
          children: widgets.sublist(i, endIndex),
        ),
      );
    }
    return wrappedList;
  }
}


