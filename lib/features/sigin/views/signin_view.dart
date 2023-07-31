import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_profile_management/common/constants/ui_helpers.dart';
import 'package:patient_profile_management/common/widgets/k_button.dart';
import 'package:patient_profile_management/common/widgets/k_text_field.dart';

@RoutePage()
class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: const BoxDecoration(
                color: Color(
                  0xff203341,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign in to your account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Doesn't have account ? ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AutoRouter.of(context).replaceNamed('/home');
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          elHeightSpan,
          Container(
            padding: lPadding,
            child: Column(
              children: [
                KTextFormField(
                  label: "Email",
                  validator: (value) {
                    RegExp regex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                    if (!regex.hasMatch(value!)) return "Invalid email";
                    return null;
                  },
                ),
                mHeightSpan,
                KTextFormField(
                  label: "Password",
                  obscureText: true,
                  validator: (value) {
                    RegExp regex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    if (value!.isEmpty) {
                      return 'Please enter password';
                    } else {
                      if (!regex.hasMatch(value)) {
                        return 'Enter valid password';
                      } else {
                        return null;
                      }
                    }
                  },
                ),
                elHeightSpan,
                KButton(
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {
                    AutoRouter.of(context).replaceNamed('/home');
                  },
                )
              ],
            ),
          ),
          lHeightSpan,
        ],
      ),
    );
  }
}
