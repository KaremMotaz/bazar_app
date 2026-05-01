import 'package:bazar_app/features/profile/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../auth/presentation/widgets/email_form_widget.dart';
import '../../../auth/presentation/widgets/name_form_widget.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listenWhen: (previous, current) =>
          current is ProfileSuccess && previous != current,
      listener: (context, state) {
        if (state is ProfileSuccess) {
          nameController.text = state.profile.name;
          emailController.text = state.profile.email;
        }
      },
      child: Form(
        key: formKey,
        child: Column(
          children: [
            NameFormWidget(nameController: nameController),
            const SizedBox(height: 16),
            EmailFormWidget(emailController: emailController),
            const SizedBox(height: 24),
            AppTextButton(
              onPressed: () => validateThenUpdateProfile(context),
              buttonText: "Save Changes",
            ),
          ],
        ),
      ),
    );
  }

  void validateThenUpdateProfile(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<ProfileCubit>().updateProfile({
        "name": nameController.text,
        "email": emailController.text,
      });
    }
  }
}
