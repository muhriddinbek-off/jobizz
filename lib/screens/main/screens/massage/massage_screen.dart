import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/cubit/animation_search/animation_search_cubit.dart';
import 'package:jobee/data/models/profile/employer_profile.dart';
import 'package:jobee/data/models/profile/user_profile.dart';
import 'package:jobee/data/repository/massage_data/massage_data.dart';
import 'package:jobee/screens/main/screens/massage/massage_profile/massage_profile.dart';
import 'package:jobee/screens/main/screens/massage/massage_screen/massage_item.dart';
import 'package:jobee/screens/main/screens/massage/massage_screen/massage_title.dart';
import 'package:jobee/screens/main/screens/massage/massage_screen/stack_animated_container.dart';
import 'package:jobee/screens/main/screens/massage/massage_screen/stack_opacity.dart';
import 'package:jobee/tools/colors/app_colors.dart';

class MassageScreen extends StatefulWidget {
  const MassageScreen({super.key});

  @override
  State<MassageScreen> createState() => _MassageScreenState();
}

class _MassageScreenState extends State<MassageScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          BlocBuilder<AnimationSearchCubit, bool>(
            builder: (context, state) {
              return SliverAppBar(
                pinned: true,
                backgroundColor: AppColors.primaryColor,
                title: Stack(
                  children: [
                    StackOpacity(
                      isChange: state,
                      onTap: () {
                        context.read<AnimationSearchCubit>().isChangeValue(state);
                      },
                    ),
                    StackAnimatedContainer(
                      search: search,
                      isChange: state,
                      onChange: () {
                        context.read<AnimationSearchCubit>().isChangeValue(state);
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          const MassageTitle(title: "Companies"),
          SliverAnimatedList(
            initialItemCount: users.length,
            itemBuilder: (context, index, animation) {
              final item = users[index];
              if (item is EmployerProfile) {
                return MassageItem(
                  name: item.name,
                  avatar: item.avatar,
                  chatEnd: item.chat.isEmpty ? "Joined the massage" : item.chat[item.chat.length - 1].toString(),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MassageProfile(
                          name: item.name,
                          avatar: item.avatar,
                          chat: item.chat,
                        ),
                      ),
                    );
                  },
                );
              }
              return const SizedBox.shrink();
            },
          ),
          const MassageTitle(title: "Individual Messages"),
          SliverAnimatedList(
            initialItemCount: users.length,
            itemBuilder: (context, index, animation) {
              final item = users[index];
              if (item is UserProfile) {
                return MassageItem(
                  name: item.name,
                  avatar: item.avatar,
                  chatEnd: item.chat.isEmpty ? "Joined the massage" : item.chat[item.chat.length - 1].toString(),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MassageProfile(
                          name: item.name,
                          avatar: item.avatar,
                          chat: item.chat,
                        ),
                      ),
                    );
                  },
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
