import 'package:flutter/material.dart';

class ControllerList
{
  ControllerList._();

  //Upper garment measures
  static TextEditingController shoulder = TextEditingController();
  static TextEditingController cotilla = TextEditingController();
  static TextEditingController bust = TextEditingController();
  static TextEditingController bustCircumference = TextEditingController();
  static TextEditingController bustHeight = TextEditingController();
  static TextEditingController bustSeparation = TextEditingController();
  static TextEditingController cleavage = TextEditingController();
  static TextEditingController back = TextEditingController();
  static TextEditingController waist = TextEditingController();
  static TextEditingController hip = TextEditingController();
  static TextEditingController frontSize = TextEditingController();
  static TextEditingController backSize = TextEditingController();
  static TextEditingController height = TextEditingController();
  static TextEditingController sleeve = TextEditingController();
  static TextEditingController sleeveCircumference = TextEditingController();
  static TextEditingController fist = TextEditingController();

  //Lower garment measures
  static TextEditingController? waistLower;
  static TextEditingController? hipLower;
  static TextEditingController? leg;
  static TextEditingController? knee;
  static TextEditingController? boot;
  static TextEditingController? heightLower;
  static TextEditingController? crotch;

  static void initControllers()
  {
    waistLower = TextEditingController();
    hipLower = TextEditingController();
    leg = TextEditingController();
    knee = TextEditingController();
    boot = TextEditingController();
    heightLower = TextEditingController();
    crotch = TextEditingController();
  }

  static void disposeControllers()
  {
    shoulder.dispose();
    cotilla.dispose();
    bust.dispose();
    bustCircumference.dispose();
    bustHeight.dispose();
    bustSeparation.dispose();
    cleavage.dispose();
    back.dispose();
    waist.dispose();
    hip.dispose();
    frontSize.dispose();
    backSize.dispose();
    height.dispose();
    sleeve.dispose();
    sleeveCircumference.dispose();
    fist.dispose();

    waistLower!.dispose();
    hipLower!.dispose();
    leg!.dispose();
    knee!.dispose();
    boot!.dispose();
    heightLower!.dispose();
    crotch!.dispose();
  }

  static void clearControllers()
  {
    shoulder.clear();
    cotilla.clear();
    bust.clear();
    bustCircumference.clear();
    bustHeight.clear();
    bustSeparation.clear();
    cleavage.clear();
    back.clear();
    waist.clear();
    hip.clear();
    frontSize.clear();
    backSize.clear();
    height.clear();
    sleeve.clear();
    sleeveCircumference.clear();
    fist.clear();

    waistLower!.clear();
    hipLower!.clear();
    leg!.clear();
    knee!.clear();
    boot!.clear();
    heightLower!.clear();
    crotch!.clear();
  }
}