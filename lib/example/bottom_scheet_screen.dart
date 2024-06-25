import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample BottomSheet'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('Sample Switch Widget SM'),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _popupShowAttendence(BuildContext context) {
    return showModalBottomSheetDynamic(
      context,
      title: 'Total Kehadiran Setahun',
      titlePosition: Alignment.centerLeft,
      target: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Jumlah Cuti', style: AppTypography.smallBold),
                Text(
                  '2 dari 12 hari',
                  style: AppTypography.smallBold,
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Jumlah Cuti', style: AppTypography.smallBold),
                Text(
                  '2 dari 12 hari',
                  style: AppTypography.smallBold,
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Jumlah Cuti', style: AppTypography.smallBold),
                Text(
                  '2 dari 12 hari',
                  style: AppTypography.smallBold,
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Jumlah Cuti', style: AppTypography.smallBold),
                Text(
                  '2 dari 12 hari',
                  style: AppTypography.smallBold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
