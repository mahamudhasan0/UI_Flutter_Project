import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){

      },),
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'this field cant be empty';
                  }
                  else if(value.length<5){
                    return 'Enter your full Email';
                  }
                  else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.text,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                    if(value!.isEmpty){
                      return 'Cant be empty';
                    }else if(value.length<8){
                      return 'Enter correct password';
                    }else{
                      return null;
                    }
                },
              ),
              SizedBox(
                width: 300,
                  child: ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print('Validation Successfull');
                    }else{
                      print('failed');
                    }
                  }, child: Text('Login')))
            ],
          ),
        ),
      ),
    );
  }
}
