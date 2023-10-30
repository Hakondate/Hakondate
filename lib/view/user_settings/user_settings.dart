import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';
import 'package:hakondate/view/user_settings/user_delete_dialog.dart';
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
                  height: 8,
                ),
                for (final UserModel user in users.users!)
                  _userSettingsCard(
                    context,
                    user: user,
                    isCurrentUser: user.id == currentUser.id,
                  ),
                const SizedBox(
                  height: 8,
                ),
                _userAddButton(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _userSettingsCard(
    BuildContext context, {
    required UserModel user,
    required bool isCurrentUser,
  }) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
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
              horizontal: MarginSize.normalHorizontal,
            ),
            elevation: 0,
            shadowColor: AppColor.brand.secondary,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isCurrentUser
                    ? AppColor.brand.secondary
                    : AppColor.ui.secondaryUltraLight,
                width: 2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                          fontSize: FontSize.subheading,
                          height: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          FutureBuilder<SchoolModel>(
                            future: ref
                                .read(schoolsLocalRepositoryProvider)
                                .getById(user.schoolId),
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
                            width: 10,
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
                      )
                    ],
                  ),
                  IconButton(
                    isSelected: isCurrentUser,
                    onPressed: isCurrentUser
                        ? () {
                            ref
                                .read(userSettingsViewModelProvider.notifier)
                                .setEditingUser(user);
                            routemaster.push('/home/user_settings/${user.id}');
                          }
                        : () async {
                            return showDialog(
                              context: context,
                              builder: (_) => UserDeleteDialog(id: user.id),
                            );
                          },
                    icon: Icon(
                      isCurrentUser ? Icons.edit : Icons.delete,
                      color: AppColor.brand.secondary,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _userAddButton() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return Center(
          child: FloatingActionButton(
            elevation: 3,
            backgroundColor: AppColor.ui.secondaryUltraLight,
            child: Icon(
              Icons.person_add,
              color: AppColor.brand.secondary,
            ),
            onPressed: () {
              ref
                  .read(userSettingsViewModelProvider.notifier)
                  .setEditingUser(null);
              routemaster.push('/home/user_settings/-1');
            },
          ),
        );
      },
    );
  }
}