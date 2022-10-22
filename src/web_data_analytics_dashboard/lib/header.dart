import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: CupertinoColors.separator, width: 1))),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              "Udemy",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        Text(
          "Web Data Analytics Dashboard",
          style: TextStyle(color: CupertinoColors.inactiveGray),
        )
      ]),
    );
  }
}
