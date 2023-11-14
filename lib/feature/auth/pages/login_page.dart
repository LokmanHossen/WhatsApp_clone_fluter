import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_clone/common/extension/custom_theme_extension.dart';
import 'package:whats_app_clone/common/utils/colors.dart';
import 'package:whats_app_clone/common/widgets/custom_elevated_button.dart';
import 'package:whats_app_clone/common/widgets/custom_icon_button.dart';
import 'package:whats_app_clone/feature/auth/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  showCountryCodePicker() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['BD'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        // ignore: deprecated_member_use
        backgroundColor: Theme.of(context).backgroundColor,
        flagSize: 22,
        borderRadius: BorderRadius.circular(20),
        textStyle: TextStyle(color: context.theme.greyColor),
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(color: context.theme.greyColor),
          prefix: const Icon(
            Icons.language,
            color: Coloors.greenDark,
          ),
          hintText: 'Search country code or name',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.greyColor!.withOpacity(0.2),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Coloors.greenDark,
            ),
          ),
        ),
      ),
      onSelect: (country) {
        countryNameController.text = country.name;
        countryCodeController.text = country.countryCode;
      },
    );
  }

  @override
  void initState() {
    countryNameController = TextEditingController(text: 'Bangladesh');
    countryCodeController = TextEditingController(text: '880');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Enter Your Phone number',
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'WhatsApp will need to verify your phone.',
                style: TextStyle(
                  color: context.theme.greyColor,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: " What's My Number?",
                    style: TextStyle(
                      color: context.theme.blueColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextPage(
              onTap: showCountryCodePicker,
              controller: countryNameController,
              readOnly: true,
              suffixIcon:
                  const Icon(Icons.arrow_drop_down, color: Coloors.greenDark),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  child: CustomTextPage(
                    onTap: showCountryCodePicker,
                    controller: countryCodeController,
                    prefixText: '+',
                    readOnly: true,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: CustomTextPage(
                  controller: phoneNumberController,
                  hintText: 'Phone Number',
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.number,
                ))
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Carrier Changes may apply',
            style: TextStyle(
              color: context.theme.greyColor,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}
