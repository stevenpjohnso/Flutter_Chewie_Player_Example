import 'package:chewie_player_example/app/modules/video/components/components_export.dart';
import 'package:flutter/material.dart';

class ModalComplaint extends StatefulWidget {
  const ModalComplaint({Key? key}) : super(key: key);

  @override
  State<ModalComplaint> createState() => _ModalComplaintState();
}

class _ModalComplaintState extends State<ModalComplaint> {
  List<String> list = [
    'Sexual content',
    'Violent content',
    'Hate hateful or abusive content',
    'Harassment or bullying',
    'Dangerous or harmful acts',
    'Spam or misleading',
    'Violates my rights',
    'Problems with subtitles',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Report',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              CloseButton(onPressed: () => Navigator.pop(context))
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        const Text('Fill in the options and confirm your report.'),
        const SizedBox(height: 20.0),
        DropdownOptionsComplaint(listOptions: list),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(
                  child: CustomElevatedButton(
                      title: 'Submit', onTap: () => Navigator.pop(context))),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
