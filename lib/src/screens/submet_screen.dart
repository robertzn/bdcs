
import 'package:flutter/material.dart';

class submetScreen extends StatefulWidget {
  const submetScreen({Key? key}) : super(key: key);
  createState() {
    return submetScreenState();
  }
}


class submetScreenState extends State<submetScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
        key: formKey,
        child: Column(
          children: [
            yourName(),
            yourSurname(),
            yourAge(),
            emailField(),
            passwordField(),
            
            Container(margin: const EdgeInsets.only(top: 25.0)),
            Row(
              
              children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {},
                        child: const Text("Send",),
                      ),
                    ),
                    const SizedBox( width: 10,),
                    Expanded(
                      child: RaisedButton(
                        child: const Text("Recevice"),
                        
                        onPressed: () {},
                      ),
                    )
                  ],
            ),
          ],
        ),
          ),
      ),
    );
  }


  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      /*validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },*/
    );
  }

   Widget passwordField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      /*validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },*/
    );
  }

     Widget yourName() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Name',
        hintText: 'Name',
      ),
      /*validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },*/
    );
  }


     Widget yourSurname() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Surname',
        hintText: 'Surname',
      ),
      /*validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },*/
    );
  }

     Widget yourAge() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Age',
        hintText: 'Age',
      ),
      /*validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },*/
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: const Text('Submit!'),
      onPressed: () {
        /*if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Time to post $email and $password to my API');
        }*/
      },
    );
  }

  Widget receviceButton() {
    return RaisedButton(
      color: Colors.blue,
      child: const Text('Recevice!'),
      onPressed: () {
        /*if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Time to post $email and $password to my API');
        }*/
      },
    );
  }

}
