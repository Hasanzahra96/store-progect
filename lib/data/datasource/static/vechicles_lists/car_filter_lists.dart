import 'package:store/data/model/state_model.dart';
import 'package:store/data/model/vechicle_model/car_feature.dart';

final List<StateModel> paytaypCarFilterList = [
  StateModel(label: 'بيع', idState: '1'),
  StateModel(label: 'ايجار', idState: '2'),
  StateModel(label: 'تقسيط', idState: '3')
];
final List<StateModel> geerTypeFilterCarList = [
  StateModel(label: 'عادي', idState: '1'),
  StateModel(label: 'اوتوماتيك', idState: '2')
];
final List<StateModel> feuleTypeFilterCarList = [
  StateModel(label: 'بنزين', idState: '1'),
  StateModel(label: 'مازوت', idState: '2'),
  StateModel(label: 'هجين', idState: '3')
];
final List<StateModel> stateFilterCarList = [
  StateModel(label: 'جديد', idState: '1'),
  StateModel(label: 'مستعمل', idState: '2')
];

List<CarFeature> carFilterFeatureList = [
  CarFeature(name: 'زجاح كهربائي', id: '1'),
  CarFeature(name: 'بلوتوث', id: '2'),
  CarFeature(name: 'مكيف', id: '3'),
  CarFeature(name: 'apple car play', id: '4'),
  CarFeature(name: 'شاشة', id: '5'),
  CarFeature(name: 'كاميرات', id: '6'),
  CarFeature(name: 'حساسات', id: '7'),
  CarFeature(name: 'فتحة سقف', id: '8'),
  CarFeature(name: 'ملاحة GPS', id: '9'),
  CarFeature(name: 'مثبت سرعة', id: '10'),
  CarFeature(name: 'وسائد هوائية', id: '11'),
  CarFeature(name: 'دفع رباعي', id: '12'),
];
