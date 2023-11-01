import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';

class TextWithDot extends StatelessWidget {
  const TextWithDot({
    super.key,
    required this.text,
    this.dotColor,
  });

  final String text;
  final Color? dotColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.only(top: 7.5),
          decoration: BoxDecoration(
            color: dotColor ?? AppColors.red,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: AppTextStyles.regularTextStyle,
          ),
        ),
      ],
    );
  }
}

class RichTextWithDot extends StatelessWidget {
  const RichTextWithDot({
    super.key,
    required this.text,
    this.dotColor,
  });

  final TextSpan text;
  final Color? dotColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.only(top: 7.5),
          decoration: BoxDecoration(
            color: dotColor ?? AppColors.red,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: AppTextStyles.regularTextStyle,
              children: [text],
            ),
          ),
        ),
      ],
    );
  }
}
