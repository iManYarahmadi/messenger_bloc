import 'package:base_structure_bloc/core/theme/theme_data/pallets/pallets.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/presentation/screens/chats_screen.dart';
import 'package:base_structure_bloc/core/route/app_routes_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class DormitoryBaseScreen extends StatelessWidget {
  const DormitoryBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.goNamed(AppRoutes.base.name);
        return false;
      },
      child: Scaffold(
        backgroundColor:
        Theme.of(context).extension<ForegroundPallet>()!.foreground3,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            ChatsScreen()

          ],
        ),
      ),
    );
  }
}
