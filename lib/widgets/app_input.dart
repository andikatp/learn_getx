import 'package:flutter/material.dart';
import 'package:learn_getx/infrastructure/theme/app_color.dart';
import 'package:learn_getx/infrastructure/theme/app_font.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    Key? key,
    required this.hint,
    this.textController,
  }) : super(key: key);
  final String hint;
  final TextEditingController? textController;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        controller: widget.textController,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: AppFont.hintText.copyWith(
            color: AppColor.grey3,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColor.grey1)),
        ),
      ),
    );
  }
}
