import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/modal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool lan1 = false;
  bool lan2 = false;
  bool lan3 = false;
  bool lan4 = false;
  bool lan5 = false;
  bool lan6 = false;
  String gender = "MALE";
  var uri;
  var selected;
  String city = "SURAT";
  TextEditingController NAME = TextEditingController();
  TextEditingController ADDRESS = TextEditingController();
  TextEditingController PHONE = TextEditingController();
  TextEditingController EMAIL = TextEditingController();
  TextEditingController SKILL = TextEditingController();
  TextEditingController QUALIFICATIN = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade800,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'PDF');
                },
                child: Icon(
                  Icons.download_sharp,
                ),
              ),
            ),
          ],
          title: Text(
            "RESUME BUILDER",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 35,
                  width: double.infinity,
                  //color: Colors.red,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Required Info",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              ExpansionTile(
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Personal Info"),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "NAME",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: NAME,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "Your Name",
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "ADDRESS",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: ADDRESS,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.contact_mail, color: Colors.black),
                title: Text("Professional Info"),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "PHONE",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: PHONE,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        label: Text("9568533200"),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: EMAIL,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        label: Text("myresume@gmail.com"),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.add_chart, color: Colors.black),
                title: Text("Skill"),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "SKILL",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: SKILL,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: ("ABOUT"),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.eco_outlined, color: Colors.black),
                title: Text("Qualification"),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: QUALIFICATIN,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: ("QUALIFICATION"),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.language, color: Colors.black),
                title: Text("Languages"),
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: lan4,
                          onChanged: (value) {
                            setState(() {
                              lan4 = value!;
                            });
                          }),
                      Text(
                        "GUJRATI",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Checkbox(
                          value: lan5,
                          onChanged: (value) {
                            setState(() {
                              lan5 = value!;
                            });
                          }),
                      Text(
                        "HINDI",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Checkbox(
                          value: lan6,
                          onChanged: (value) {
                            setState(() {
                              lan6 = value!;
                            });
                          }),
                      Text(
                        "ENGLISH",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.push_pin_outlined, color: Colors.black),
                title: Text("Gender"),
                children: [
                  Row(
                    children: [
                      Radio(
                          value: "MALE",
                          groupValue: selected,
                          onChanged: (value) {
                            setState(() {
                              selected = value!;
                            });
                          }),
                      Text(
                        "MALE",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Radio(
                          value: "FEMALE",
                          groupValue: selected,
                          onChanged: (value) {
                            setState(() {
                              selected = value!;
                            });
                          }),
                      Text(
                        "FEMALE",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Radio(
                          value: "OTHERS",
                          groupValue: selected,
                          onChanged: (value) {
                            setState(() {
                              selected = value!;
                            });
                          }),
                      Text(
                        "OTHERS",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.location_city, color: Colors.black),
                title: Text("City"),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: DropdownButton(
                      value: city,
                      onChanged: (value) {
                        setState(() {
                          city = value!;
                        });
                      },
                      isExpanded: true,
                      items: [
                        DropdownMenuItem(
                          child: Text("SURAT"),
                          value: "SURAT",
                        ),
                        DropdownMenuItem(
                          child: Text("AHMADABAD"),
                          value: "AHMADABAD",
                        ),
                        DropdownMenuItem(
                          child: Text("RAJKOT"),
                          value: "RAJKOT",
                        ),
                        DropdownMenuItem(
                          child: Text("JUNAGADH"),
                          value: "JUNAGADH",
                        ),
                        DropdownMenuItem(
                          child: Text("VADODARA"),
                          value: "VADODARA",
                        ),
                        DropdownMenuItem(
                          child: Text("GANDHINAGAR"),
                          value: "GANDHINAGAR",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Date Of Birth"),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        label: Text("DD"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        label: Text("MM"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        label: Text("YYYY"),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.celebration, color: Colors.black),
                title: Text("Write About Yourself"),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "ABOUT",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: ("ABOUT"),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.photo_camera_outlined,
                  color: Colors.black,
                ),
                title: Text("Photo"),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () async {
                          ImagePicker imagepicker = ImagePicker();
                          XFile? xfile = await imagepicker.pickImage(
                              source: ImageSource.camera);
                          setState(() {
                            uri = xfile!.path;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Colors.blueGrey.shade800,
                                Colors.blueGrey.shade600,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "CAMERA",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          ImagePicker imagepicker = ImagePicker();
                          XFile? xfile = await imagepicker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            uri = xfile!.path;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Colors.blueGrey.shade800,
                                Colors.blueGrey.shade600,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "PHOTOS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black12,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 35,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Additional Info",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              ExpansionTile(
                leading: Icon(Icons.auto_graph, color: Colors.black),
                title: Text("Something about Your Last Company"),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "LAST COMPANY NAME",
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.book_outlined, color: Colors.black),
                title: Text("Education"),
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: lan1,
                          onChanged: (value) {
                            setState(() {
                              lan1 = value!;
                            });
                          }),
                      Text(
                        "10th",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Checkbox(
                          value: lan2,
                          onChanged: (value) {
                            setState(() {
                              lan2 = value!;
                            });
                          }),
                      Text(
                        "12th",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Checkbox(
                          value: lan3,
                          onChanged: (value) {
                            setState(() {
                              lan3 = value!;
                            });
                          }),
                      Text(
                        "GRADUATE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.copy_sharp, color: Colors.black),
                title: Text("Hobby"),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        label: Text("HOBBY"),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.link, color: Colors.black),
                title: Text("Intrest"),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        label: Text("INTREST"),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black12,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 35,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Icon(Icons.info),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
