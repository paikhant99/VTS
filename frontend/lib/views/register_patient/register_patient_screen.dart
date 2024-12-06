import 'package:flutter/material.dart';
import 'package:frontend/data/enums.dart';
import 'package:frontend/views/home_screen.dart';
import 'package:frontend/views/register_patient/register_patient_viewmodel.dart';
import 'package:provider/provider.dart';

class RegisterPatientScreen extends StatefulWidget {
  const RegisterPatientScreen({super.key});

  @override
  State<RegisterPatientScreen> createState() => _RegisterPatientScreenState();
}

class _RegisterPatientScreenState extends State<RegisterPatientScreen> {
  Gender dropdownValue = Gender.Male;
  String dOBLabel = "Choose";
  late TextEditingController _userNameController, _emailController, _pController, _retypePController, _addressController;

  @override
  void initState() {
    _userNameController = TextEditingController();
    _emailController = TextEditingController();
    _pController = TextEditingController();
    _retypePController = TextEditingController();
    _addressController = TextEditingController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Patient Registration'),
      ),
      body: Consumer<RegisterPatientViewmodel>(
        builder: (context, registerPatientViewModel, child) {

          if (registerPatientViewModel.registerResult != null){
            if(registerPatientViewModel.registerResult!.isSuccess){
              Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomeScreen(contentDesc: "Home Screen")));
            }
          }

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _userNameController,
                    decoration: const InputDecoration(
                        labelText: 'Username*', border: OutlineInputBorder()),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Gender'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton<Gender>(
                        hint: Text(Gender.Male.name),
                        value: dropdownValue,
                        items: Gender.values.map((Gender value) {
                          return DropdownMenuItem<Gender>(
                            value: value,
                            child: Text(value.name),
                          );
                        }).toList(),
                        onChanged: (Gender? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Date of Birth'),
                      OutlinedButton(
                          child: Text(dOBLabel),
                          onPressed: () async {
                            var dOB = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(DateTime.now().year - 80),
                                lastDate: DateTime.now());
                            if (dOB != null) {
                              setState(() {
                                dOBLabel = "${dOB.year}-${dOB.month}-${dOB.day}";
                              });
                            }
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        labelText: 'Email*', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _pController,
                    decoration: const InputDecoration(
                        labelText: 'Password*', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _retypePController,
                    decoration: const InputDecoration(
                        labelText: 'Retype Password*',
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _addressController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                    decoration: const InputDecoration(
                        labelText: 'Address', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        Provider.of<RegisterPatientViewmodel>(context, listen: false).registerPatient(_userNameController.text, _emailController.text, _pController.text, dOBLabel, dropdownValue, _addressController.text);
                      },
                      child: const Text(
                        'Create Account',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
