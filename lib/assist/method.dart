import 'dart:async';
import 'dart:core';
import 'dart:js';

import 'package:ThiaoNaiDee/datahandle/appdata.dart';
import 'package:ThiaoNaiDee/model/address.dart';
import 'package:ThiaoNaiDee/model/direction.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ThiaoNaiDee/configmap.dart';
import 'package:ThiaoNaiDee/assist/requset.dart';
import 'package:ThiaoNaiDee/datahandle/appdata.dart';
import 'package:ThiaoNaiDee/pages/map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';


class AssistMethods{

  static Future<String> searchCoordinateAddess(Position position, JsObject context) async{
    String placeAddress = "";
    String st1, st2, st3, st4;
    String url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},-${position.longitude}&key=$mapKey";

    var response = await RequestAss.getRequest(url);

    if(response != "failed"){
      //placeAddress = response["results"][0]["formatted_address"];
      st1 = response["results"][0]["address_components"][3]["long_name"];
      st2 = response["results"][0]["address_components"][4]["long_name"];
      st3 = response["results"][0]["address_components"][5]["long_name"];
      st4 = response["results"][0]["address_components"][6]["long_name"];
      placeAddress = st1 + ", " + st2 +", " + st3 +", " + st4;

      Address userPickUpAddress = new Address();
      userPickUpAddress.longitude = position.longitude;
      userPickUpAddress.latitude = position.latitude;
      userPickUpAddress.placeName = placeAddress;

      //Provider.of<AppData>(context, listen: false).updatePickUpLocationAddress(userPickUpAddress);
    }
    return placeAddress;
  }

  static Future<Direction> obtainPlaceDirection(LatLng initialPosition, LatLng finalPositon) async{
        String directionUrl = "https://maps.googleapis.com/maps/api/directions/json?origin=${initialPosition.latitude},${initialPosition.longitude}&destination=${finalPositon.latitude},${finalPositon.longitude}&key=$mapKey";
        var res = await RequestAss.getRequest(directionUrl);
        

        if(res == "failed"){
          return null;
        }

        Direction direction = Direction();
        direction.encodedPoints = res["routes"][0]["overview_polyline"]["point"];
        direction.distanceText = res["routes"][0]["legs"][0]["distance"]["text"];
        direction.distanceValue = res["routes"][0]["legs"][0]["distance"]["value"];
        direction.durationText = res["routes"][0]["legs"][0]["duration"]["text"];
        direction.distanceValue = res["routes"][0]["legs"][0]["duration"]["value"];

        return direction;
  }
}
