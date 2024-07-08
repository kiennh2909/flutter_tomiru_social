import 'package:flutter/material.dart';
import 'package:tomiru_social_flutter/widgets/global/newWidget/custom_loader.dart';
import 'package:tomiru_social_flutter/features/Feed/Widgets/user_post_bar.dart';
import 'package:tomiru_social_flutter/features/Feed/Screens/Feed_Shorts.dart';
import 'package:tomiru_social_flutter/widgets/global/newWidget/emptyList.dart';
import 'package:tomiru_social_flutter/features/Feed/Widgets/extra_detail.dart';
import 'package:tomiru_social_flutter/widgets/global/timeLine/timeLine.dart';
import 'package:tomiru_social_flutter/widgets/topMenuBar/top_menu_bar.dart';
// import 'package:flutter_twitter_clone/state/feedState.dart';
// import 'package:provider/provider.dart';

class FeedPageBody extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final GlobalKey<RefreshIndicatorState>? refreshIndicatorKey;
  FeedPageBody({Key? key, required this.scaffoldKey, this.refreshIndicatorKey})
      : super(key: key);

  final ValueNotifier<int> pageIndexNotifier = ValueNotifier<int>(0);
  @override
  State<FeedPageBody> createState() => _FeedPageBodyState();
}

class _FeedPageBodyState extends State<FeedPageBody> {
  Widget _body(context, state, child) {
    final List? list = [];
    return CustomScrollView(
      slivers: <Widget>[
        child!,
        list == null
            ? SliverToBoxAdapter(
                child: SizedBox(
                  height: context.height - 135,
                  child: const CustomScreenLoader(
                    height: double.infinity,
                    width: double.infinity,
                    backgroundColor: Colors.white,
                  ),
                ),
              )
            : list == null
                ? const SliverToBoxAdapter(
                    child: EmptyList(
                      'No Tweet added yet',
                      subTitle:
                          'When new Tweet added, they\'ll show up here \n Tap tweet button to add new',
                    ),
                  )
                : SliverToBoxAdapter(
                    // child: getPage(widget.pageIndexNotifier.value),
                    child: _home(),
                  ),
      ],
    );
  }

  Widget _home() {
    return Column(
      children: [
        const UserPostBar(),
        const SizedBox(height: 10),
        HorizontalImageListScreen(),
        const SizedBox(height: 10),
        const ExtraDetail(),
        const SizedBox(height: 10),
        const TimeLine(),
        const SizedBox(height: 10)
      ],
    );
  }

  // Widget getPage(int index) {
  //   switch (index) {
  //     case 0:
  //       return _home();
  //     case 1:
  //       return Text('test page 2');
  //     case 2:
  //       return Text('test page 3');
  //     case 3:
  //       return Text('test page 4');
  //     case 4:
  //       return Text('test page 5');
  //     case 5:
  //       return Text('test page 6');
  //     default:
  //       return _home();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.pageIndexNotifier,
      builder: (context, index, child) {
        // return Consumer<FeedState>(
        //   builder: (context, state, child) {
        //     return _body(context, state, child);
        //   },
        return _body(context, index, child);
      },
      child: const TopMenuBar(),
    );
  }
}