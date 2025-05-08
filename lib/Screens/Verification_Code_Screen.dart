import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



// ignore: must_be_immutable
class OtpScreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var phonefromHome;
  OtpScreen({super.key,this.phonefromHome});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;

    
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.1),
              Text(
                'Enter code',
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.015),
              Text(
                "We've sent the code via SMS to ${phonefromHome.toString()}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width * 0.04,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: height * 0.05),
              PinCodeTextField(
                appContext: context,
                length: 4,
                onChanged: (value) {},
                keyboardType: TextInputType.number,
                textStyle: TextStyle(fontSize: width * 0.065),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: width * 0.15,
                  fieldWidth: width * 0.15,
                  activeColor: Colors.black,
                  selectedColor: Colors.grey,
                  inactiveColor: Colors.grey[400]!,
                ),
              ),
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't get the code? "),
                  GestureDetector(
                    onTap: () {
                      // handle resend
                    },
                    child: Text(
                      'Resent code',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
