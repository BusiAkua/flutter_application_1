import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Application Form',
      home: ApplicationPage1(),
    );
  }
}

class ApplicationPage1 extends StatefulWidget {
  const ApplicationPage1({super.key});

  @override
  _ApplicationFormState createState() => _ApplicationFormState();
}

class ApplicationPage2 extends StatefulWidget {
  const ApplicationPage2({super.key});

  @override
  _ApplicationFormState createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationPage1> {
  // Define form controllers and keys here later
  final _formKey = GlobalKey<FormState>();
  
  // Controllers for form fields
  

  //Fields for the Agriyouth form
  final _districtController = TextEditingController();
  final _municipalityController = TextEditingController();
  final _refController = TextEditingController();
  final _projectNameController = TextEditingController();
  final _tradingNameController = TextEditingController();
  final _regNumController = TextEditingController();
  final _AddressController = TextEditingController();
  final _AreaCodeController = TextEditingController();
  final _TitleController = TextEditingController();
  String? _selectedTitle; // For dropdown selection
  final _SurnameController = TextEditingController();
  final _FirstnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _positionController = TextEditingController();
  bool _isPoultry = false;//For checkbox selection
  bool _isLivestock = false;
  bool _isProcessing = false;
   bool _isStorage = false;
   bool _isBorehole = false;//For checkbox selection
  bool _isReservoir = false;
  bool _isTrough = false;
  bool _isOther = false;
  final _irrigationController = TextEditingController();
  final _initialsController = TextEditingController();

   @override
  void dispose() {
    // Dispose of controllers when not needed
    _emailController.dispose();
    _phoneController.dispose();

    _districtController.dispose();
    _municipalityController.dispose();
    _refController.dispose();
    _projectNameController.dispose();
    _tradingNameController.dispose();
    _regNumController.dispose();
    _AddressController.dispose();
    _AreaCodeController.dispose();
    _TitleController.dispose();
    _SurnameController.dispose();
    _FirstnameController.dispose();
    _positionController.dispose();
    _irrigationController.dispose();
    _initialsController.dispose();

    super.dispose();
  }

  // Other methods will be added here later


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar
        //title: Text('Application Form'),
      //),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              //  First Row of the form

              //Text for reference number
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.topRight,
              child: TextFormField(
                controller: _refController,
                      decoration: InputDecoration(labelText: 'Application Ref No:'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your ref number';
                        }
                        return null;
                      },

              ),
            ),

          // Row of TextFormFields for District and Municipality
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _districtController,
                      decoration: InputDecoration(labelText: 'DISTRICT:',
                      labelStyle: TextStyle(
                        fontSize: 10
                      )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your district';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      controller: _municipalityController,
                      decoration: InputDecoration(labelText: 'MUNICIPALITY:',
                      labelStyle: TextStyle(
                        fontSize: 10
                      )),
                      //keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your municipality';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              
              //Project Info
              Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                alignment: Alignment.centerLeft,
                child: Text("PROJECT CONTACT DETAILS",
                style: TextStyle(
                        fontSize: 10
                      ),),
              ),

              Container(
                child: TextFormField(
                  controller: _projectNameController,
                  decoration: InputDecoration(labelText: "Project/Farm Name",
                  labelStyle: TextStyle(
                        fontSize: 10
                      )),
                )
              ),


              Row(

                children: [
                  Expanded(
                  child:TextFormField(
                  controller: _tradingNameController,
                  decoration: InputDecoration(labelText: "Trading Name/ Legal Entity Name(if applicable)",
                  labelStyle: TextStyle(
                        fontSize: 10
                      )),
                )),

                SizedBox(width: 16.0),

                Expanded(
                  child: TextFormField(
                  controller: _regNumController,
                  decoration: InputDecoration(labelText: "Reg Number:",
                  labelStyle: TextStyle(
                        fontSize: 10
                      )),
                ))
            ]),

            Container(
              child: TextFormField(
                controller: _AddressController,
                decoration: InputDecoration(labelText: "physical Address:",
                labelStyle: TextStyle(
                        fontSize: 10
                      )),
              ),
            ),

             Container(
              child: TextFormField(
                controller: _AreaCodeController,
                decoration: InputDecoration(labelText: "Area Code",
                labelStyle: TextStyle(
                        fontSize: 10
                      )),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                alignment: Alignment.centerLeft,
                child: Text("CONTACT PERSON",
                style: TextStyle(
                        fontSize: 10
                      ),),
              ),

              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Tile:'),
                value: _selectedTitle,
                items: ['Mr', 'Ms', 'Mrs', 'Dr'].map((title) {
                  return DropdownMenuItem(
                    value: title,
                    child: Text(title),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedTitle = value;
                  });
                },
              ),

              //Contacts Row 1
               Row(

                children: [
                  Expanded(
                  child:TextFormField(
                  controller: _SurnameController,
                  decoration: InputDecoration(labelText: "Surname:",
                  labelStyle: TextStyle(
                        fontSize: 10
                      )),
                )),

                SizedBox(width: 16.0),

                Expanded(
                  child: TextFormField(
                  controller: _FirstnameController,
                  decoration: InputDecoration(labelText: "First Name(s):",
                  labelStyle: TextStyle(
                        fontSize: 10
                      )),
                ))
            ]),

            //Contacts Row 2
             Row(

                children: [
                  Expanded(
                  child:TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: "Email:",
                  labelStyle: TextStyle(
                        fontSize: 10
                      )),
                )),

                SizedBox(width: 16.0),

                Expanded(
                  child: TextFormField(
                  controller: _positionController,
                  decoration: InputDecoration(labelText: "Position:",
                  labelStyle: TextStyle(
                        fontSize: 10
                      )),
                ))
            ]),

            Container(
              child: TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: "Contact Number: ",
                labelStyle: TextStyle(
                        fontSize: 10
                      )),
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              color: const Color.fromARGB(255, 17, 88, 20),
              child: Text("PURPOSE OF GRANT APPLICATION ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12
              ),
              ),
            ),

            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(0,15,0,15),
                  child: Text("On/Off farm infastructure",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),),
                ),

              Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Checkbox(value: _isPoultry, 
                      onChanged: (bool? value){
                        setState((){
                          _isPoultry = value ?? false;
                        });
                      }
                      ),

                      Text("Poultry ",
                      style: TextStyle(
                        fontSize: 10
                      ),)
                    ],
                  )),

                  Expanded(child: Row(
                    children: [
                      Checkbox(value: _isLivestock, 
                      onChanged: (bool? value){
                        setState((){
                          _isLivestock = value ?? false;
                        });
                      }
                      ),

                      Text("Livestock ",
                      style: TextStyle(
                        fontSize: 10
                      ),)
                    ],
                  )),

                  Expanded(child: Row(
                    children: [
                      Checkbox(value: _isProcessing, 
                      onChanged: (bool? value){
                        setState((){
                          _isProcessing = value ?? false;
                        });
                      }
                      ),

                      Text("Processing ",
                      style: TextStyle(
                        fontSize: 10
                      ),)
                    ],
                  )),

                  Expanded(child: Row(
                    children: [
                      Checkbox(value: _isStorage, 
                      onChanged: (bool? value){
                        setState((){
                          _isStorage = value ?? false;
                        });
                      }
                      ),

                      Text("Storage ",
                      style: TextStyle(
                        fontSize: 10
                      ),)
                    ],
                  ))
                ],
              ),
            
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(0,15,0,15),
                  child: Text("Water infastructure",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),),
                ),
            
              Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Checkbox(value: _isBorehole, 
                      onChanged: (bool? value){
                        setState((){
                          _isBorehole = value ?? false;
                        });
                      }
                      ),

                      Text("Borehole",
                      style: TextStyle(
                        fontSize: 10
                      ),)
                    ],
                  )),

                  Expanded(child: Row(
                    children: [
                      Checkbox(value: _isReservoir, 
                      onChanged: (bool? value){
                        setState((){
                          _isReservoir = value ?? false;
                        });
                      }
                      ),

                      Text("Reservoir",
                      style: TextStyle(
                        fontSize: 10
                      ),)
                    ],
                  )),

                  Expanded(child: Row(
                    children: [
                      Checkbox(value: _isTrough, 
                      onChanged: (bool? value){
                        setState((){
                          _isTrough = value ?? false;
                        });
                      }
                      ),

                      Text("Troughs",
                      style: TextStyle(
                        fontSize: 10
                      ),)
                    ],
                  )),

                  Expanded(child: Row(
                    children: [
                      Checkbox(value: _isOther, 
                      onChanged: (bool? value){
                        setState((){
                          _isOther = value ?? false;
                        });
                      }
                      ),

                      Text("Other",
                      style: TextStyle(
                        fontSize: 10
                      ),)
                    ],
                  )),
                  
                  
                ],
              ),

              Container(
                alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(0,15,0,15),
                  child: Text("In-field irrigation structures (copy of water rights should be attached)",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold
                  ),),
                  ),

                   Container(
                child: TextFormField(
                controller: _irrigationController,
                decoration: InputDecoration(labelText: "Specify type of irrigation support required ",
                labelStyle: TextStyle(
                        fontSize: 10
                      )),
              ),
            ),

            ], ),

            

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //print('Name: ${_nameController.text}');
                    print('Email: ${_emailController.text}');
                    print('Phone: ${_phoneController.text}');
                    print('Gender: $_selectedTitle');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}