import 'package:store/core/constant/image_assets.dart';
import 'package:store/data/model/drawer_model/point_of_sale_model.dart';
import 'package:store/data/model/state_model.dart';

final List<PointOfSaleModel> pointOfSaleList = [
  PointOfSaleModel(
    imagePath: AppImageAssets.vechical,
    title: 'نقطة بيع 1',
    subTitle: 'وصف نقطة البيع 1',
    firstTime: '9:00 صباحًا',
    lastTime: '5:00 مساءً',
    location: 'العنوان 1',
    distans: '2 كم',
  ),
  PointOfSaleModel(
    imagePath: AppImageAssets.vechical,
    title: 'نقطة بيع 2',
    subTitle: 'وصف نقطة البيع 2',
    firstTime: '10:00 صباحًا',
    lastTime: '6:00 مساءً',
    location: 'العنوان 2',
    distans: '3 كم',
  ),
  PointOfSaleModel(
    imagePath: AppImageAssets.vechical,
    title: 'نقطة بيع 3',
    subTitle: 'وصف نقطة البيع 3',
    firstTime: '8:00 صباحًا',
    lastTime: '4:00 مساءً',
    location: 'العنوان 3',
    distans: '1.5 كم',
  ),
];
final List<StateModel> pointOfSaleFilterResultList = [
  StateModel(label: 'الأقرب أولا', idState: '1'),
  StateModel(label: 'الأبعد أولا', idState: '2'),
];
