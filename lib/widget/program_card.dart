import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgramCard extends StatelessWidget {
  String? path;
  IconData? icon;
  String? title;
  ProgramCard({Key? key, this.path, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Get.toNamed(path!),
        child: Container(
          padding: const EdgeInsets.all(30),
          width: 130,
          height: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon!),
              const SizedBox(height: 8),
              Text(
                title!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
