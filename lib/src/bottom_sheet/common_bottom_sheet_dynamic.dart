import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

Future<void> showModalBottomSheetDynamic(
  BuildContext context, {
  bool topDevider = true,
  String? title,
  Widget? target,
  double? height,
  Color? barrierColor,
  double radius = 16,
  AlignmentGeometry titlePosition = Alignment.center,
  EdgeInsetsGeometry? padding = const EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 16,
  ),
  Widget? prefixWidget,
  Widget? suffixWidget,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    barrierColor: barrierColor,
    builder: (BuildContext context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radius),
              topRight: Radius.circular(radius),
            ),
            color: CommonColors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Visibility(
                visible: topDevider,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16, top: 4),
                    height: 4,
                    width: 40,
                    decoration: BoxDecoration(
                      color: CommonColors.gray[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: title != null,
                child: Align(
                  alignment: titlePosition,
                  child: SizedBox(
                    child: Row(
                      children: [
                        prefixWidget ?? const SizedBox(),
                        Expanded(
                          child: Align(
                            alignment: titlePosition,
                            child: Text(
                              title ?? '',
                              style: AppTypography.smallBold,
                            ),
                          ),
                        ),
                        suffixWidget ??
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: AppRadius.lg,
                                  color: CommonColors.gray[200],
                                ),
                                child: Icon(
                                  Icons.close,
                                  size: 16,
                                  color: CommonColors.gray[700],
                                ),
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: title != null,
                child: const SizedBox(
                  height: 16,
                ),
              ),
              target ?? const SizedBox()
            ],
          ),
        ),
      );
    },
  );
}
