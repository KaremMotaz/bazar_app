class RegisterResponse {
  final String email;
  final String password;
  final String name;
  final String avatar;
  final String role;
  final int id;

  RegisterResponse({
    required this.email,
    required this.password,
    required this.name,
    required this.avatar,
    required this.role,
    required this.id,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
      email: json['email'],
      password: json['password'],
      name: json['name'],
      avatar: json['avatar'],
      role: json['role'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'avatar': avatar,
      'role': role,
      'id': id,
    };
  }
}