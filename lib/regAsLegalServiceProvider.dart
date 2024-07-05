import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'urlConfig.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';



class RegAsLegalServiceProvider extends StatefulWidget {
  const RegAsLegalServiceProvider({Key? key}) : super(key: key);

  @override
  RegAsLegalServiceProviderState createState() => RegAsLegalServiceProviderState();
}

class RegAsLegalServiceProviderState extends State<RegAsLegalServiceProvider> {
  bool _showPassword = false;
  File? docfile;

  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _educationController = TextEditingController();
  final TextEditingController _certificationController = TextEditingController();
  final TextEditingController _licenseController = TextEditingController();
  final TextEditingController _jobtitleController = TextEditingController();
  final TextEditingController _yearsofexperienceController = TextEditingController();
  final TextEditingController _officeLocationController = TextEditingController();
  final TextEditingController _feeStructureController = TextEditingController();
  final TextEditingController _awardsAndRecognitionsController = TextEditingController();
  final TextEditingController _linguisticSkillsController = TextEditingController();
  final TextEditingController _professionalMembershipController = TextEditingController();
  final TextEditingController _barCouncilLicenseNumberController = TextEditingController();
  final TextEditingController _barAdmissionController = TextEditingController();
  DateTime selectedDate = DateTime.now(); // Add this variable to store the selected date
  String selectedJobTitle = 'Select Job Title';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dobController.text = DateFormat('dd/MM/yyyy').format(selectedDate!);
      });
    }
  }

  void _passtogle() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void termsCondition() {}

  void Ppolicy() {}

  void validate() async {
    if (_unameController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      var regBody = {
        "userName": _unameController.text,
        "email": _emailController.text,
        "phoneNo": _phoneController.text,
        "password": _passwordController.text,
        "dob": _dobController.text,
        "state": _stateController.text,
        "city": _cityController.text,
        "education": _educationController.text,
        "certification": _certificationController.text,
        "license": _licenseController.text,
        "jobtitle": _jobtitleController.text,
        "yearsofexperience": _yearsofexperienceController.text,
        "officeLocation":_officeLocationController.text,
      };
      var res = await http.post(Uri.parse(reg),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody));
      var jsonres = jsonDecode(res.body);
      if (jsonres['status']) {
        Navigator.pushNamed(context, '/otp');
      } else {
        return;
      }
    } else {
      return;
    }
  }

  void navigate() {
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 54.0, left: 24.0, bottom: 22.0),
              child: BackButton(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 24.0, bottom: 22.0),
              child: Text(
                'Legal Practitioner Onboarding',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0),
              child: const Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _unameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your Full Name',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'Phone',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your Phone Number',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            // Date of Birth
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'Date of Birth',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _dobController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'DD/MM/YYYY',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => _selectDate(context),
                    icon: const Icon(Icons.calendar_today),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'E-mail',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your E-mail',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'Password',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _passwordController,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    padding: const EdgeInsetsDirectional.only(end: 12.0),
                    icon: _showPassword
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    onPressed: _passtogle,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your Password',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),

            // State
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'State',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _stateController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your State',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            // City
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'City',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _cityController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your City',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            // Education
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'Education',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _educationController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your Qualification',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            // Certification
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'Certification',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(

            ),
            Container(
                padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                child: ElevatedButton(onPressed: (
                    ) async{
                  final result = await FilePicker.platform.pickFiles(
                    type : FileType.custom ,
                    allowedExtensions: ['pdf' , 'doc'] ,
                  );
                  if (result != null ) {
                    final path = result.files.single.path!;
                    if(path.isNotEmpty) {
                      setState(() {
                        docfile = File(path);
                      });
                    }
                  }
                }, child: const Text("Upload Your Documents"))
            ),
            // License
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'License',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                child: ElevatedButton(onPressed: (
                    ) async{
                  final result = await FilePicker.platform.pickFiles(
                    type : FileType.custom ,
                    allowedExtensions: ['pdf' , 'doc'] ,
                  );
                  if (result != null ) {
                    final path = result.files.single.path!;
                    if(path.isNotEmpty) {
                      setState(() {
                        docfile = File(path);
                      });
                    }
                  }
                }, child: const Text("Upload Your Documents"))
            ),


            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'Professional Title',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: DropdownButton<String>(
                value: selectedJobTitle,
                onChanged: (newValue){
                  setState(() {
                    selectedJobTitle = newValue! ;
                    _jobtitleController.text = newValue;

                  });
                },
                items: <String>[
                  'Select Job Title',
                  'Advocate',
                  'Mediator',
                  'Arbitrator',
                  'Notaries',
                  'Legal Document Writer',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

            Visibility(
              visible: selectedJobTitle == 'Advocate',
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only( left: 2.0, right: 16.0, top: 10.0),
                    child: const Text(
                      'Bar Admission',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _barAdmissionController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Your Jurisdiction',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: selectedJobTitle == 'Advocate',
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: const Text(
                      'Bar Council License Number',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _barCouncilLicenseNumberController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Your Bar Council License Number',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: selectedJobTitle == 'Advocate',
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, top: 18.0),
                    child: const Text(
                      'Professional Memberships',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _professionalMembershipController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Your Association',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: selectedJobTitle == 'Advocate',
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, top: 18.0),
                    child: const Text(
                      'Linguistic Skills',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _linguisticSkillsController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Specify your proficient languages',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: selectedJobTitle == 'Advocate',
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, top: 18.0),
                    child: const Text(
                      'Awards and Recognitions',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _awardsAndRecognitionsController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Highlight any Awards or Honours',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: selectedJobTitle == 'Advocate',
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, top: 18.0),
                    child: const Text(
                      'Fee Structure',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _feeStructureController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Specify your billing methods for minutes',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: selectedJobTitle == 'Advocate',
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, top: 18.0),
                    child: const Text(
                      'Office Location',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _officeLocationController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Your Location',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            if (selectedJobTitle == 'Notaries')
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, top: 18.0),
                    child: const Text(
                      'Notary License',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _licenseController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Your Notary License Number',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, top: 18.0),
                    child: const Text(
                      'Expiry Date of Notary License',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'DD/MM/YYYY',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, top: 18.0),
                    child: const Text(
                      'Professional Memberships',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _professionalMembershipController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Your Association',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, top: 18.0),
                    child: const Text(
                      'Linguistic Skills',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
                    child: TextFormField(
                      controller: _linguisticSkillsController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                        ),
                        hintText: 'Specify your proficient languages',
                        hintStyle: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
              child: const Text(
                'Years of Experience',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _yearsofexperienceController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your Experience',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 18.0, left: 24.0),
              child: Row(
                children: [
                  const Text(
                    'By signing up you agree to our ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      fontFamily: 'Gilroy',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      termsCondition();
                    },
                    child: const Text(
                      'Terms & Condition',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    ' and ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      fontFamily: 'Gilroy',
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 9.0, left: 24.0),
              child: InkWell(
                onTap: () {
                  Ppolicy();
                },
                child: const Text(
                  'Privacy Policy.*',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 16.0, left: 24.0, top: 32.0),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  height: 44.0,
                  child: ElevatedButton(
                    onPressed: validate,
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF01B399),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 1,
                    ),
                    child: const Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already signed up?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 2.5),
                    InkWell(
                      onTap: () {
                        navigate();
                      },
                      child: const Text(
                        'login',
                        style: TextStyle(
                          color: Color(0xff01B399),
                          fontSize: 12.0,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}