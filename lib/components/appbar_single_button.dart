import 'package:flutter/widgets.dart';
import 'package:frledger/globals/styles.dart';

class AppbarSingleButton extends StatefulWidget {
  const AppbarSingleButton({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  State<StatefulWidget> createState() {
    return _AppbarSingleButtonState();
  }
}

class _AppbarSingleButtonState extends State<AppbarSingleButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails d) {
        setState(() {
          hover = true;
        });
      },
      onTapUp: (TapUpDetails d) {
        setState(() {
          hover = false;
        });
      },
      onTapCancel: () {
        setState(() {
          hover = false;
        });
      },
      child: Container(
          decoration:
              const BoxDecoration(boxShadow: [slightElevated], color: white),
          height: appbarHeight,
          width: appbarHeight,
          child: Padding(
            padding: const EdgeInsets.all(appbarButtonPadding),
            child: Container(
              color: hover ? accentFocus : white,
              child: Icon(
                widget.icon,
                size: 23,
                color: accent,
              ),
            ),
          )),
    );
  }
}

/*

*/