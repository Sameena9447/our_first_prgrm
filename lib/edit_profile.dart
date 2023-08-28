import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:our_first_prgrm/widgets/profile_widgets.dart';
import 'package:our_first_prgrm/widgets/textfiled_widget.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo7WfE6wFfdpeFph92LdEFJFnula0ecIObiQ&usqp=CAU",
            isEdit: true,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Full Name',
            text: "Jasmin",
            onChanged: (name) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Email',
            text: "jasmin@gmail.com",
            onChanged: (email) {},
          ),
          const SizedBox(height: 24),
          // TextFieldWidget(
          //   label: 'About',
          //   text: user.about,
          //   maxLines: 5,
          //   onChanged: (about) {},
          // ),
        ],
      ),
    );
  }
}
