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

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    UserModelProvider().getUserData().then((user) {
      setState(() {
        userData = user;
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile" ,
          style: TextStyle(
            color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ), ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
        body : loading ? Center(child: CircularProgressIndicator()) :
          userData != null ?
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Center(
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/images/profileImge.png")),
                        //Icon(Icons.person , size: 200, color: Colors.black12,),
                        SizedBox(height: 50,),
                        ListTile(
                          title: Text(userData!.name!,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Column (
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30,),
                                Text ('Email : ${userData!.email!}', style: TextStyle(fontSize: 18),),
                                SizedBox(height: 10,),
                                Text ('Number : ${userData!.phone!}', style: TextStyle(fontSize: 18),),
                                SizedBox(height: 10,),
                                Text ('Age : ${userData!.age!}', style: TextStyle(fontSize: 18),),
                                SizedBox(height: 10,),
                                Text ('Gender : ${userData!.gender!}', style: TextStyle(fontSize: 18),),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
              ]
              ),

            )
          ): Center(
                 child:  Text("Failed to load data"),
      ),

    );
  }
}
