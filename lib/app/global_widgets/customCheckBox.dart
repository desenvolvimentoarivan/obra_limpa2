import 'package:flutter/material.dart';
import 'package:obra_limpa/app/theme/theme.dart';

class CustomCheckBox extends StatelessWidget {
  final Function(bool?)? onChange;
  final bool? value;

  const CustomCheckBox({Key? key, this.onChange, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20.0,
          width: 20.0,
          child: Checkbox(
            activeColor: ThemeConfig.colorPalette.brand100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            value: value,
            onChanged: onChange,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Lembrar',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
