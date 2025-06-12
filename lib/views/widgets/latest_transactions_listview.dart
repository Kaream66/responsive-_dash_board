import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/user_list_tile_info.dart';

class LatestTransactionsListview extends StatelessWidget {
  const LatestTransactionsListview({super.key});

  static List items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserListTileInfo(userInfoModel: items[index]),
          );
        },
      ),
    );
  }
}
