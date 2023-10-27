part of '../home_page.dart';

mixin HomeMixin on State<HomePage> {
  TabController? tabController;
  AutoScrollController autoScrollController =
      AutoScrollController(axis: Axis.vertical);

  Future<void> _onRefresh() async {
    context.read<ProductBloc>().add(const ProductGetEvent());
    await Future.delayed(const Duration(seconds: 1));
  }

  void setController(TabController controller) {
    tabController = controller;
    autoScrollController.addListener(() {
      if (!autoScrollController.isAutoScrolling) {
        if (!tabController!.indexIsChanging) {
          if (tabController!.index != autoScrollController.tagMap.keys.last) {
            tabController!.index = autoScrollController.tagMap.keys.last;
          }
        }
      }
    });
  }

  @override
  void dispose() {
    autoScrollController.dispose();
    tabController?.dispose();
    super.dispose();
  }
}
