import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  double upWardPos = 0;
  double downwardPos = 0;
  double redConPos = -50;
  double redTextPos = -50;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 150,
      child: MouseRegion(
        onEnter: (a) {
          setState(() {
            upWardPos = -50;
            downwardPos = -50;
            redConPos = 0;
            redTextPos = 0;
          });
        },
        onExit: (a) {
          setState(() {
            upWardPos = 0;
            downwardPos = 0;
            redConPos = -50;
            redTextPos = -50;
          });
        },
        cursor: SystemMouseCursors.click,
        child: Stack(
          children: [
            SizedBox(
              height: 50,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Icon(
                        widget.icon,
                        size: 50,
                        color: Colors.red,
                      ),
                    ),
                    bottom: redConPos,
                    duration: const Duration(milliseconds: 300),
                  ),
                  AnimatedPositioned(
                    child: Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50,
                      child: Icon(
                        widget.icon,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                    top: upWardPos,
                    duration: const Duration(milliseconds: 300),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 50,
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      bottom: downwardPos,
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 50,
                        child: Text(
                          widget.text,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      top: redTextPos,
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 50,
                        child: Text(
                          widget.text,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 32,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
