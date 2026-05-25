import 'package:store/data/model/properties_model/decor_option.dart';
import 'package:store/data/model/properties_model/property_feature.dart';
import 'package:store/data/model/state_model.dart';

////////////// قوائم صفحه العقارات
final List<StateModel> lowStatePropertyList = [
  StateModel(label: 'الكل', idState: '0'),
  StateModel(label: 'طابو', idState: '1'),
  StateModel(label: 'اسهم', idState: '2'),
  StateModel(label: 'وقف', idState: '3')
];
final List<StateModel> taypPropertyList = [
  StateModel(label: 'الكل', idState: '0'),
  StateModel(label: 'بيع', idState: '1'),
  StateModel(label: 'ايجار', idState: '2'),
  StateModel(label: 'تقسيط', idState: '3')
];

////////////// قوائم صفحه  اعلانات العقارات
final List<StateModel> stateAdsPropertyList = [
  StateModel(label: 'جاهزة للاستخدام', idState: '1'),
  StateModel(label: 'عظم فقط', idState: '2'),
  StateModel(label: 'قيد التجهيز', idState: '3')
];
final List<StateModel> lowStateAdsPropertyList = [
  StateModel(label: 'طابو', idState: '1'),
  StateModel(label: 'اسهم', idState: '2'),
  StateModel(label: 'وقف', idState: '3')
];
final List<StateModel> taypAdsPropertyList = [
  StateModel(label: 'بيع', idState: '1'),
  StateModel(label: 'ايجار', idState: '2'),
  StateModel(label: 'تقسيط', idState: '3')
];
final List<StateModel> alltaypAdsPropertyList = [
  StateModel(label: 'يومي', idState: '1'),
  StateModel(label: 'اسبوعي', idState: '2'),
  StateModel(label: 'شهري', idState: '3'),
  StateModel(label: 'سنوي', idState: '4')
];
final List<StateModel> myPropertyAdsTypeList = [
  StateModel(label: 'شقة', idState: '1'),
  StateModel(label: 'غرفة', idState: '2'),
  StateModel(label: 'مكتب', idState: '3'),
  StateModel(label: 'أرض', idState: '4'),
];

final List<PropertyFeature> propertyFeaturesAdsList = [
  PropertyFeature(label: 'تلبيس حجرة', id: '1'),
  PropertyFeature(label: 'تراس', id: '2'),
  PropertyFeature(label: 'حديقة', id: '3'),
  PropertyFeature(label: 'كراج', id: '4'),
  PropertyFeature(label: 'حارس', id: '5'),
  PropertyFeature(label: 'كاميرات مراقبة', id: '6'),
  PropertyFeature(label: 'طاقة شمسية', id: '7'),
];

final List<StateModel> decoreAdsPropertyList = [
  StateModel(label: 'جديد', idState: '1'),
  StateModel(label: 'مجدد', idState: '2'),
  StateModel(label: 'قديم', idState: '3')
];
final List<PropertyFeature> morePropertyAdsFeaturesList = [
  PropertyFeature(label: 'تكييف', id: '1'),
  PropertyFeature(label: 'سخان مياه', id: '2'),
  PropertyFeature(label: 'طاقه شمسيه', id: '3'),
  PropertyFeature(label: 'تدفئه', id: '4'),
  PropertyFeature(label: 'اناره بطاريه', id: '5'),
  PropertyFeature(label: 'سخان طاقة شمسية', id: '6'),
];
final List<PropertyFeature> morePropertyAdsFeaturesList2 = [
  PropertyFeature(label: 'كهرباء', id: '1'),
  PropertyFeature(label: 'ماء', id: '2'),
  PropertyFeature(label: 'صرف صحي', id: '3'),
];
final List<DecorOptionModel> decorOptions = [
  DecorOptionModel(
    key: 'kitchen',
    title: 'المطبخ',
    items: ['أمريكي', 'أوروبي', 'محلي'],
  ),
  DecorOptionModel(
    key: 'floor',
    title: 'الأرضيات',
    items: ['سيراميك', 'رخام', 'باركيه'],
  ),
  DecorOptionModel(
    key: 'paint',
    title: 'الدهان',
    items: ['زيتي', 'مائي', 'ناعم'],
  ),
  DecorOptionModel(
    key: 'roof',
    title: 'الأسقف',
    items: ['جبس', 'مستوى', 'خشبي'],
  ),
  DecorOptionModel(
    key: 'lighting',
    title: 'الإنارة',
    items: ['سبوت لايت', 'نجف', 'عادية'],
  ),
];
final List<StateModel> landStateAdsPropertyList = [
  StateModel(label: 'داخل المخطط التنظيمي', idState: '1'),
  StateModel(label: 'خارج المخطط التنظيمي', idState: '2'),
];

List<PropertyFeature> landFeatureAdsList = [
  PropertyFeature(label: 'كهرباء', id: '1'),
  PropertyFeature(label: 'صرف صحي', id: '2'),
  PropertyFeature(label: 'بئر ماء', id: '3'),
  PropertyFeature(label: 'أشجار مثمرة', id: '4'),
  PropertyFeature(label: 'مياه', id: '5'),
  PropertyFeature(label: 'طريق معبد', id: '6'),
  PropertyFeature(label: 'سور محيط', id: '7'),
];
