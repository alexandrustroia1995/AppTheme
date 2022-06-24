import 'package:flutter/material.dart';
import 'package:flutter_theme/theme/design/app_button_style.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key, this.style, this.child}) : super(key: key);

  final AppButtonStyle? style;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final AppButtonStyle defaultStyle = Theme.of(context).extension<AppButtonStyle>()!;
    final double? size = style?.size ?? defaultStyle.size;
    final double? borderRadius = style?.borderRadius ?? defaultStyle.borderRadius;
    return SizedBox(
        height: size,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: defaultStyle.color.mainPrimaryDark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
            ),
          ),
          child: child,
        ));
  }
}
