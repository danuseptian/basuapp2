import 'package:basuapp/module/main_navigation/view/main_navigation_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utility/theme/constant.dart';
import '../controller/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7)),
              image: DecorationImage(
                image: AssetImage(
                  'asset/image/splashbg.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset(
                    'asset/icon/basu.png',
                    height: 150,
                  ),
                ),
                const SizedBox(height: 30),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Username',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        TextFormField(
                          controller: controller.userC,
                          onChanged: (value) {
                            controller.update();
                          },
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: primaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(defaultRadiusCircular))),
                            prefixIcon: const Icon(Icons.person),
                            prefixIconColor: primaryColor,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                            ),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(defaultRadiusCircular))),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GetBuilder<LoginController>(builder: (_) {
                          return TextFormField(
                            controller: controller.passwordC,
                            onChanged: (value) {
                              controller.update();
                            },
                            obscureText: controller.isObscure ? false : true,
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: primaryColor,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(defaultRadiusCircular))),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              prefixIcon: const Icon(Icons.lock),
                              prefixIconColor: primaryColor,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  controller.isObscure = !controller.isObscure;
                                  controller.update();
                                },
                                child: controller.isObscure
                                    ? const Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: primaryColor,
                                      )
                                    : Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.grey[500],
                                      ),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                              ),
                              border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(defaultRadiusCircular))),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GetBuilder<LoginController>(builder: (_) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          Get.offAll(() => const MainNavigationView(),
                              duration: Duration.zero);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius:
                                BorderRadius.circular(defaultRadiusCircular),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'asset/icon/ap2li-logo.png',
                      height: 60,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'asset/icon/ap2li-text.png',
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
