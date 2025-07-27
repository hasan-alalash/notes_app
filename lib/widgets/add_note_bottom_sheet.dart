import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'custom_botton.dart';
import 'custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(height: 32,),
            CustomTextFiled(
              hint: 'Title',
            ),
            SizedBox(height: 32,),
            CustomTextFiled(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(height: 128,),
            CustomBotton(),
            SizedBox(height: 24,)
          ],
        ),
      ),
    );
  }
}


