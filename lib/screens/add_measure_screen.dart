import 'package:app_medidas/widgets/lower_garment_table.dart';
import 'package:app_medidas/widgets/upper_garment_table.dart';
import 'package:app_medidas/widgets/measure_text_field.dart';
import 'package:flutter/material.dart';

import '../utils/controller_list.dart';
import '../widgets/measure_buttons.dart';

class MeasuresScreen extends StatefulWidget 
{
  final bool inferior;

  const MeasuresScreen({super.key, required this.inferior});

  @override
  State<MeasuresScreen> createState() => _MeasuresScreenState();
}

class _MeasuresScreenState extends State<MeasuresScreen> 
{
  final TextEditingController nameController = TextEditingController();
  final TextEditingController cellnumController = TextEditingController();

  @override
  void dispose() 
  {
    nameController.dispose();
    cellnumController.dispose();
    //ControllerList.disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 255, 225),
      appBar: AppBar(
        title: const Text('Tabla de medidas'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  //color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Column(
                  children: [
                    MeasureTextField(
                      controller: nameController, 
                      text: 'Nombre',
                      keyboardType: TextInputType.text,
                    ),
        
                    const SizedBox(height: 10),
        
                    MeasureTextField(
                      controller: cellnumController,
                      text: 'Celular',
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),
              ),

              const Padding(padding: EdgeInsets.only(bottom: 15)),
        
              const Divider(color: Colors.black, height: 2),
        
              widget.inferior 
              ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: LowerGarmentsMeasureTableWidget(nameController: nameController, cellnumController: cellnumController),
              )

              : Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: UpperGarmentsMeasureTableWidget(nameController: nameController, cellnumController: cellnumController,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}