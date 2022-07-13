import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine/view/AnimationPage.dart';
import 'package:machine/widgets/datas.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () {
                // Get.to();
              },
              child: Card(
                  child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    images[index],
                  ),
                ),
                title: Text(
                  name[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  mail[index],
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              )),
            );
          },
        ),
      ),
    );
  }
}
