import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oder_note/app/page/home/presentation/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:oder_note/app/page/home/presentation/blocs/bottom_navigation/bottom_navigation_event.dart';
import 'package:oder_note/app/page/home/presentation/blocs/bottom_navigation/bottom_navigation_state.dart';
import 'package:oder_note/core/values/app_colors.dart';
import 'package:oder_note/core/values/app_scale.dart';
import 'package:oder_note/core/values/text_style.dart';

class BottomNaviagtinBar extends StatelessWidget {
  const BottomNaviagtinBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context,BottomNavigationState state) => GestureDetector(
        child: Container(
          width:  double.infinity,
          height: 50* AppScale.scale,
          padding: EdgeInsets.symmetric(horizontal: 6*AppScale.scale),
          margin:  EdgeInsets.only(
            bottom: MediaQuery.of(context).viewPadding.bottom 
          ),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: AppColors.borderGreyLight)
            )
          ),
          child: Row(
            children: [
              _buildItemBottomBar(
                context,
                'images/ic_home_bottom_bar.png',
                "home",
                state,
                0,
              ),
                _buildItemBottomBar(
                context,
                'images/ic_home_bottom_bar.png',
                "weather",
                state,
                1,
              ),
            ],
          ),
            ),
      ) 
    );

  }
   Widget _buildItemBottomBar(
    BuildContext context,
    String img,
    String title,
    BottomNavigationState state,
    int index,
  ) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => context
            .read<BottomNavigationBloc>()
            .add(BottomNavigationEvent.changedPage(pageIndex: index)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 21 * AppScale.scale,
              height: 19 * AppScale.scale,
              child: Center(
                child: Image.asset(
                  img,
                  width: index == 2 ? 17 * AppScale.scale : 21 * AppScale.scale,
                  height:
                      index == 2 ? 16 * AppScale.scale : 19 * AppScale.scale,
                  color: state.bottomBarEnum.currentPageIndex == index
                      ? AppColors.blueButtonColor
                      : null,
                ),
              ),
            ),
            SizedBox(height: 3 * AppScale.scale),
            Text(
              title,
              style: state.bottomBarEnum.currentPageIndex == index
                  ? blueText12
                  : greyText12,
            )
          ],
        ),
      ),
    );
  }
}