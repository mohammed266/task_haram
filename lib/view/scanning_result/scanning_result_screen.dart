import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/confirm_button.dart';
import '../../widgets/my_text.dart';

class ScanningResultScreen extends StatelessWidget {
  const ScanningResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: AppBar(
        backgroundColor: kBlackColor,
        leading: const SizedBox(),
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            const MyText(
              data: 'Scanning Result',
              color: kBlackColor,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              verticalMargin: 10,
            ),
            MyText(
              data:
                  'Proreader will Keep your last 10 days history \n to keep your all scared history please \n purched our pro package',
              fontSize: 12,
              color: kGrayColor.withOpacity(.5),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: double.infinity,
              height: getHeight(context, 2.1),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: kLightGrayColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.file_copy_outlined,color: kPrimaryColor,),
                      SizedBox(width: 25),
                      MyText(data: '7E0918FF',fontSize: 13,),
                    ],
                  ),
                ),
              ),
            ),
            ConfirmButton(
              title: 'Send',
              verticalMargin: 10,
              horizontalMargin: 20,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
