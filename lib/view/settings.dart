import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
   bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('SETTINGS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding:  EdgeInsets.all(2.w),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), bottomRight: Radius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_outlined,
                              size: 20.sp,
                              color: Colors.black,
                            ),
                            label: Text(
                              'About me',
                              style:
                                  TextStyle(fontSize: 14.sp, color: Colors.black),
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                                onPressed: () {},
                                icon:  Icon(
                                  Icons.notifications_outlined,
                                  size: 20.sp,
                                  color: Colors.black,
                                ),
                                label:  Text(
                                  'Notification',
                                  style: TextStyle(
                                      fontSize: 14.sp, color: Colors.black),
                                )),
                            Switch.adaptive(
                                inactiveThumbColor:
                                    Colors.grey,
                                activeColor: Colors.black,
                                value: isSwitch,
                                onChanged: (bool value) {
                                  setState(() {
                                    isSwitch = value;
                                 
                                  });
                              
                                })
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              size: 20.sp,
                              color: Colors.black,
                            ),
                            label: Text(
                              'Share',
                              style:
                                  TextStyle(fontSize: 14.sp, color: Colors.black),
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.report_problem,
                              size: 20.sp,
                              color: Colors.black,
                            ),
                            label: Text(
                              'License',
                              style:
                                  TextStyle(fontSize: 14.sp, color: Colors.black),
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.security,
                              size: 20.sp,
                              color: Colors.black,
                            ),
                            label: Text(
                              'PrivacyPolicy',
                              style:
                                  TextStyle(fontSize: 14.sp, color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
