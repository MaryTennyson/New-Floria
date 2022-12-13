import 'package:floria/app/common/ui/widgets/textformcustom.dart';
import 'package:floria/app/features/common_feature/ui/login_screen/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final LoginViewModel _viewModel;
  @override
  void initState() {
    _viewModel = LoginViewModel(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 50.w,
                  ),
                  Container(
                    width: 190.w,
                    height: 95.w,
                    child: Image.asset(
                      'assets/floria.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 40.w,
                  ),
                  Container(
                    width: 335.w,
                    height: 500.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.w),
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30.w,
                          ),
                          Text(
                            "Floria'ya HOŞGELDİNİZ!",
                            style: TextStyle(fontSize: 20.w, color: Theme.of(context).colorScheme.primary),
                          ),
                          SizedBox(
                            height: 40.w,
                          ),
                          CustomTextForm(
                            labeltext: 'Mail Adresi',
                            textinputtype: TextInputType.emailAddress,
                            textinputtaction: TextInputAction.next,
                            controller: _viewModel.mailController,
                          ),
                          CustomTextForm(
                            labeltext: 'Şifreniz',
                            textinputtype: TextInputType.visiblePassword,
                            textinputtaction: TextInputAction.done,
                            controller: _viewModel.passwordController,
                          ),
                          SizedBox(
                            height: 20.w,
                          ),
                          Text('Giriş',
                              style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Theme.of(context).colorScheme.primary,
                              )),
                          SizedBox(
                            height: 20.w,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Henüz üye değil misiniz?',
                                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                                ),
                                InkWell(
                                  child: Text('HEMEN ÜYE OLUN',
                                      style: TextStyle(
                                        color: Theme.of(context).colorScheme.primary,
                                      )),
                                  onTap: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          ),
                        ],
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
