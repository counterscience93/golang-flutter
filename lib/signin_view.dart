import 'package:flutter/material.dart';
import 'package:flutter_provider_example/signin_viewmodel.dart';
import 'package:provider/provider.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('Sign In'),
      ),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TxtCounter(),
          RaisedButton(
            child: Text('Click me'),
            onPressed: () {
              viewModel.increment();
            },
          )
        ],
      ),
    );
  }
}

class TxtCounter extends StatelessWidget {
  const TxtCounter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var viewModel = Provider.of<SignInViewModel>(context);
    // return Container(
    //     child: Text(
    //   viewModel.count.toString(),
    //   style: TextStyle(fontSize: 20),
    // ));
    return Consumer<SignInViewModel>(builder: (context, model, child) {
      return Container(
        child: Text(model.count.toString(), style: TextStyle(fontSize: 20)),
      );
    });
  }
}
