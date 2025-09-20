class ProfileResponse {
  ProfileResponse({
    required this.data,
    required this.message,
  });

  Profile data;
  String message;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      ProfileResponse(
        data: Profile.fromJson(json['data']),
        message: json['message'],
      );
}

class Profile {
  Profile({
    required this.id,
    required this.uuid,
    required this.name,
    required this.phonenumber,
    required this.profile,
  });

  int id;
  String uuid;
  String name;
  String phonenumber;
  ProfileDetail? profile;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json['id'],
        uuid: json['uuid'],
        name: json['name'],
        phonenumber: json['phonenumber'],
        profile: json['profile'] != null
            ? ProfileDetail.fromJson(json['profile'] as Map<String, dynamic>)
            : null,
      );
}

class EditProfileRequest {
  const EditProfileRequest({
    required this.nik,
    required this.name,
    required this.birthPlace,
    required this.birthDate,
    required this.gender,
    required this.marital,
    required this.email,
    required this.address,
  });

  final String nik;
  final String name;
  final String birthPlace;
  final String birthDate;
  final String gender;
  final String marital;
  final String email;
  final String address;

  Map<String, String> toJson() => {
        "nik": nik,
        "name": name,
        "birth_place": birthPlace,
        "birth_date": birthDate,
        "gender": gender,
        "marital": marital,
        "email": email,
        "address": address,
      };
}

class ProfileDetail {
  const ProfileDetail({
    this.nik,
    this.name,
    this.birthPlace,
    this.birthDate,
    this.gender,
    this.marital,
    this.email,
    this.address,
  });

  final String? nik;
  final String? name;
  final String? birthPlace;
  final String? birthDate;
  final String? gender;
  final String? marital;
  final String? email;
  final String? address;

  factory ProfileDetail.fromJson(Map<String, dynamic> json) {
    return ProfileDetail(
      nik: json['nik'] != null ? json['nik'] as String : null,
      name: json['name'] != null ? json['name'] as String : null,
      birthPlace:
          json['birth_place'] != null ? json['birth_place'] as String : null,
      birthDate:
          json['birth_date'] != null ? json['birth_date'] as String : null,
      gender: json['gender'] != null ? json['gender'] as String : null,
      marital: json['marital'] != null ? json['marital'] as String : null,
      email: json['email'] != null ? json['email'] as String : null,
      address: json['address'] != null ? json['address'] as String : null,
    );
  }
}
