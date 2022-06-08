import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/age_provider.dart';
// import 'package:provider/provider.dart';

class AgeEligibilityForm extends StatelessWidget {
  final ageController = TextEditingController();
  AgeEligibilityForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AgeEligibilityProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Age Eligibility'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 120, right: 120),
            child: Consumer<AgeEligibilityProvider>(
              builder: (context, provideValue, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: (provideValue.isEligible == Null)
                            ? Colors.amberAccent
                            : (provideValue.isEligible)
                                ? Colors.green
                                : Colors.red,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    SizedBox(height: 20),
                    //textField
                    TextField(
                      controller: ageController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Age',
                      ),
                      onChanged: (value) {
                        final int age = int.parse(ageController.text.trim());
                        provideValue.checkEligibility(age);
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),

                    Text(provideValue.eligibilityMessage)
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
