import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/widgets/text_with_dot.dart';

class EnumeratingText extends StatelessWidget {
  const EnumeratingText({
    super.key,
    required this.title,
    this.titleTextStyle,
    this.dotColor,
    this.includeSpacing = false,
    required this.texts,
  });

  final String title;
  final TextStyle? titleTextStyle;
  final Color? dotColor;
  final bool includeSpacing;
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleTextStyle ?? AppTextStyles.italicTextStyle,
        ),
        if (includeSpacing)
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: texts.length,
            itemBuilder: (context, index) {
              final text = texts[index];

              return TextWithDot(
                text: text,
                dotColor: dotColor,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 15);
            },
          )
        else
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: texts.length,
            itemBuilder: (context, index) {
              final text = texts[index];

              return TextWithDot(
                text: text,
                dotColor: dotColor,
              );
            },
          ),
      ],
    );
  }
}

class EnumeratingRichText extends StatelessWidget {
  const EnumeratingRichText({
    super.key,
    required this.title,
    this.dotColor,
    this.includeSpacing = false,
    required this.texts,
  });

  final TextSpan title;
  final Color? dotColor;
  final bool includeSpacing;
  final List<TextSpan> texts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(text: title),
        if (includeSpacing)
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: texts.length,
            itemBuilder: (context, index) {
              final text = texts[index];

              return RichTextWithDot(
                text: text,
                dotColor: dotColor,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 15);
            },
          )
        else
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: texts.length,
            itemBuilder: (context, index) {
              final text = texts[index];

              return RichTextWithDot(
                text: text,
                dotColor: dotColor,
              );
            },
          ),
      ],
    );
  }
}
