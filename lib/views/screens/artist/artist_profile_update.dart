import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/flat_Button.dart';
import 'package:flutter/material.dart';

class ArtistProfileUpdate extends StatefulWidget {
  @override
  _ArtistProfileUpdateState createState() => _ArtistProfileUpdateState();
}

class _ArtistProfileUpdateState extends State<ArtistProfileUpdate> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Ahsan "), //TODO: USER NAME
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      radius: 80.0,
                      backgroundImage:
                          AssetImage("images/ava.png"), //TODO: Profile Pic
                    ),
                  ),
                  Positioned(
                    top: 90.0,
                    left: 220.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                        size: 35.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Center(
                child: Text(
                  "AHSAN", //TODO: User Name
                  style: kTextStyleHeader,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Personal Information", style: CardTitleTxtStyle),
              SizedBox(
                height: 20.0,
              ),
              Text("Name", style: kLoginText),
              SizedBox(height: 8.0),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 330.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),

                  //***** ENTER Name TEXT FIELD
                  //TODO:ENTER   name
                  child: TextFormField(
                    decoration: kTxtField.copyWith(hintText: 'Name'),
                  )),
              SizedBox(height: 15.0),
              Text("User Name", style: kLoginText),
              SizedBox(height: 8.0),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 330.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),

                  //***** ENTER User Name TEXT FIELD
                  //TODO:User Name  EMAIL
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: kTxtField.copyWith(hintText: 'User Name '),
                  )),
              SizedBox(height: 15.0),
              Text("City", style: kLoginText),
              SizedBox(height: 8.0),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 330.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),

                  //***** ENTER City TEXT FIELD
                  //TODO:City
                  child: TextFormField(
                    decoration:
                        kTxtField.copyWith(hintText: 'Islamabad,Pakistan'),
                  )),
              SizedBox(height: 15.0),
              Text("Bio", style: kLoginText),
              SizedBox(height: 8.0),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 330.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),

                  //***** ENTER BioUser Name TEXT FIELD
                  //TODO:Bio
                  child: TextFormField(
                    decoration: kTxtField.copyWith(hintText: 'Bio '),
                  )),
              SizedBox(height: 15.0),
              Row(
                children: [
                  Text("Gender", style: kLoginText),
                  SizedBox(
                    width: 150.0,
                  ),
                  Text("DOB", style: kLoginText),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    width: 150.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      boxShadow: kElevationToShadow[1],
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    //TODO: SELECT Gender
                    child: DropdownButton(
                        underline: SizedBox(),
                        isExpanded: true,
                        //isDense: true,
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("Male"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Female"),
                            value: 2,
                          ),
                          DropdownMenuItem(child: Text("Ohter"), value: 3),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  SizedBox(height: 8.0),
                  Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      width: 150.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[1],
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),

                      //***** ENTER Name TEXT FIELD
                      //TODO:ENTER  DOB
                      child: TextFormField(
                        decoration: kTxtField.copyWith(hintText: 'DOB'),
                      )),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Account & Privacy",
                style: CardTitleTxtStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("Password", style: kLoginText),
              SizedBox(height: 8.0),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 330.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),

                  //***** ENTER City TEXT FIELD
                  //TODO:Password
                  child: TextFormField(
                    decoration:
                        kTxtField.copyWith(hintText: 'Tap to change Password'),
                  )),
              SizedBox(
                height: 15.0,
              ),
              FilterFlatButton(
                onpressed: () {},
                ButtonTitle: "Copy Profile Link",
                TxtColor: Colors.black38,
              )
            ],
          ),
        ),
      ),
    );
  }
}
