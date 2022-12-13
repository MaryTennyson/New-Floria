import 'package:floria/app/common/ui/themes/theme_manager.dart';
import 'package:floria/app/common/ui/widgets/textformcustom.dart';
import 'package:floria/app/features/common_feature/ui/login_screen/login_view.dart';

import 'package:floria/app/features/common_feature/ui/sign_up_screen/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late final SignUpViewModel _viewModel;

  @override
  void initState() {
    _viewModel = SignUpViewModel(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.secondaryContainer,
                ],
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 30, right: 30),
                  width: 190,
                  height: 95,
                  child: Image.asset('assets/floria.png', fit: BoxFit.fill),
                ),
                Container(
                  width: 300.w,
                  height: 430.w,
                  margin: EdgeInsets.symmetric(vertical: 50),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white70),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Column(
                      children: [
                        Column(children: [
                          CustomTextForm(
                            labeltext: 'Ad',
                            textinputtype: TextInputType.text,
                            textinputtaction: TextInputAction.next,
                            controller: _viewModel.nameController,
                          ),
                          CustomTextForm(
                            labeltext: 'Soyad',
                            textinputtype: TextInputType.text,
                            textinputtaction: TextInputAction.done,
                            controller: _viewModel.surnameController,
                          ),
                          CustomTextForm(
                            labeltext: 'Mail Adresi',
                            textinputtype: TextInputType.text,
                            textinputtaction: TextInputAction.done,
                            controller: _viewModel.mailController,
                          ),
                          CustomTextForm(
                            labeltext: 'Şifre',
                            textinputtype: TextInputType.text,
                            textinputtaction: TextInputAction.done,
                            controller: _viewModel.passwordController,
                          )
                        ]),
                        Container(
                            margin: EdgeInsets.only(top: 10.w, bottom: 25.w),
                            child: InkWell(
                              child: Text('Kaydol', style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 22)),
                              onTap: () async {},
                            )),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Üye misiniz?  ', style: TextStyle(color: Theme.of(context).colorScheme.primary)),
                              InkWell(
                                //  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LoginView()),
                                  );
                                },

                                child: Text('GİRİŞ YAPIN', style: TextStyle(color: Theme.of(context).colorScheme.primary)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
