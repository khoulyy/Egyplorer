import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/constants/keys.dart';

class DateOfBirthTextField extends StatefulWidget {
  final void Function(DateTime selectedDate)? onDateChanged;
  final Function(String)? onSubmitted;

  const DateOfBirthTextField({Key? key, this.onDateChanged, this.onSubmitted})
      : super(key: key);

  @override
  _DateOfBirthTextFieldState createState() => _DateOfBirthTextFieldState();
}

class _DateOfBirthTextFieldState extends State<DateOfBirthTextField> {
  DateTime? _selectedDate;
  final _dateFormatter = DateFormat('yyyy-MM-dd');
  final _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_onTextChange);
  }

  @override
  void dispose() {
    _textEditingController.removeListener(_onTextChange);
    _textEditingController.dispose();
    super.dispose();
  }

  void _onTextChange() {
    final enteredDate = _textEditingController.text.trim();
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
        _textEditingController.text = _dateFormatter.format(picked);
      });
      widget.onDateChanged?.call(picked);

      // Submit the TextFormField when "OK" is pressed
      widget.onSubmitted?.call(_textEditingController.text);
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
            controller: _textEditingController,
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
