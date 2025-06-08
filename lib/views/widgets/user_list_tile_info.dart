import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserListTileInfo extends StatelessWidget {
  const UserListTileInfo({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(
            context,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: AppStyles.styleRegular12(
            context,
          ),
        ),
      ),
    );
  }
}
