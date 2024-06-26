import 'package:flutter/material.dart';

class DateTimePickerOrnek extends StatefulWidget {
  const DateTimePickerOrnek({super.key});

  @override
  State<DateTimePickerOrnek> createState() => _DateTimePickerOrnekState();
}

class _DateTimePickerOrnekState extends State<DateTimePickerOrnek> {
  late TextEditingController tarihController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tarihController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tarihController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DateTimePicker Örnek"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              child: TextField(
                controller: tarihController,
                decoration: InputDecoration(hintText: 'Doğum tarihi'),
                readOnly: true,
                onTap: () async {
                  DateTime? selectedDate;
                  selectedDate = await showDatePicker(
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    context: context,
                    firstDate: DateTime(1960),
                    lastDate: DateTime.now(),
                  );

                  if (selectedDate != null) {
                    setState(() {
                      tarihController.text =
                          DateUtils.dateOnly(selectedDate!).toString();
                    });
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
