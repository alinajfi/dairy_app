import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class UploadProduct extends StatelessWidget {
  UploadProduct({super.key});
  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: MediaQuery.of(context).viewInsets.bottom > 0
                ? const BouncingScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            child: SizedBox(
              width: screenWidth,
              height: screenHeight * 0.95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableSizedBox(height: screenHeight * 0.050),
                  Container(
                    height: screenHeight * 0.15,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      color: AppColors.lightPurple,
                    ),
                    child: const Center(
                      child: CustomText(
                        text: 'Selected Item',
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        size: 25,
                      ),
                    ),
                  ),
                  ReusableSizedBox(height: screenHeight * 0.010),
                  const CustomText(
                    text: 'How much do you want to charge',
                    color: AppColors.black,
                    size: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ReusableSizedBox(height: screenHeight * 0.030),
                  const CustomText(
                    text: 'Enter product Price In Rupees',
                    color: AppColors.black,
                    size: 19,
                    fontWeight: FontWeight.bold,
                  ),
                  ReusableSizedBox(height: screenHeight * 0.010),
                  const CustomText(
                    text:
                        "It's important to disclose your product price in order to boost your product marketing and cunsumers attracts more",
                    color: AppColors.black,
                    size: 15,
                  ),
                  ReusableSizedBox(height: screenHeight * 0.010),
                  Center(
                      child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter product price',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                      fillColor: AppColors.lightPurple,
                      filled: true,
                    ),
                    controller: priceController,
                  )),
                  ReusableSizedBox(height: screenHeight * 0.030),
                  const CustomText(
                    text: "Upload Picture's here",
                    color: AppColors.black,
                    size: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ReusableSizedBox(height: screenHeight * 0.050),
                  Flexible(
                    child: Center(
                      child: AppButton(
                        icon: Icons.file_upload_outlined,
                        text: "Upload Image(s)",
                        backgroundColor: AppColors.purple,
                        textColor: Colors.white,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Upload Successfull"),
                            duration: Duration(seconds: 3),
                          ));
                        },
                        height: screenHeight * 0.08,
                        width: screenWidth * 0.85,
                        borderRadius: 18,
                      ),
                    ),
                  ),
                  ReusableSizedBox(height: screenHeight * 0.030),
                  Flexible(
                    child: Center(
                      child: AppButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        text: 'Submit',
                        backgroundColor: AppColors.purple,
                        textColor: Colors.white,
                        borderRadius: 18,
                        height: screenHeight * 0.08,
                        width: screenWidth * 0.55,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
