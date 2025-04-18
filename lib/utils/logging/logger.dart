import 'package:logger/logger.dart';  // Note: lowercase 'logger' in import

class TLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,       // Number of method calls to be displayed
      errorMethodCount: 8,  // Number of method calls in stack traces
      lineLength: 120,      // Width of the output
      colors: true,         // Colorful log messages
      printEmojis: true,    // Print an emoji for each log level
      printTime: false,     // Should each log print contain a timestamp
    ),
    level: Level.debug,    // Minimum level to log
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace ?? StackTrace.current);
  }

  static void verbose(String message) {
    _logger.v(message);
  }

  static void wtf(String message) {
    _logger.wtf(message);
  }
}