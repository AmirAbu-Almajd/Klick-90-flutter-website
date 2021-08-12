import 'dart:convert';
import 'package:first_web_flutter/contactSection/contact_icon.dart';
import 'package:first_web_flutter/contactSection/input_maker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class ContactUs extends StatefulWidget {
  BuildContext externalContext;
  ContactUs({required this.externalContext});

  @override
  ContactUsState createState() => ContactUsState();
}

class ContactUsState extends State<ContactUs>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation buttonColor;
  // late Animation borderColor;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  late Animation textColor;
  dynamic buttonFunction = null;
  void isEmpty() {
    if (nameController.text.toString() != "" &&
        messageController.text.toString() != "" &&
        emailController.text.toString() != "" &&
        mobileController.text.toString() != "") {
      _controller.forward();
      setState(() {
        buttonFunction = sendEmail;
      });
    } else if (_controller.status == AnimationStatus.completed &&
        (nameController.text.toString() == "" ||
            messageController.text.toString() == "" ||
            emailController.text.toString() == "" ||
            mobileController.text.toString() == "")) {
      _controller.reverse();
      setState(() {
        buttonFunction = null;
      });
    }
  }

  Future sendEmail() async {
    final serviceId = 'service_iet9bfu';
    final templateId = 'template_hu6zygm';
    final userId = 'user_UrKhr588oouKsVa1yrWkd';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(url,
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_email': emailController.text,
            'user_name': nameController.text,
            'user_mobile': mobileController.text,
            'user_message': messageController.text,
          }
        }),
        headers: {'Content-Type': 'application/json'});
    setState(() {
      emailController.text = "";
      nameController.text = "";
      messageController.text = "";
      mobileController.text = "";
    });
    print(response.body);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    buttonColor = ColorTween(
            begin: Colors.black,
            end: Theme.of(widget.externalContext).colorScheme.primary)
        .animate(_controller);
    textColor = ColorTween(
            begin: Theme.of(widget.externalContext).colorScheme.primary,
            end: Colors.white)
        .animate(_controller);
    // borderColor = ColorTween(
    //         begin: Theme.of(widget.externalContext).colorScheme.primary,
    //         end: Colors.black)
    //     .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool isDisabled = true;
    return Container(
      width: width * 0.9,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.067,
          ),
          SelectableText("BE A KLICKER!",
              style: TextStyle(
                  fontFamily: 'Renogare',
                  fontSize: height * 0.05307855798283337579985133209071,
                  color: Theme.of(context).colorScheme.primary)),
          SizedBox(
            height: height * 0.025,
          ),
          inputFieldMaker(
              notificationFunction: isEmpty,
              fieldController: nameController,
              placeholderText: "Name"),
          inputFieldMaker(
              notificationFunction: isEmpty,
              fieldController: emailController,
              placeholderText: "E-mail"),
          inputFieldMaker(
              notificationFunction: isEmpty,
              fieldController: mobileController,
              placeholderText: "Mobile"),
          inputFieldMaker(
              notificationFunction: isEmpty,
              fieldController: messageController,
              placeholderText: "Message"),
          SizedBox(
            height: height * 0.015,
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, _) {
              return MouseRegion(
                onHover: (_) {
                  if (buttonFunction == null) {
                    _controller.forward();
                  }
                },
                onExit: (_) {
                  if (buttonFunction == null) {
                    _controller.reverse();
                  }
                },
                child: Container(
                  width: (width<800)?null:width * 0.12,
                  height: height * 0.09,
                  decoration: BoxDecoration(
                    color: buttonColor.value,
                    borderRadius: BorderRadius.circular(6.5),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: height * 0.002),
                  ),
                  child: ElevatedButton(
                      onPressed: buttonFunction,
                      style: ElevatedButton.styleFrom(
                        disabledMouseCursor: SystemMouseCursors.basic,
                      ),
                      child: SelectableText(
                        "Submit",
                        style: TextStyle(
                            fontFamily: 'Renogare',
                            color: textColor.value,
                            fontSize: (width<800)?width*0.035:width * 0.013),
                      )),
                ),
              );
            },
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            iconButton(
              iconName: "facebook.png",
              url: "https://www.facebook.com/Klick90",
            ),
            SizedBox(
              width: width * 0.01,
            ),
            iconButton(
              iconName: "instagram.png",
              url: "https://www.instagram.com/klick.90/",
            ),
            SizedBox(
              width: width * 0.01,
            ),
            iconButton(
              iconName: "mail.png",
              url: "https://www.instagram.com/klick.90/",
            ),
          ]),
          SizedBox(
            height: height * 0.067,
          ),
        ],
      ),
    );
  }
}
