bhi to import "package:flutter/material.dart";

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameControllar = TextEditingController();
  final _emailContrller = TextEditingController();
  final __phoneNoController = TextEditingController();

  // ...................... onFoucse Node....
  final _nameFocus = FocusNode();
  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("From Status....")),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    // focusNode: _nameFocus,
                    controller: _usernameControllar,
                    // onFieldSubmitted: (value) {
                    //   _nameFocus.unfocus();
                    //   FocusScope.of(context).requestFocus(_emailFocus);
                    // },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0))),
                      hintText: 'Enter your user_name',
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Enter Your Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _emailContrller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0))),
                      labelText: 'Enter your email_id',
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        // return 'Enter Your Email id';
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter Your Email")));
                      }
                      return null;  },      ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: __phoneNoController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0))),
                      labelText: 'Enter your Password.',
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Enter Your Password ...';      }
                      return null;    },  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Color.fromARGB(255, 247, 91, 56),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? true) {
                            print("succes"); }  },
                        child: Text("Submit")),
                  )
                ],
              )),
        ));
  }
}
