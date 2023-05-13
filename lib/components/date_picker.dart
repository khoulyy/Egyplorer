import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/constants/keys.dart';
import 'package:project/controller/Controllers.dart';

class DateOfBirthTextField extends StatefulWidget {
  final void Function(DateTime selectedDate)? onDateChanged;
  final Function(String)? onSubmitted;

  const DateOfBirthTextField({Key? key, this.onDateChanged, this.onSubmitted})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DateOfBirthTextFieldState createState() => _DateOfBirthTextFieldState();
}

class _DateOfBirthTextFieldState extends State<DateOfBirthTextField> {
  DateTime? _selectedDate;
  final _dateFormatter = DateFormat('yyyy-MM-dd');

  @override
  void initState() {
    super.initState();
    Controllers.dateOfBirthController.addListener(_onTextChange);
  }

  @override
  void dispose() {
    Controllers.dateOfBirthController.removeListener(_onTextChange);
    Controllers.dateOfBirthController.dispose();
    super.dispose();
  }

  void _onTextChange() {
    final enteredDate = Controllers.dateOfBirthController.text.trim();
    final parsedDate = _dateFormatter.parse(enteredDate, true);

    if (parsedDate != _selectedDate) {
      setState(() {
        _selectedDate = parsedDate;
      });
      widget.onDateChanged?.call(parsedDate);
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        Controllers.dateOfBirthController.text = _dateFormatter.format(picked);
      });
      widget.onDateChanged?.call(picked);

      // Submit the TextFormField when "OK" is pressed
      widget.onSubmitted?.call(Controllers.dateOfBirthController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: AbsorbPointer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(
                  Icons.date_range_outlined,
                  size: 30,
                  color: kMainColor,
                ),
              ),
              labelText: 'Date of Birth',
            ),
            controller: Controllers.dateOfBirthController,
            textInputAction: TextInputAction.done, // Set the action to done
            onFieldSubmitted: (value) {
              widget.onSubmitted?.call(value);
            },
          ),
        ),
      ),
    );
  }
}
