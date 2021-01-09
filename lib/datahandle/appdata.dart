import 'package:ThiaoNaiDee/model/address.dart';
import 'package:flutter/cupertino.dart';

class AppData extends ChangeNotifier{
  Address pickUpLocation, dropOffLocation;

  void updatePickUpLocationAddress(Address pickUpAddress){
    pickUpLocation = pickUpAddress;
    notifyListeners();
  }

  void updatedropOffLocationAddress(Address dropOffAddress){
    pickUpLocation = dropOffAddress;
    notifyListeners();
  }
}