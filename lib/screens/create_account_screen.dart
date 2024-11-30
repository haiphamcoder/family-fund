import 'package:family_fund/components/custom_button.dart';
import 'package:family_fund/components/labeled_textbox.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF5087DB), // Màu nền
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          toolbarHeight: MediaQuery.of(context).size.height * 0.2,
          elevation: 0,
          title: const Text(
            'Tạo tài khoản',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: Color(0xFFF1FFF3),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xFFF1FFF3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const LabeledTextbox(
                    labelText: 'Họ và tên', 
                    hintText: 'Nguyễn Văn A'
                  ),
                  const SizedBox(height: 15),
                  const LabeledTextbox(
                    labelText: 'Email', 
                    hintText: 'example@example.com'
                  ),
                  const SizedBox(height: 15),
                  const LabeledTextbox(
                    labelText: 'Số điện thoại', 
                    hintText: '+84 123 456 789',
                    inputType: TextInputType.phone,
                  ),
                  const SizedBox(height: 15),
                  const LabeledTextbox(
                    labelText: 'Ngày sinh', 
                    hintText: 'dd/MM/yyyy',
                    inputType: TextInputType.datetime,
                  ),
                  const SizedBox(height: 15),
                  const LabeledTextbox(
                    labelText: 'Mật khẩu', 
                    hintText: '********',
                    isPassword: true
                  ),
                  const SizedBox(height: 15),
                  const LabeledTextbox(
                    labelText: 'Nhập lại mật khẩu', 
                    hintText: '********',
                    isPassword: true
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                    text: 'Đăng ký',
                    onPressed: () {},
                    backgroundColor: const Color(0xFF5087DB),
                    textColor: const Color(0xFFF1FFF3),
                    fontSize: 20,
                    borderRadius: 30,
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    text: 'Trở lại',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: const Color(0xFFCCE4FD),
                    textColor: const Color(0xFF0E3E3E),
                    fontSize: 20,
                    borderRadius: 30,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ));
  }
}
