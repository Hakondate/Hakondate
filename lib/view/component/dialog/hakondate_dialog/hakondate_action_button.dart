part of 'hakondate_dialog.dart';

class HakondateActionButton extends StatelessWidget {
  const HakondateActionButton({
    required this.text,
    this.onTap,
    this.color,
    this.isPrimary = false,
    super.key,
  });

  factory HakondateActionButton.primary({
    required Widget text,
    void Function()? onTap,
    Color? color,
    Key? key,
  }) => HakondateActionButton(
    key: key,
    text: text,
    onTap: onTap,
    color: color,
    isPrimary: true,
  );

  final Widget text;
  final void Function()? onTap;
  final Color? color;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        color: color ?? AppColor.ui.white,
        child: Center(
          child: DefaultTextStyle(
            style: TextStyle(
              color: isPrimary ? AppColor.brand.secondary : AppColor.text.gray,
              fontSize: 16,
              fontWeight: isPrimary ? FontWeight.bold : null,
            ),
            child: text,
          ),
        ),
      ),
    );
  }
}
