import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class InputPassword extends StatelessWidget {
  InputPassword({@required this.keyType, this.placeholder});

  final String keyType;
  final String placeholder;

  @override
  Widget build(context) {
    return TextFormField(
        obscureText: true,
        autocorrect: false,
        enableSuggestions: false,
        inputFormatters: keyType == 'pin'
            ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
            : null,
        decoration: InputDecoration(
          hintText: placeholder,
          // border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.vpn_key),
          filled: true,
        ),
        keyboardType:
            keyType == 'pin' ? TextInputType.number : TextInputType.text);
  }
}

class _LoginState extends State<Login> {
  String keyType = 'pin';

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Create New Key"),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Key Type'),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ChoiceChip(
                        label: Text('PIN Code'),
                        selected: keyType == 'pin',
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onSelected: (paramBool) {
                          FocusScope.of(context).unfocus();

                          if (keyType != 'pin') {
                            setState(() {
                              keyType = 'pin';
                            });
                          }
                        },
                      ),
                      ChoiceChip(
                          label: Text('Password'),
                          selected: keyType == 'password',
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onSelected: (paramBool) {
                            FocusScope.of(context).unfocus();

                            if (keyType != 'password') {
                              setState(() {
                                keyType = 'password';
                              });
                            }
                          })
                    ],
                  ),
                  margin: EdgeInsets.only(top: 16, bottom: 16),
                ),
                InputPassword(
                  keyType: keyType,
                  placeholder: 'Enter Key',
                ),
                Container(
                  child: InputPassword(
                    keyType: keyType,
                    placeholder: 'Repeat Key',
                  ),
                  margin: EdgeInsets.only(top: 16),
                ),
                Container(
                    child: ElevatedButton(
                      child: Text('CREATE'),
                      style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      onPressed: () {},
                    ),
                    margin: EdgeInsets.only(top: 16)),
              ],
            ),
          ),
        ),
        onTap: () {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
