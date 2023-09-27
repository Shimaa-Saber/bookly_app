import 'package:bookly_app/core/utilties/Styles.dart';
import 'package:flutter/cupertino.dart';

class customErrorMessage extends StatelessWidget {
  const customErrorMessage({Key? key, required this.errorMessage}) : super(key: key);
final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage,style: Styles.TextStyle18,));
  }
}
