import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onTap;

  const CustomTextButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        'Esqueceu a senha',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
