import 'package:first_web_flutter/contactSection/contact_icon.dart';
import 'package:first_web_flutter/contactSection/input_maker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  late Animation borderColor;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  late Animation textColor;
  void printSomething() {
    // if (nameController.text.isEmpty) print("yes it's empty");
    print(nameController.text.toString());
    // setState(() {
    //   print(nameController.text.toString());
    // });
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
    borderColor = ColorTween(
            begin: Theme.of(widget.externalContext).colorScheme.primary,
            end: Colors.black)
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool isDisabled = true;
    return Container(
      width: width * 0.9,
      height: height - (height * 0.12),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.067,
          ),
          Text("BE A KLICKER!",
              style: TextStyle(
                  fontFamily: 'Renogare',
                  fontSize: height*0.05307855798283337579985133209071,
                  color: Theme.of(context).colorScheme.primary)),
          SizedBox(
            height: height * 0.025,
          ),
          inputFieldMaker(context, nameController, "Name"),
          inputFieldMaker(context, emailController, "E-mail"),
          inputFieldMaker(context, mobileController, "Mobile"),
          inputFieldMaker(context, messageController, "Message"),
          SizedBox(
            height: height * 0.015,
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, _) {
              return MouseRegion(
                onEnter: (_) {
                  if (nameController.text.toString() != "" &&
                      messageController.text.toString() != "" &&
                      emailController.text.toString() != "" &&
                      mobileController.text.toString() != "") {
                    setState(() {
                      isDisabled = false;
                      print("State ${isDisabled.toString()}");
                      _controller.forward();
                    });
                  }
                },
                onExit: (_) {
                  setState(() {
                    isDisabled = true;
                  });
                  _controller.reverse();
                },
                child: Container(
                  width: width * 0.12,
                  height: height * 0.09,
                  decoration: BoxDecoration(
                    color: buttonColor.value,
                    borderRadius: BorderRadius.circular(6.5),
                    border: Border.all(
                        color: borderColor.value, width: height * 0.002),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: isDisabled ? null : printSomething,
                      // onPressed: () => printSomething(),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontFamily: 'Renogare',
                            color: textColor.value,
                            fontSize:
                                height * 0.02631578947368421052631578947368),
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
              iconName: "email.png",
              url: "https://www.instagram.com/klick.90/",
            ),
          ])
        ],
      ),
    );
  }
}
