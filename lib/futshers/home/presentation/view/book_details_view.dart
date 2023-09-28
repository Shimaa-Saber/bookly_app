import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/similerBooks/SimilerBooksCubit.dart';
import 'package:bookly_app/futshers/home/presentation/view/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.bookModel, }) : super(key: key);

  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}


class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    BlocProvider.of<similerBooksCubit>(context).getSimilerBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailsViewBody(
        bookModel: widget.bookModel,
      ),
    );
  }
}
