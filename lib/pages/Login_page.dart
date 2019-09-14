import 'package:commerce/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey.shade600,
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Login",
              style: theme.textTheme.title,
            ),
            SizedBox(
              height: 50.0,
            ),
            _buildLoginForm(context, theme),
            SizedBox(
              height: 8.0,
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Forgot your password?",
                      style: theme.textTheme.display1,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Icon(
                      FontAwesomeIcons.longArrowAltRight,
                      color: Helpers.hexToColor("#E60013"),
                      size: 20.0,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RawMaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 15.0),
              fillColor: Helpers.hexToColor("#E60013"),
              splashColor: Helpers.hexToColor("#E60013"),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Center(
                  child: Text(
                "Login",
                style: theme.textTheme.button,
              )),
            ),

            SizedBox(height: 15.0,),
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text("Don't have an account? Sign up!", style: theme.textTheme.caption,)
              )],
            ),
            Expanded(
                child: Flex(
              mainAxisAlignment: MainAxisAlignment.center,
              direction: Axis.vertical,
              children: <Widget>[
                Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  direction: Axis.vertical,
                  children: <Widget>[
                    Text(
                      "Or login with a social account",
                      style: theme.textTheme.caption,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [BoxShadow(color: Colors.grey.shade600), BoxShadow(color: Colors.red)]
                      ),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red,
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.google,
                            color: Helpers.hexToColor("#E60013"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [BoxShadow(color: Colors.grey.shade600), BoxShadow(color: Colors.blue)]
                      ),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.blue.shade400,
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.blue.shade400,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }

  _buildLoginForm(BuildContext context, ThemeData theme) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey.shade500)],
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email Address",
                    labelText: "Email Address",
                    hintStyle: theme.textTheme.caption,
                    labelStyle: theme.textTheme.caption,
                  ),
                ),
              ),
              Icon(Icons.check, color: Colors.green.shade400)
            ],
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey.shade500)],
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    labelText: "Password",
                    hintStyle: theme.textTheme.caption,
                    labelStyle: theme.textTheme.caption,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
