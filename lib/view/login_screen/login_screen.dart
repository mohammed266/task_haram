import 'package:flutter/material.dart';
import 'package:task_haram/constants.dart';

import '../../widgets/confirm_button.dart';
import '../../widgets/input_form_fild.dart';
import '../../widgets/my_text.dart';
import '../scan_qr_code/scan_qr_code_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset(
                      getAsset('image2'),
                      height: getHeight(context, 2.9),
                      width: getWidth(context, 1),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      getAsset('image1'),
                      height: getHeight(context, 3.5),
                      width: getWidth(context, 2),
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(context, 3.5),
                    child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: MyText(
                        data: 'Login',
                        color: kBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 200,
                  child: Form(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        InputFormField(
                          labelText: 'Enter your phone',
                          borderColor: kGrayColor.withOpacity(.5),
                          keyboardType: TextInputType.phone,
                          secure: false,
                          validator: (_) {},
                        ),
                        InputFormField(
                          verticalMargin: 15,
                          labelText: 'Password',
                          borderColor: kGrayColor.withOpacity(.5),
                          keyboardType: TextInputType.visiblePassword,
                          secure: true,
                          validator: (_) {},
                        ),
                        const Align(
                          alignment: Alignment.topRight,
                          child: MyText(
                            data: 'Forgot Password?',
                            color: kDarkGrayColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ConfirmButton(
                title: 'Login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ScanQrCodeScreen(),
                    ),
                  );
                },
                horizontalMargin: 45,
              ),
            ],
          )),
    );
  }
}
