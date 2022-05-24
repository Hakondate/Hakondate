part of 'hakondate_dialog.dart';

class HakondateActionButton extends StatelessWidget {
  const HakondateActionButton({
    Key? key,
    required this.text,
    this.onTap,
    this.color,
    this.isPrimary = false,
  }) : super(key: key);

  final Widget text;
  final Function()? onTap;
  final Color? color;
  final bool isPrimary;

  factory HakondateActionButton.primary({
    Key? key,
    required Widget text,
    Function()? onTap,
    Color? color,
  }) => HakondateActionButton(
    key: key,
    text: text,
    onTap: onTap,
    color: color,
    isPrimary: true,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.0,
        width: double.infinity,
        color: color ?? AppColor.ui.white,
        child: Center(
          child: DefaultTextStyle(
            style: TextStyle(
              color: (isPrimary) ? AppColor.brand.secondary : AppColor.text.gray,
              fontSize: 16.0,
              fontWeight: (isPrimary) ? FontWeight.bold : null,
            ),
            child: text,
          ),
        ),
      ),
    );
  }
}
