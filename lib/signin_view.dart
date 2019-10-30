import 'package:flutter/material.dart';
import 'package:flutter_provider_example/signin_viewmodel.dart';
import 'package:provider/provider.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: ChangeNotifierProvider<SignInViewModel>(
        builder: (_) => SignInViewModel(),
        child: SignInWidget(),
      ),
    );
  }
}

class SignInWidget extends StatefulWidget {
  SignInWidget({Key key}) : super(key: key);

  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<SignInViewModel>(context);
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: Card(
                  elevation: 2.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  child: Form(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextFormField(
                            style: TextStyle(fontSize: 20),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                labelText: "Phone",
                                prefixIcon: Icon(Icons.phone),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.grey[200],
                                ))),
                          ),
                          TextFormField(
                            style: TextStyle(fontSize: 20),
                            obscureText: true,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                labelText: "Password",
                                prefixIcon: Icon(Icons.lock),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.grey[200],
                                ))),
                          ),
                          RaisedButton(
                            onPressed: () {},
                            color: Colors.orange[600],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            child: SizedBox(
                              width: 200,
                              height: 50,
                              child: Center(
                                child: Text(
                                  'SignIn',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sign up now',
                style: TextStyle(
                  fontSize: 19,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TxtCounter extends StatelessWidget {
  const TxtCounter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SignInViewModel>(builder: (context, model, child) {
      return Container(
        child: Text(model.count.toString(), style: TextStyle(fontSize: 20)),
      );
    });
  }
}
