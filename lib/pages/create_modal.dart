import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/large_button.dart';

class CreateTodoModal extends StatelessWidget {
  const CreateTodoModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: PageView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "タスク",
                        hintText: "例:公共料金支払い",
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('２ページ目の画面ですよ〜'),
                  ],
                ),
                Column(
                  children: [
                    Text('完了'),
                    LargeButton(
                      text: '追加する',
                      onPressed: () {
                        print('TODO: タスクを追加するデータ登録処理を記述する');
                      },
                      primary: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: LargeButton(
              text: 'キャンセル',
              onPressed: () {
                Navigator.pop(context);
              },
              primary: false,
            ),
          ),
        ],
      ),
    );
  }
}
