import 'package:store/data/model/properties_model/property_feature.dart';
import 'package:store/data/model/state_model.dart';

final List<StateModel> paytaypPropertyFilterList = [
  StateModel(label: 'بيع', idState: '1'),
  StateModel(label: 'ايجار', idState: '2'),
  StateModel(label: 'تقسيط', idState: '3')
];
final List<StateModel> myPropertyFilterTypeList = [
  StateModel(label: 'شقة', idState: '1'),
  StateModel(label: 'غرفة', idState: '2'),
  StateModel(label: 'مكتب', idState: '3'),
  StateModel(label: 'أرض', idState: '4'),
];
final List<StateModel> roomNumFilterList = [
  StateModel(label: '1', idState: '1'),
  StateModel(label: '2', idState: '2'),
  StateModel(label: '3', idState: '3'),
  StateModel(label: '4+', idState: '4'),
];
final List<StateModel> bathRoomNumFilterList = [
  StateModel(label: '1', idState: '1'),
  StateModel(label: '2', idState: '2'),
  StateModel(label: '3+', idState: '3'),
];
final List<StateModel> stateFilterPropertyList = [
  StateModel(label: 'جاهز للاستخدام', idState: '1'),
  StateModel(label: 'عظم فقط', idState: '2'),
  StateModel(label: 'قيد التجهيز', idState: '3')
];
final List<StateModel> furnishFilterPropertyList = [
  StateModel(label: 'مفروش', idState: '1'),
  StateModel(label: 'غير مفروش', idState: '2'),
];
final List<StateModel> diractionFilterPropertyList = [
  StateModel(label: 'شمال', idState: '1'),
  StateModel(label: 'جنوب', idState: '2'),
  StateModel(label: 'شرق', idState: '3'),
  StateModel(label: 'غرب', idState: '4'),
];

final List<PropertyFeature> propertyFilterFeaturesList = [
  PropertyFeature(label: 'تلبيس حجرة', id: '1'),
  PropertyFeature(label: 'تراس', id: '2'),
  PropertyFeature(label: 'حديقة', id: '3'),
  PropertyFeature(label: 'كراج', id: '4'),
  PropertyFeature(label: 'حارس', id: '5'),
  PropertyFeature(label: 'كاميرات مراقبة', id: '6'),
  PropertyFeature(label: 'طاقة شمسية', id: '7'),
];

final List<StateModel> landStateFilterPropertyList = [
  StateModel(label: 'داخل المخطط التنظيمي', idState: '1'),
  StateModel(label: 'خارج المخطط التنظيمي', idState: '2'),
];
List<PropertyFeature> landFilterFeatureList = [
  PropertyFeature(label: 'كهرباء', id: '1'),
  PropertyFeature(label: 'صرف صحي', id: '2'),
  PropertyFeature(label: 'بئر ماء', id: '3'),
  PropertyFeature(label: 'أشجار مثمرة', id: '4'),
  PropertyFeature(label: 'مياه', id: '5'),
  PropertyFeature(label: 'طريق معبد', id: '6'),
  PropertyFeature(label: 'سور محيط', id: '7'),
];
//=========================filterResult==================//
final List<StateModel> sortByFilterResultList = [
  StateModel(label: 'الأحدث أولاً', idState: '1'),
  StateModel(label: 'الأقدم أولاً', idState: '2'),
];
