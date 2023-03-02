import 'package:app_medidas/models/hive_data.dart';
import 'package:app_medidas/models/measure.dart';
import 'package:app_medidas/widgets/measure_text_field.dart';
import 'package:flutter/material.dart';

import 'measure_buttons.dart';

class UpperGarmentsMeasureTableWidget extends StatefulWidget 
{
  final TextEditingController nameController;
  final TextEditingController cellnumController;

  const UpperGarmentsMeasureTableWidget(
  {
    super.key,
    required this.nameController,
    required this.cellnumController
  });

  @override
  State<UpperGarmentsMeasureTableWidget> createState() => _UpperGarmentsMeasureTableWidgetState();
}

class _UpperGarmentsMeasureTableWidgetState extends State<UpperGarmentsMeasureTableWidget> 
{
  final TextEditingController shoulder = TextEditingController();
  final TextEditingController cotilla = TextEditingController();
  final TextEditingController bust = TextEditingController();
  final TextEditingController bustCircumference = TextEditingController();
  final TextEditingController bustHeight = TextEditingController();
  final TextEditingController bustSeparation= TextEditingController();
  final TextEditingController cleavage = TextEditingController();
  final TextEditingController back = TextEditingController();
  final TextEditingController waist = TextEditingController();
  final TextEditingController hip = TextEditingController();
  final TextEditingController frontSize = TextEditingController();
  final TextEditingController backSize = TextEditingController();
  final TextEditingController height = TextEditingController();
  final TextEditingController sleeve= TextEditingController();
  final TextEditingController sleeveCircumference= TextEditingController();
  final TextEditingController fist = TextEditingController();

  final HiveData hiveData = const HiveData();

  @override
  void dispose() 
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

    super.dispose();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          MeasureTextField(
            controller: shoulder, 
            text: 'Hombro', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: cotilla, 
            text: 'Cotilla', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: bust, 
            text: 'Busto', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: bustCircumference, 
            text: 'Contorno Busto', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: bustHeight, 
            text: 'Altura Busto', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: bustSeparation, 
            text: 'Separación Busto', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: cleavage, 
            text: 'Escote', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: back, 
            text: 'Espalda', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: waist, 
            text: 'Cintura', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: hip, 
            text: 'Cadera', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: frontSize, 
            text: 'Talle Delantero', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: backSize, 
            text: 'Talle Posterior', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: height, 
            text: 'Largo', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: sleeve, 
            text: 'Manga', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: sleeveCircumference, 
            text: 'Contorno Manga', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),
          
          MeasureTextField(
            controller: fist, 
            text: 'Puño', 
            keyboardType: TextInputType.number
          ),

          const Padding(padding: EdgeInsets.symmetric(vertical: 20)),

          MyButton(
            text: 'Agregar', 
            onPressed: () async
            {
              await hiveData.saveUpperMeasure(UpperMeasures(
                name: widget.nameController.text, 
                cellNumber: widget.cellnumController.text, 
                shoulder: shoulder.text, 
                cotilla: cotilla.text, 
                bust: bust.text, 
                bustCircumference: bustCircumference.text, 
                bustHeight: bustHeight.text, 
                bustSeparation: bustSeparation.text, 
                cleavage: cleavage.text, 
                back: back.text, 
                waist: waist.text, 
                hip: hip.text, 
                frontSize: frontSize.text, 
                backSize: backSize.text, 
                height: height.text, 
                sleeve: sleeve.text, 
                sleeveCircumference: sleeveCircumference.text, 
                fist: fist.text
              ));

              widget.nameController.clear();
              widget.cellnumController.clear();
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
            },
          )
        ],
      ),
    );
  }
}