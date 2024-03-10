import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OflyDateTimePicker extends StatefulWidget {
  const OflyDateTimePicker({Key? key}) : super(key: key);

  @override
  _OflyDateTimePickerState createState() => _OflyDateTimePickerState();
}

class _OflyDateTimePickerState extends State<OflyDateTimePicker> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          hintText: "dd/mm/yyyy",
          labelText: "Data",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
        readOnly: true,
        onTap: () async {
          // Chama o DatePicker e armazena o valor em _selectedDate
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: _selectedDate ?? DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2101),
          );

          // Atualiza o estado para refletir a nova seleção
          if (pickedDate != null) {
            setState(() {
              _selectedDate = pickedDate;
            });
          }
        },
        controller: TextEditingController(
          text: _selectedDate != null
              ? DateFormat('dd/MM/yyyy').format(_selectedDate!)
              : "",
        ),
      ),
    );
  }
}
