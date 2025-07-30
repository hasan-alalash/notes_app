import 'package:flutter/cupertino.dart';

import 'custom_botton.dart';
import 'custom_text_filed.dart';

class AddNoteFrom extends StatefulWidget {
  const AddNoteFrom({
    super.key,
  });

  @override
  State<AddNoteFrom> createState() => _AddNoteFromState();
}

class _AddNoteFromState extends State<AddNoteFrom> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextFiled(
            onSaved:(value){
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(height: 32,),
          CustomTextFiled(
            onSaved:(value){
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          SizedBox(height: 128,),
          CustomBotton(
            onTap: (){
              if (formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          SizedBox(height: 24,)
        ],
      ),
    );
  }
}