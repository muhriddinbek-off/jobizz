import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/screens/main/screens/massage/massage_profile/widgets/input_massage.dart';
import 'package:jobee/screens/main/screens/massage/massage_profile/widgets/massage_appbar.dart';
import 'package:jobee/screens/main/screens/massage/massage_screen/example_screen.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';

class MassageProfile extends StatelessWidget {
  const MassageProfile({
    super.key,
    required this.avatar,
    required this.name,
    required this.chat,
  });

  final String name;
  final String avatar;
  final List<dynamic> chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.primaryColor,
            expandedHeight: 80.h,
            leading: BackButton(
              color: AppColors.white,
            ),
            title: MassageAppbarItem(avatar: avatar, name: name),
          ),
          SliverList.builder(
            itemCount: chat.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: SvgPicture.asset(avatar),
                title: Text(chat[index].toString()),
              );
            },
          ),
        ],
      ),
      bottomSheet: InputMassage(
        onSelect: () {},
        onSend: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleScreen()));
        },
        onValueChange: (value) {},
      ),
    );
  }
}
