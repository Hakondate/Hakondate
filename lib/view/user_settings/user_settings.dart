import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/new_user_id.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';
import 'package:hakondate/view/user_settings/user_switch_dialog.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/user_settings/user_settings_view_model.dart';

class UserSettings extends ConsumerWidget {
  const UserSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<UserSettingsState> users = ref.watch(userSettingsViewModelProvider);
    final UserModel currentUser = ref.watch(userViewModelProvider).currentUser!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('お子様情報一覧'),
      ),
      body: SingleChildScrollView(
        child: users.when(
          loading: CircularProgressIndicator.new,
          error: (Object error, StackTrace? stackTrace) {
            return Center(
              child: Text(error.toString()),
            );
          },
          data: (UserSettingsState users) {
            return Column(
              children: <Widget>[
                const SizedBox(
                  height: SpaceSize.line,
                ),
                for (final UserModel user in users.users!)
                  UserSettingsCard(context: context, user: user, isCurrentUser: user.id == currentUser.id),
                const SizedBox(
                  height: SpaceSize.line,
                ),
                const UserAddButton(),
                const Padding(
                  padding: EdgeInsets.all(PaddingSize.normal),
                  child: Text(
                    '※現在ユーザー情報の変更機能が完成していないため，変更が必要な場合は新しくユーザーを作成して対応していただくようお願いします．',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class UserAddButton extends ConsumerWidget {
  const UserAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: FloatingActionButton(
        elevation: 3,
        child: Icon(
          Icons.person_add,
          color: AppColor.ui.white,
        ),
        onPressed: () {
          ref.read(userSettingsViewModelProvider.notifier).setEditingUser(null);
          routemaster.push('/home/user_settings/${NewUserId.id}}');
        },
      ),
    );
  }
}

class UserSettingsCard extends ConsumerWidget {
  const UserSettingsCard({
    required this.context,
    required this.user,
    required this.isCurrentUser,
    super.key,
  });

  final BuildContext context;
  final UserModel user;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        if (!isCurrentUser) {
          return showDialog(
            context: context,
            builder: (_) => UserSwitchDialog(id: user.id),
          );
        }
      },
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: MarginSize.minimum,
          horizontal: MarginSize.normal,
        ),
        elevation: 2,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isCurrentUser ? AppColor.brand.secondary : AppColor.ui.secondaryUltraLight,
            width: 3,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.normal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    user.name,
                    style: const TextStyle(
                      fontSize: FontSize.heading,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: SpaceSize.line,
                  ),
                  Row(
                    children: <Widget>[
                      FutureBuilder<SchoolModel>(
                        future: ref.read(schoolsLocalRepositoryProvider).getById(user.schoolId),
                        builder: (
                          BuildContext context,
                          AsyncSnapshot<SchoolModel> snapshot,
                        ) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data!.name,
                              style: TextStyle(
                                fontSize: FontSize.body,
                                color: AppColor.text.gray,
                                height: 1,
                              ),
                            );
                          }

                          return Text(
                            '学校情報を取得中...',
                            style: TextStyle(
                              fontSize: FontSize.body,
                              color: AppColor.text.gray,
                              height: 1,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: SpaceSize.line,
                      ),
                      Text(
                        '${user.schoolYear}年',
                        style: TextStyle(
                          fontSize: FontSize.body,
                          color: AppColor.text.gray,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
