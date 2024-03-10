import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OflySelectedTimeWidget extends StatefulWidget {
  const OflySelectedTimeWidget({Key? key}) : super(key: key);

  @override
  _OflySelectedTimeWidgetState createState() => _OflySelectedTimeWidgetState();
}

class _OflySelectedTimeWidgetState extends State<OflySelectedTimeWidget> {
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          hintText: "00:00",
          labelText: "Hora",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
        readOnly: true,
        onTap: () async {
          _selectedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          );
          if (_selectedTime != null) {
            setState(() {});
          }
        },
        controller: TextEditingController(
          text: _selectedTime != null
              ? DateFormat.Hm().format(
                  DateTime(
                      2022, 1, 1, _selectedTime!.hour, _selectedTime!.minute),
                )
              : "",
        ),
      ),
    );
  }
}
