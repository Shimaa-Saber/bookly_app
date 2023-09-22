import 'package:bookly_app/futshers/home/presentation/view/widgets/similer_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utilties/Styles.dart';

class similerBooksSection extends StatelessWidget {
  const similerBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        const similerListView(),
      ],
    );
  }
}
