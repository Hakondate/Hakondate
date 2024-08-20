import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/state/authorization/authorization_state.dart';
import 'package:hakondate/view_model/single_page/authorization/authorization_view_model.dart';

// class Authorization extends ConsumerWidget {
//   const Authorization({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final AsyncValue<AuthorizationState> state = ref.watch(authorizationViewModelProvider);

//     if (state is AsyncLoading) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('招待コード'),
//         ),
//         body: Center(
//           child: CircularProgressIndicator(
//             valueColor: AlwaysStoppedAnimation<Color>(AppColor.brand.secondary),
//           ),
//         ),
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('招待コード'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('招待コードを入力してください'),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColor.brand.secondary,
//                 padding: const EdgeInsets.symmetric(
//                   vertical: PaddingSize.buttonVertical,
//                   horizontal: PaddingSize.buttonHorizontal,
//                 ),
//                 textStyle: TextStyle(
//                   color: AppColor.text.white,
//                 ),
//                 shape: const StadiumBorder(),
//               ),
//               onPressed: () => ref.read(authorizationViewModelProvider.notifier).authorize(99, '000000'),
//               child: const Text('招待コードを送信'),
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColor.brand.secondary,
//                 padding: const EdgeInsets.symmetric(
//                   vertical: PaddingSize.buttonVertical,
//                   horizontal: PaddingSize.buttonHorizontal,
//                 ),
//                 textStyle: TextStyle(
//                   color: AppColor.text.white,
//                 ),
//                 shape: const StadiumBorder(),
//               ),
//               onPressed: () => ref.read(authorizationViewModelProvider.notifier).cancel(),
//               child: const Text('キャンセル'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Authorization extends ConsumerWidget {
  const Authorization({super.key});

  // void check() {
  //   if (_controller.text == seikai) {
  //     setState(() {
  //       _errorMessage = '正解です';
  //     });
  //   } else {
  //     setState(() {
  //       _errorMessage = '違うよ';
  //       _controller.clear(); // テキストフィールドをリセット
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AuthorizationState> state = ref.watch(authorizationViewModelProvider);

    return state.when(
      data: (AuthorizationState data) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('招待コード'),
          ),
          body: Center(
            child: Row(
              children: [
                const SizedBox(width: 32),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      PinCodeTextField(
                        controller: data.authorizationCodeController,
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 6,
                        animationType: AnimationType.none,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeColor: Colors.grey,
                          selectedColor: Colors.orange,
                          inactiveColor: Colors.grey,
                          //なんのパラメータ？？
                          activeFillColor: Colors.white,
                          inactiveFillColor: Colors.grey,
                        ),
                        onChanged: (_) {
                          data = data.copyWith(
                            statusMessage: '',
                          );
                        },
                      ),
                      const SizedBox(height: 8),
                      Text(
                        data.statusMessage,
                        style: TextStyle(
                          color: data.statusMessage == '正解です' ? Colors.orange : Colors.red,
                          //条件式 ? 式1 : 式2 三項演算子
                          //条件式 が true の場合は 式1 が実行
                          //条件式 が false の場合は 式2 が実行
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ref.read(authorizationViewModelProvider.notifier).authorize(99, '000000'); // check関数を実行する
            },
            child: const Icon(Icons.check),
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('招待コード'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('エラーが発生しました'),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.brand.secondary,
                    padding: const EdgeInsets.symmetric(
                      vertical: PaddingSize.buttonVertical,
                      horizontal: PaddingSize.buttonHorizontal,
                    ),
                    textStyle: TextStyle(
                      color: AppColor.text.white,
                    ),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () => ref.read(authorizationViewModelProvider.notifier).cancel(),
                  child: const Text('キャンセル'),
                ),
              ],
            ),
          ),
        );
      },
      loading: () {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('招待コード'),
          ),
          body: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColor.brand.secondary),
            ),
          ),
        );
      },
    );
  }
}

class TextFormBorders {
  // キーボード表示時のフォームの枠線
  static const textFormFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Colors.deepPurple,
      width: 2,
    ),
  );

  // 平常時のフォームの枠線。
  static const textFormEnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  );
}
