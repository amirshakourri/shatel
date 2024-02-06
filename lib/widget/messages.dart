import 'package:flutter/material.dart';

class UserMessagesBox extends StatefulWidget {
  final String text;
  const UserMessagesBox(this.text, {super.key});

  @override
  State<UserMessagesBox> createState() => _UserMessagesBoxState();
}

class _UserMessagesBoxState extends State<UserMessagesBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12,
        left: 12,
        bottom: 6,
      ),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        
                        color: Colors.grey.shade600,
                        fontSize: 14,
                        fontFamily: "SM",
                      ),
                      maxLines: 2,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: SizedBox(
                    child: Text(
                      '1402/11/01',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontFamily: "SM",
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
