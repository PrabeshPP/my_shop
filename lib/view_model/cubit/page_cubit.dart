import 'package:bloc/bloc.dart';


part 'page_state.dart';

class PageCubit extends Cubit<PageState> {
  PageCubit() : super(const PageState(pageNumber: 1));
  void onPageChange({required int pageNumber}) =>
      emit(PageState(pageNumber: pageNumber));
}
