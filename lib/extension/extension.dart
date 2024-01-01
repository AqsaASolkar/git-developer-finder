import 'package:flutter/material.dart';

extension VerticalPadding on num {
  Widget get height => SizedBox(height: toDouble());
}

extension HorizontalPadding on num {
  Widget get width => SizedBox(width: toDouble());
}
