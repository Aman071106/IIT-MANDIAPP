import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../widgets/form_field_widget.dart';
import '../../../../widgets/screen_width_button.dart';

class LostFoundAddItemPage extends StatefulWidget {
  const LostFoundAddItemPage({super.key});

  @override
  State<LostFoundAddItemPage> createState() => _LostFoundAddItemPageState();
}

class _LostFoundAddItemPageState extends State<LostFoundAddItemPage> {
  bool imageSelected = false;

  //
  final TextEditingController nameController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  String? errorNameValue;
  final GlobalKey<FormState> nameKey = GlobalKey();

  //
  final TextEditingController contactController = TextEditingController();
  final FocusNode contactFocusNode = FocusNode();
  String? errorContactValue;
  final GlobalKey<FormState> contactKey = GlobalKey();

  //
  final TextEditingController dateController = TextEditingController();
  final FocusNode dateFocusNode = FocusNode();
  String? errorDateValue;
  final GlobalKey<FormState> dateKey = GlobalKey();

  //
  final TextEditingController descriptionController = TextEditingController();
  final FocusNode descriptionFocusNode = FocusNode();
  String? errorDescriptionValue;
  final GlobalKey<FormState> descriptionKey = GlobalKey();

  File? image;
  final ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    try {
      final XFile? pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        // maxWidth: 1000,
        // maxHeight: 1000,
        // imageQuality: 85,
      );

      if (pickedFile != null) {
        setState(() {
          image = File(pickedFile.path);
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Error uploading image.")));
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Add Lost Item",
            style: Theme.of(context).textTheme.bodyMedium),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                SingleChildScrollView(
                  reverse: true,
                  // physics: const ClampingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // SizedBox(
                      //   width: width * 0.85,
                      //   child: Text("Lost Item Image",
                      //       // textAlign: TextAlign.left,
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .bodyMedium!
                      //           .copyWith(fontSize: 18)),
                      // ),
                      // SizedBox(height: height * 0.01),
                      GestureDetector(
                        onTap: () async {
                          await pickImage();
                        },
                        child: Container(
                          width: width - 40,
                          height: height * 0.3,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            border: Border.all(
                                color: Theme.of(context).colorScheme.scrim,
                                width: 1.5),
                          ),
                          child: Center(
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              child: image != null
                                  ? Image.file(
                                      image!,
                                      fit: BoxFit.cover,
                                      alignment: Alignment.center,
                                      width: width - 40,
                                      height: height * 0.3,
                                    )
                                  : Icon(
                                      Icons.image_rounded,
                                      color:
                                          Theme.of(context).colorScheme.scrim,
                                      size: aspectRatio * 200,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      FormFieldWidget(
                        focusNode: nameFocusNode,
                        fieldKey: nameKey,
                        controller: nameController,
                        obscureText: false,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Name is required.';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        errorText: errorNameValue,
                        prefixIcon: Icons.person,
                        showSuffixIcon: false,
                        hintText: "Enter your Name",
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(height: height * 0.03),
                      FormFieldWidget(
                        focusNode: contactFocusNode,
                        fieldKey: contactKey,
                        controller: contactController,
                        obscureText: false,
                        validator: (value) {
                          if (value!.length != 10) {
                            return "Enter a valid Contact Number.";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        errorText: errorContactValue,
                        prefixIcon: Icons.location_searching_rounded,
                        showSuffixIcon: false,
                        hintText: "Enter your Contact No.",
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(height: height * 0.03),
                      FormFieldWidget(
                        focusNode: descriptionFocusNode,
                        fieldKey: descriptionKey,
                        controller: descriptionController,
                        obscureText: false,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Description is required.';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        errorText: errorDescriptionValue,
                        prefixIcon: Icons.image_aspect_ratio,
                        showSuffixIcon: false,
                        hintText: "Describe Lost Item",
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(height: height * 0.03),
                      FormFieldWidget(
                        focusNode: dateFocusNode,
                        fieldKey: dateKey,
                        controller: dateController,
                        obscureText: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Lost Date is required";
                          }
                          return null;
                        },
                        onTap: () async {
                          DateTime date = DateTime.now();
                          FocusScope.of(context).requestFocus(FocusNode());

                          date = (await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950, 1, 1),
                            lastDate: DateTime.now(),
                          ))!;

                          dateController.text =
                              date.toString().substring(0, 10);
                        },
                        keyboardType: TextInputType.emailAddress,
                        errorText: errorDateValue,
                        prefixIcon: Icons.date_range_rounded,
                        showSuffixIcon: false,
                        hintText: "Enter Date of Lost",
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(height: height * 0.1),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 1,
                    child: ScreenWidthButton(
                      text: "Add Item",
                      buttonFunc: () {
                        final bool isNameValid =
                            nameKey.currentState!.validate();
                        final bool isContactValid =
                            contactKey.currentState!.validate();
                        final bool isDescriptionValid =
                            descriptionKey.currentState!.validate();
                        final bool isDateValid =
                            dateKey.currentState!.validate();

                        if (isNameValid &&
                            isDateValid &&
                            isContactValid &&
                            isDescriptionValid) {
                          // BlocProvider.of<AuthenticationBloc>(context).add(
                          //     SignInEvent(
                          //         email: emailTextEditingController.text,
                          //         password: passwordTextEditingController.text));
                        }
                      },
                      // isLoading: userLoading,
                    ))
              ],
            ),
          )),
    );
  }
}
