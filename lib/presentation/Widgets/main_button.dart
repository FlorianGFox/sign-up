import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Function() onPressed;

  const MainButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double buttonCornerRadius = 25.0;
    const double buttonPadding = 25.0;

    final Icon icon = iconData != null
        ? Icon(
            iconData,
            color: Theme.of(context).primaryTextTheme.button.color,
          )
        : Icon(
            Icons.arrow_forward,
            color: Theme.of(context).primaryTextTheme.button.color,
          );

    final Text buttonText = Text(
      text,
      style: Theme.of(context).primaryTextTheme.button,
    );

    return RaisedButton.icon(
      padding: const EdgeInsets.symmetric(
          horizontal: buttonPadding, vertical: buttonPadding / 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(buttonCornerRadius),
      ),
      elevation: 0,
      color: Theme.of(context).primaryColor,
      icon: buttonText,
      label: icon,
      onPressed: onPressed,
    );
  }
}
