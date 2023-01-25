import '../../../../main_lib.dart';
import 'diff_util_sliver_list.dart';

typedef ItemSliverListWidgetBuilder<T> = Widget Function(BuildContext, T);

class ItemAnimatedSliverList<T> extends DiffUtilSliverList<T> {
  ItemAnimatedSliverList({Key? key, required List<T> items, required ItemSliverListWidgetBuilder<T> builder})
      : super(
    key: key,
    items: items,
    builder: builder,
    insertAnimationBuilder: (context, animation, child) => SizeTransition(
      sizeFactor: CurvedAnimation(parent: animation, curve: const Interval(0, 0.5, curve: Curves.easeInOut)),
      child: SlideTransition(
        position: Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
            .animate(CurvedAnimation(parent: animation, curve: const Interval(0.5, 1, curve: Curves.ease))),
        child: child,
      ),
    ),
    removeAnimationBuilder: (context, animation, child) => SizeTransition(
      sizeFactor: CurvedAnimation(parent: animation, curve: const Interval(0, 0.5, curve: Curves.easeInOut)),
      child: SlideTransition(
        position: Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
            .animate(CurvedAnimation(parent: animation, curve: const Interval(0.5, 1, curve: Curves.ease))),
        child: child,
      ),
    ),
    removeAnimationDuration: const Duration(milliseconds: 300),
    insertAnimationDuration: const Duration(milliseconds: 300),
  );
}

class ItemSliverList<T> extends SliverList {
  ItemSliverList({Key? key, required List<T> items, required ItemSliverListWidgetBuilder<T> builder})
      : super(
      key: key,
      delegate: SliverChildBuilderDelegate((context, index) {
        return builder.call(context, items[index]);
      }, childCount: items.length));
}
