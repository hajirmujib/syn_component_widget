import 'package:flutter/material.dart';
import 'package:syn_common_widget/src/date/date_time_formatted.dart';
import 'package:syn_common_widget/syn_ui.dart';

class CommonDateEndOptionWidget extends StatefulWidget {
  const CommonDateEndOptionWidget({
    super.key,
    required this.startDate,
    required this.onSelectedDate,
  });

  final DateTime? startDate;
  final ValueChanged<DateTime> onSelectedDate;

  @override
  State<CommonDateEndOptionWidget> createState() =>
      _CommonDateEndOptionWidgetState();
}

class _CommonDateEndOptionWidgetState extends State<CommonDateEndOptionWidget> {
  DateTime currentDate = DateTime.now();
  TimeOfDay currentTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now().add(const Duration(days: 1));
  final lastDate = DateTime(DateTime.now().year + 5);

  String? dateSelected;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // FocusScope.of(context).requestFocus(focus);
        // _buildLeaveEndDateOption(context);
        await _selectDate(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: AppRadius.lg,
          border: Border.all(
            color: CommonColors.gray[200]!,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                dateSelected ?? 'Tanggal Berakhir',
                style: AppTypography.smallRegular,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.date_range_outlined,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.startDate ?? selectedDate,
      // initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 60)),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.onSelectedDate.call(selectedDate);
        // _createEventModel.startTime = _getStartDate();
        // selectedEndDate = selectedDate;
        dateSelected = formatedYYYYMMDD(_getStartDate().toInt());
      });
    }
  }

  double _getStartDate() {
    final date = DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
    );
    return date.toUtc().millisecondsSinceEpoch.toDouble() / 1000;
  }
}
