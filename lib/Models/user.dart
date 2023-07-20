
import 'package:e_commerce_app/Models/product.dart';


// class User{
//   String userID;
//   User({
//     required this.userID,
// });
// }

class AppUser{
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
  List<Product>? inCartProducts;

  //constructor
  AppUser({
    this.firstName,
    this.lastName,
    this.userID,
    this.profilePicUrl,
    this.dateOfBirth,
    this.phoneNumber,
    this.email,
    this.userName,
    this.password,
    this.inCartProducts,
  });
}


AppUser currentAppUser = AppUser();

AppUser sampleAppUser = AppUser(
  firstName: "firstName",
  lastName: "lastName",
  inCartProducts: [shoe],
  profilePicUrl: "https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png",
  userID: "dfdf",
  userName: "userName",
  dateOfBirth: DateTime(1995,3,7),



);