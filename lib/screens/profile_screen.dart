import 'package:doctor_app/widgets/UserModel.dart';
import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {

  UserModel? userData;
  bool loading = true ;

  getUser() async {
    userData = await UserProvider().getUserData();
  }
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    getUser();
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading ? Center(child: CircularProgressIndicator()) :
      Column(
        children: [
          Text (userData!.name!),
          Text (userData!.email!),
          Text (userData!.phone!),
          Text (userData!.age!),
          Text (userData!.gender!),
        ],
      ),
    );
  }
}