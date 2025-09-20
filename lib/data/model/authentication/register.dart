class RegisterRequest {
  String name;
  String numberId;
  String phonenumber;
  String password;

  RegisterRequest({
    required this.name,
    required this.numberId,
    required this.phonenumber,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'nik': numberId,
    'phonenumber': phonenumber,
    'password': password,
  };
}

class RegisterResponse {
  String otp;
  String message;

  RegisterResponse({required this.otp, required this.message});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
        otp: json['data']['otp'],
        message: json['message'],
      );
}