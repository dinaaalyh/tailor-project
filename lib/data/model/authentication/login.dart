class LoginRequest {
  String phonenumber;

  LoginRequest({required this.phonenumber});

  Map<String, dynamic> toJson() => {'phonenumber': phonenumber};
}

class LoginResponse {
  String otp;
  String message;

  LoginResponse({required this.otp, required this.message});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        otp: json['data']['otp'],
        message: json['message'],
      );
}
