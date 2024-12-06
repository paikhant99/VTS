import 'package:flutter/material.dart';

class BookAppointmentPage extends StatefulWidget {
  const BookAppointmentPage({super.key});

  static const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  @override
  State<BookAppointmentPage> createState() => _BookAppointmentPageState();
}

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  String? dropdownValue;
  String _groupItem = BookAppointmentPage.list.first;
  @override
  Widget build(BuildContext context) {
    // TODO: implement Book Appointment Bottom Sheet
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Disease Type for Vaccination',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                hint: const Text("Search"),
                value: dropdownValue,
                items: BookAppointmentPage.list
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Choose a Time',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: BookAppointmentPage.list.length,
                    itemBuilder: (context, index) {
                      return RadioListTile(
                          title: Text(BookAppointmentPage.list[index]),
                          subtitle: Text("Value $index"),
                          value: BookAppointmentPage.list[index],
                          groupValue: _groupItem,
                          onChanged: (value) {
                            setState(() {
                              _groupItem = value!;
                            });
                          });
                    })),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }, child: const Text("RESERVE")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
