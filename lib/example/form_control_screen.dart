import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class FormControllerScreen extends StatelessWidget {
  const FormControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample FormController'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Sample FormController Widget SM'),
              CommonTextForm(
                textController: TextEditingController(text: 'Hello word'),
                labelText: 'Label Text',
                hintText: 'Type message...',
                helperText: 'Helper text',
                // isDense: true,
                // isDense: false,
              ),
              const SizedBox(height: 16),
              const Text('Sample FormController Raad only'),
              CommonTextForm(
                textController: TextEditingController(text: 'Hello word'),
                labelText: 'NIK',
                hintText: 'Type message...',
                helperText:
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly',
                readOnly: true,
              ),
              const SizedBox(height: 16),
              const Text('Sample FormController No label'),
              CommonTextForm(
                textController: TextEditingController(text: 'Hello word'),
                hintText: 'Type message...',
                helperText:
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly',
                readOnly: true,
              ),
              const SizedBox(height: 16),
              const Text('Sample FormController No label, No Helper'),
              CommonTextForm(
                textController: TextEditingController(text: 'Hello word'),
                hintText: 'Type message...',
              ),
              const SizedBox(height: 16),
              const Text('Sample FormController Prefix Icon'),
              CommonTextForm(
                textController: TextEditingController(text: 'Hello word'),
                hintText: 'Type message...',
                prefixIcon: Container(
                  decoration: BoxDecoration(
                    color: CommonColors.gray[200],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Icon(
                    Icons.home,
                    color: CommonColors.gray[700],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Sample FormController Suffix Icon'),
              CommonTextForm(
                textController: TextEditingController(text: 'Hello word'),
                hintText: 'Type message...',
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: CommonColors.gray[200],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Icon(
                    Icons.home,
                    color: CommonColors.gray[700],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Sample FormController Prefix Icon, Suffix Icon'),
              CommonTextForm(
                textController: TextEditingController(text: 'Hello word'),
                hintText: 'Type message...',
                prefixIcon: Container(
                  decoration: BoxDecoration(
                    color: CommonColors.gray[200],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Icon(
                    Icons.home,
                    color: CommonColors.gray[700],
                  ),
                ),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: CommonColors.gray[200],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Icon(
                    Icons.home,
                    color: CommonColors.gray[700],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
