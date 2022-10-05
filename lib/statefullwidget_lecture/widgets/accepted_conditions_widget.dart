import 'package:flutter/material.dart';

class AcceptedConditions extends StatefulWidget {
  final Color? textColor;
  const AcceptedConditions({super.key, this.textColor});

  @override
  State<AcceptedConditions> createState() => _AcceptedConditionsState();
}

class _AcceptedConditionsState extends State<AcceptedConditions> {
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Switch(
            onChanged: (value) {
              isAccepted = value;
              setState(() {});
            },
            value: isAccepted,
          ),
          Checkbox(
            onChanged: (value) {
              isAccepted = value!;
              setState(() {});
            },
            value: isAccepted,
          ),
          Text(
            'Accepted Conditions',
            style: TextStyle(color: widget.textColor),
          )
        ],
      ),
    );
  }
}
