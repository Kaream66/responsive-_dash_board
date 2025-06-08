import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/user_list_tile_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserListTileInfo(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}
