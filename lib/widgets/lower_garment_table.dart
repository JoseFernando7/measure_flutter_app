import 'package:app_medidas/models/measure.dart';
import 'package:flutter/material.dart';
import '../models/hive_data.dart';
import 'measure_buttons.dart';
import 'measure_text_field.dart';

class LowerGarmentsMeasureTableWidget extends StatefulWidget
{
  final TextEditingController nameController;
  final TextEditingController cellnumController;

  const LowerGarmentsMeasureTableWidget(
  {
    super.key, 
    required this.nameController, 
    required this.cellnumController
  });

  @override
  State<LowerGarmentsMeasureTableWidget> createState() => _LowerGarmentsMeasureTableWidgetState();
}

class _LowerGarmentsMeasureTableWidgetState extends State<LowerGarmentsMeasureTableWidget> 
{
  //Lower garment measures
  final TextEditingController waistLower = TextEditingController();
  final TextEditingController hipLower = TextEditingController();
  final TextEditingController leg = TextEditingController();
  final TextEditingController knee = TextEditingController();
  final TextEditingController boot = TextEditingController();
  final TextEditingController heightLower = TextEditingController();
  final TextEditingController crotch = TextEditingController();

  final HiveData hiveData = const HiveData();

  @override
  void dispose() 
  {
    waistLower.dispose();
    hipLower.dispose();
    leg.dispose();
    knee.dispose();
    boot.dispose();
    heightLower.dispose();
    crotch.dispose();

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
            controller: waistLower, 
            text: 'Cintura', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: hipLower, 
            text: 'Cadera', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: leg, 
            text: 'Pierna', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: knee, 
            text: 'Rodilla', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: boot, 
            text: 'Bota', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: heightLower, 
            text: 'Largo', 
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: crotch, 
            text: 'Tiro', 
            keyboardType: TextInputType.number
          ),

          const Padding(padding: EdgeInsets.symmetric(vertical: 20)),

          MyButton(
            text: 'Agregar', 
            onPressed: () async
            {
              await hiveData.saveLowerMeasure(LowerMeasures(
                name: widget.nameController.text, 
                cellNumber: widget.cellnumController.text, 
                waistLower: waistLower.text, 
                hipLower: hipLower.text, 
                leg: leg.text, 
                knee: knee.text, 
                boot: boot.text, 
                heightLower: heightLower.text, 
                crotch: crotch.text
                )
              );

              widget.nameController.clear();
              widget.cellnumController.clear();
              waistLower.clear();
              hipLower.clear();
              leg.clear();
              knee.clear();
              boot.clear();
              heightLower.clear();
              crotch.clear();
            },
          )
        ],
      ),
    );
  }
}