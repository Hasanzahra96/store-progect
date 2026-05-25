import 'package:store/data/model/vechicle_model/car_feature.dart';
import 'package:store/data/model/state_model.dart';

//////////////=======================قوائم صفحه السيارات
final List<StateModel> stateCarList = [
  StateModel(label: 'الكل', idState: '0'),
  StateModel(label: 'جديدة', idState: '1'),
  StateModel(label: 'مستعملة', idState: '2')
];
final List<StateModel> taypCarList = [
  StateModel(label: 'الكل', idState: '0'),
  StateModel(label: 'بيع', idState: '1'),
  StateModel(label: 'ايجار', idState: '2'),
  StateModel(label: 'تقسيط', idState: '3')
];
//////////////////================قوائم صفحه اعلانات السيارات
final List<StateModel> stateAdsCarList = [
  StateModel(label: 'جديدة', idState: '1'),
  StateModel(label: 'مستعملة', idState: '2')
];
final List<StateModel> taypAdsCarList = [
  StateModel(label: 'بيع', idState: '1'),
  StateModel(label: 'ايجار', idState: '2'),
  StateModel(label: 'تقسيط', idState: '3')
];
final List<StateModel> alltaypAdsCarList = [
  StateModel(label: 'يومي', idState: '1'),
  StateModel(label: 'اسبوعي', idState: '2'),
  StateModel(label: 'شهري', idState: '3'),
  StateModel(label: 'سنوي', idState: '4')
];
/////////////
final List<StateModel> acxedentStateAdsList = [
  StateModel(label: 'لا', idState: '1'),
  StateModel(label: 'نعم', idState: '2')
];
//////////////
List<CarFeature> carFeatureAdsList = [
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

final List<CarFeature> carCheckAdsItems = [
  CarFeature(id: '1', name: 'صدمة خفيفة - حكة'),
  CarFeature(id: '2', name: 'صدمة قوية - شاسيه'),
  CarFeature(id: '3', name: 'خروج الوسادة'),
];
