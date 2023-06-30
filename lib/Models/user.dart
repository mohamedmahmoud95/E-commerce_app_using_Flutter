
class User{
  String? firstName;
  String? lastName;
  String? userID;
  String? profilePicUrl;
  DateTime? dateOfBirth;
  String? phoneNumber;
  String? email;
  String? userName;
  String? password;
  String? gender;
  String? address;

  //constructor
  User({
    this.firstName,
    this.lastName,
    this.userID,
    this.profilePicUrl,
    this.dateOfBirth,
    this.phoneNumber,
    this.email,
    this.userName,
    this.password,
  });
}

User currentAppUser = User();