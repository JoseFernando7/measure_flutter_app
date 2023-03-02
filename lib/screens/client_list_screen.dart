import 'package:app_medidas/models/hive_data.dart';
import 'package:app_medidas/models/measure.dart';
import 'package:app_medidas/screens/lower_measure_screen.dart';
import 'package:app_medidas/screens/upper_measure_screen.dart';
import 'package:app_medidas/widgets/confirm_delete.dart';
import 'package:flutter/material.dart';

class ClientListScreen extends StatefulWidget 
{
  const ClientListScreen({super.key});

  @override
  State<ClientListScreen> createState() => _ClientListScreenState();
}

class _ClientListScreenState extends State<ClientListScreen> 
{
  final HiveData hiveData = const HiveData();

  List<UpperMeasures> upperClients = [];
  List<LowerMeasures> lowerClients = [];

  @override
  void initState()
  {
    super.initState();
    getData();
  }

  // void deleteUpperMeasure(int index)
  // {
  //   setState(()
  //   {
  //     upperClients.removeAt(index);
  //   });

  //   getData();
  // }

  Future<void> getData() async
  {
    upperClients = await hiveData.upperMeasures;
    lowerClients = await hiveData.lowerMeasures;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 255, 225),
      appBar: AppBar(
        title: const Text('Lista de clientes'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: upperClients.length,
                itemBuilder: (context, index) 
                {
                  return Container(
                    decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: ListTile(
                      title: Text(upperClients[index].name),
                      subtitle: Text(upperClients[index].cellNumber),
                      onTap: () 
                      {
                        debugPrint('Tapped');
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UpperMeasureScreen(clientMeasures: upperClients[index]),
                          )
                        );
                      },
                      trailing: IconButton(
                        color: Colors.red,
                        icon: const Icon(Icons.delete),
                        onPressed: () 
                        { 
                          showDialog(
                            context: context, 
                            builder: (context) 
                            {
                              return ConfirmDeleteDialog(
                                text: '¿Desea eliminar las medidas de ${upperClients[index].name}?',
                                onDelete: () 
                                {
                                  hiveData.deleteUpperMeasures(index);
                                  getData();

                                  Navigator.of(context).pop();

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Medidas de ${upperClients[index].name} eliminadas')
                                    )
                                  );
                                },
                              );
                            },
                          );
                        }
                      ),
                    ),
                  );
                },
              )
            ),

            const Divider(color: Colors.black, height: 2),

            Expanded(
              child: ListView.builder(
                itemCount: lowerClients.length,
                itemBuilder: (context, index) 
                {
                  return Container(
                    decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: ListTile(
                      title: Text(lowerClients[index].name),
                      subtitle: Text(lowerClients[index].cellNumber),
                      onTap: () 
                      {
                        debugPrint('Tapped');
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LowerMeasureScreen(clientMeasures: lowerClients[index]),
                          )
                        );
                      },
                      trailing: IconButton(
                        color: Colors.red,
                        icon: const Icon(Icons.delete),
                        onPressed: () 
                        {
                          showDialog(
                            context: context, 
                            builder: (context) 
                            {
                              return ConfirmDeleteDialog(
                                text: '¿Desea eliminar las medidas de ${lowerClients[index].name}?',
                                onDelete: () 
                                {
                                  hiveData.deleteLowerMeasures(index);
                                  getData();

                                  Navigator.of(context).pop();

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Medidas de ${lowerClients[index].name} eliminadas')
                                    )
                                  );
                                },
                              );
                            },
                          );
                        }
                      ),
                    ),
                  );
                },
              )
            )
          ],
        ),
      )
    );
  }
}