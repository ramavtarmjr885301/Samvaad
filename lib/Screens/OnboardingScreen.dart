import 'package:flutter/material.dart';
import 'package:samvaad/Screens/Phone_Verification.dart';



class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double verticalPadding = size.height * 0.02;
    final double horizontalPadding = size.width * 0.08;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding,
            horizontal: horizontalPadding,
          ),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Text(
                "SAMVAAD",
                style: TextStyle(
                  fontSize: size.width * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                height: size.height * 0.3, 
                
                child: Image.asset(
                  'assets/images/illustration.png', // Add your asset
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "Let's talk with your friends and family\nwherever and whenever",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: size.width * 0.04,
                  color: Colors.grey[700],
                ),
              ),
              const Spacer(flex: 3),
              SizedBox(
                width: double.infinity,
                height: size.height * 0.065,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Navigate to the next screen
                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) =>
                                                  PhoneVerification(),
                                        ),
                                      );

                  },
                  child: Text(
                    "Continue with phone",
                    style: TextStyle(fontSize: size.width * 0.045, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
