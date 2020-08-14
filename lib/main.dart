import 'package:edit_page/Components/text_field_container.dart';
import 'package:flutter/material.dart';

enum GenderValues { male, female, others }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Edit Page",
      theme: ThemeData(),
      home: EditProfile(),
    );
  }
}

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  double textFieldHeight = 0.13;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Edit Profile"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/krishna.png"),
                    radius: 30,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40, vertical: 2.0),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width * 0.7,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Change Profile Picture",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.2,
                    child: Text(
                      "NAME",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    textInputType: TextInputType.text,
                    hintText: "YOUR NAME",
                    height: textFieldHeight,
                    width: 0.7,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.2,
                    child: Text(
                      "WEBSITE",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    height: textFieldHeight,
                    width: 0.7,
                    textInputType: TextInputType.url,
                    hintText: "WEBSITE",
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.2,
                    child: Text(
                      "BIO",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    height: 0.35,
                    width: 0.7,
                    textInputType: TextInputType.multiline,
                    hintText: "BIO",
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.2,
                    child: Text(
                      "EMAIL",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    height: textFieldHeight,
                    width: 0.7,
                    textInputType: TextInputType.emailAddress,
                    hintText: "EMAIL",
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.2,
                    child: Text(
                      "PHONE NUMBER",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    height: textFieldHeight,
                    width: 0.7,
                    textInputType: TextInputType.phone,
                    hintText: "PHONE NUMBER",
                  )
                ],
              ),
              GenderOption(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 13),
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(),
                  color: Colors.grey,
                ),
                child: FlatButton(
                  onPressed: () {
                    print("Button Clicked");
                  },
                  child: Text(
                    "Save Changes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
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

class GenderOption extends StatefulWidget {
  @override
  _GenderOptionState createState() => _GenderOptionState();
}

class _GenderOptionState extends State<GenderOption> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = 0.7;
    double height = 0.13;
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Text(
              "GENDER",
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            width: 2.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2.0),
            margin: EdgeInsets.symmetric(vertical: 10),
            //width: size.width * 2,
            height: size.width * height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(29),
              color: Colors.white,
            ),
            //color: Colors.white,
            child: Row(
              children: <Widget>[
                Radio(
                  value: GenderValues.male,
                  groupValue: GenderValues.male,
                  onChanged: null,
                ),
                Text(
                  "Male",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.amber,
                  ),
                ),
                Radio(
                  value: GenderValues.female,
                  groupValue: GenderValues.male,
                  onChanged: null,
                ),
                Text(
                  "Female",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.amber,
                  ),
                ),
                Radio(
                  value: GenderValues.others,
                  groupValue: GenderValues.male,
                  onChanged: null,
                ),
                Text(
                  "Others",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
