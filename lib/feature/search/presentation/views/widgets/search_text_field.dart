import 'package:bookly/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'search',
          enabledBorder: builtOutLineBorder(),
          focusedBorder: builtOutLineBorder(),
          suffixIcon: const Opacity(
              opacity: .8, child: Icon(FontAwesomeIcons.magnifyingGlass))),
    );
  }
}

OutlineInputBorder builtOutLineBorder() => OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.white),
    borderRadius: BorderRadius.circular(16));
