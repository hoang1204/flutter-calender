import 'package:flutter/material.dart';
import 'package:namdz/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100) ,
                    child:  Image.asset('assets/images/profile.jpg'),
                  ),
                ),
                const SizedBox(height: 10),
                Text('Dang Hoai Nam',style: subHeadingStyle),
                Text('danghoainam@ictu.edu.vn',style: subHeadingStyle),
                 SizedBox(height: 10,),
                 SizedBox(width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent, side: BorderSide.none,shape: StadiumBorder()),
                 child: Text('Chỉnh sửa',style: TextStyle(color: Colors.black),
                 )
                 ),
                 ),
               
              ],
            ),
          ),
        ),
    );
  }
}
