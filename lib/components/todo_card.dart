import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../data/colors.dart';

class TodoCard extends StatelessWidget {
  const TodoCard(
    this.genre,
    this.title,
    this.endAt, {
    super.key,
  });
  final String genre;
  final String title;
  final DateTime endAt;
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(endAt);

    return Container(
      height: 50,
      color: Colors.blue,
      child: Slidable(
        key: const ValueKey(0),
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: () {}),
          children: const [
            SlidableAction(
              onPressed: null,
              backgroundColor: AppColors.doneGreen,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Done',
            ),
          ],
        ),
        endActionPane: const ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              flex: 2,
              onPressed: null,
              backgroundColor: AppColors.deleteRed,
              foregroundColor: Colors.white,
              icon: Icons.archive,
              label: 'Delete',
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(genre),
                Text(title),
              ],
            ),
            Text(formattedDate),
          ],
        ),
      ),
    );
  }
}
