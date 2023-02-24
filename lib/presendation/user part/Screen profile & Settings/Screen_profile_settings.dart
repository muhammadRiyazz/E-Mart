import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/user%20part/Screen%20edit%20profile/screen_edit_profile.dart';
import 'package:emart/presendation/user%20part/widgets/alert_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

class ScreenProfileSettings extends StatelessWidget {
  const ScreenProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: cmainwhite,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: SimpleShadow(
              opacity: 0.3,
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    color: cwhite, borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'assets/profile-icon-png-899 (1).png',
                  fit: BoxFit.fill,
                ),
              ),
            )),
            const Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                  child: Text(
                'Muhammad Riyaz',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              )),
            ),
            const Center(
                child: Padding(
              padding: EdgeInsets.all(6.0),
              child: Text(
                '+91 7034612195',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1.1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ScreenEditProfile();
                  },
                ));
              },
              trailing: Icon(Icons.navigate_next_outlined),
              title: Text('Edit Profile'),
              leading: Icon(Icons.person_2_outlined),
            ),
            const ListTile(
              trailing: Icon(Icons.navigate_next_outlined),
              title: Text('Address'),
              leading: Icon(Icons.location_on_outlined),
            ),
            ListTile(
              trailing: Switch(value: false, onChanged: (boolvalue) {}),
              title: Text('Notification'),
              leading: Icon(Icons.notifications_active_outlined),
            ),
            ListTile(
              trailing: Switch(value: false, onChanged: (boolvalue) {}),
              title: Text('Dark Mood'),
              leading: Icon(Icons.remove_red_eye_outlined),
            ),
            const ListTile(
              trailing: Icon(Icons.navigate_next_outlined),
              title: Text('Privecy And Policy'),
              leading: Icon(Icons.lock_outlined),
            ),
            const ListTile(
              trailing: Icon(Icons.navigate_next_outlined),
              title: Text('Terms and Counditions'),
              leading: Icon(Icons.privacy_tip_outlined),
            ),
            Spacer(),
            ListTile(
              onTap: () {
                alertbox(context);
              },
              title: Text(
                'Log Out',
                style: TextStyle(color: Colors.red),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
