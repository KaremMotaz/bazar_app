enum VerificationType { email, phone }

extension VerificationTypeExtension on VerificationType {
  String get name {
    switch (this) {
      case VerificationType.email:
        return "email";
      case VerificationType.phone:
        return "phone";
    }
  }
}
