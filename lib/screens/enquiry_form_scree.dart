import 'package:flutter/material.dart';

class EnquiryFormScreen extends StatefulWidget {
  const EnquiryFormScreen({Key? key});

  @override
  State<EnquiryFormScreen> createState() => _EnquiryFormScreenState();
}

class _EnquiryFormScreenState extends State<EnquiryFormScreen> {
  Color containerColor = Colors.grey.shade100;
  final List<String> _gender = ['M', 'F'];
  final _formKey = GlobalKey<FormState>();

  Widget formWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.green),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $text';
          }
          return null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enquiry",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        // Change color of back arrow to white
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/graduate6.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height - 240,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                color: Colors.black.withOpacity(0.8),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            containerColor = Colors.grey.shade900;
                            setState(() {});
                          },
                          child: const Text(
                            'Enquiry Form',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      formWidget('Full Name'),
                      formWidget('Place of Birth'),
                      formWidget('Full Address'),
                      formWidget('Nationality'),
                      formWidget('City/Country'),
                      formWidget('Email'),
                      formWidget('Phone'),
                      formWidget('WhatsApp Number'),
                      DropdownButtonFormField(
                        padding: EdgeInsets.all(8.0),
                        dropdownColor: Colors.redAccent.shade200,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white))),
                        hint: Text(
                          'Gender',
                          style: TextStyle(color: Colors.white),
                        ),
                        items: _gender
                            .map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem(
                              value: e, child: Text(e,style: TextStyle(color: Colors.white),));
                        }).toList(),
                        onChanged: (value) {},
                      ),
                      OutlinedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Form is valid, handle the form submission here
                            // For now, print a message
                            print('Form is valid!');
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(color: Colors.white)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
