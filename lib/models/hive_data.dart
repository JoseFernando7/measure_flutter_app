import 'package:app_medidas/models/measure.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveData
{
  const HiveData();

  Future<int> saveUpperMeasure(UpperMeasures upperMeasure) async
  {
    final Box<UpperMeasures> box = await Hive.openBox('upper');
    return box.add(upperMeasure);
  }

  Future<int> saveLowerMeasure(LowerMeasures lowerMeasures) async
  {
    final Box<LowerMeasures> boxLower = await Hive.openBox('lower');
    return boxLower.add(lowerMeasures);
  }

  Future<List<UpperMeasures>> get upperMeasures async
  {
    final Box<UpperMeasures> box = await Hive.openBox('upper');
    return box.values.toList();
  }

  Future<List<LowerMeasures>> get lowerMeasures async
  {
    final Box<LowerMeasures> boxLower = await Hive.openBox('lower');
    return boxLower.values.toList();
  }

  Future<void> deleteUpperMeasures(int index) async
  {
    final Box<UpperMeasures> box = Hive.box('upper');
    box.deleteAt(index);
  }

  Future<void> deleteLowerMeasures(int index) async
  {
    final Box<LowerMeasures> box = Hive.box('lower');
    box.deleteAt(index);
  }
}