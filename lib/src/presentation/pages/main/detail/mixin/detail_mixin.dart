part of '../detail_page.dart';

mixin DetailMixin on State<DetailPage> {
  late final bloc = context.read<DetailBloc>();
  void onTapBack() {
    bloc.add(const DetailClearProductEvent());
    context.pop();
  }

  void onTapShare() {}



  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc.add(DetailGetProductEvent(productId: widget.productId));
  }
}
