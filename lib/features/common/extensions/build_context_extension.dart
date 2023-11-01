import 'package:flutter/material.dart';

/// A set of useful [BuildContext] extensions
extension BuildContextX on BuildContext {
  /// Extension for quickly accessing screen size
  Size get screenSize => MediaQuery.of(this).size;
}
