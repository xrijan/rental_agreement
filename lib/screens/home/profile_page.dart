import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../constants/colors.dart';
import '../../constants/size.dart';
import '../../widgets/app_bar_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? image;

  Future pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage == null) {
      return null;
    }
    final imageTemp = File(pickedImage.path);
    setState(() {
      image = imageTemp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Profile',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                debugPrint('Image picked');
                pickImage();
              },
              child: Center(
                child: Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: image != null
                              ? Image.file(
                                  image!,
                                  fit: BoxFit.cover,
                                )
                              : const Image(
                                  image: AssetImage('assets/avatar.png'))),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: MyColors.kSecondaryTextColor,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text('Edit Profile'),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              cursorColor: MyColors.kSecondaryTextColor,
              decoration: InputDecoration(
                prefixIcon: const IconTheme(
                  data: IconThemeData(
                    color: Colors.black, // set color to a non-interactive color
                  ),
                  child: Icon(Icons.person),
                ),
                labelText: "First Name",
                labelStyle: const TextStyle(
                  color: Colors.black, // set label color to red
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.16),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.kSecondaryTextColor,
                  ),
                ),
              ),
              onSaved: (value) {},
              validator: (value) {
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: MyColors.kSecondaryTextColor,
              decoration: InputDecoration(
                prefixIcon: const IconTheme(
                  data: IconThemeData(
                    color: Colors.black, // set color to a non-interactive color
                  ),
                  child: Icon(Icons.person),
                ),
                labelText: "Last Name",
                labelStyle: const TextStyle(
                  color: Colors.black, // set label color to red
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.16),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.kSecondaryTextColor,
                  ),
                ),
              ),
              onSaved: (value) {},
              validator: (value) {
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: MyColors.kSecondaryTextColor,
              decoration: InputDecoration(
                prefixIcon: const IconTheme(
                  data: IconThemeData(
                    color: Colors.black, // set color to a non-interactive color
                  ),
                  child: Icon(Icons.phone),
                ),
                labelText: "Primary Phone",
                labelStyle: const TextStyle(
                  color: Colors.black, // set label color to red
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.16),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.kSecondaryTextColor,
                  ),
                ),
              ),
              onSaved: (value) {},
              validator: (value) {
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: MyColors.kSecondaryTextColor,
              decoration: InputDecoration(
                prefixIcon: const IconTheme(
                  data: IconThemeData(
                    color: Colors.black, // set color to a non-interactive color
                  ),
                  child: Icon(Icons.phone),
                ),
                labelText: "Secondary Phone",
                labelStyle: const TextStyle(
                  color: Colors.black, // set label color to red
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.16),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.kSecondaryTextColor,
                  ),
                ),
              ),
              onSaved: (value) {},
              validator: (value) {
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: MyColors.kSecondaryTextColor,
              decoration: InputDecoration(
                prefixIcon: const IconTheme(
                  data: IconThemeData(
                    color: Colors.black, // set color to a non-interactive color
                  ),
                  child: Icon(Icons.email),
                ),
                labelText: "Primary Email",
                labelStyle: const TextStyle(
                  color: Colors.black, // set label color to red
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.16),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.kSecondaryTextColor,
                  ),
                ),
              ),
              onSaved: (value) {},
              validator: (value) {
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: MyColors.kSecondaryTextColor,
              decoration: InputDecoration(
                prefixIcon: const IconTheme(
                  data: IconThemeData(
                    color: Colors.black, // set color to a non-interactive color
                  ),
                  child: Icon(Icons.email),
                ),
                labelText: "Secondary Email",
                labelStyle: const TextStyle(
                  color: Colors.black, // set label color to red
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.16),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.kSecondaryTextColor,
                  ),
                ),
              ),
              onSaved: (value) {},
              validator: (value) {
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 50,
                width: MySize.kScreenWidth / 2,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors
                          .kSecondaryTextColor, // background (button) color
                      foregroundColor: Colors.white, // foreground (text) color
                    ),
                    onPressed: () {},
                    child: Text('Save',
                        style: TextStyle(fontSize: MySize.kHeading2))))
          ],
        ),
      ),
    );
  }
}
