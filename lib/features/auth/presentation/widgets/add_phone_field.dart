import 'package:flutter/widgets.dart';
import '../../../../../core/theming/app_styles.dart';
import 'phone_field.dart';

class AddPhoneField extends StatelessWidget {
  final void Function(String phone) onChanged;

  const AddPhoneField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 10),
          child: Text("Phone Number", style: AppStyles.medium14),
        ),
        PhoneField(
          onInputChanged: (phone) {
            onChanged(phone);
          },
        ),
      ],
    );
  }
}
