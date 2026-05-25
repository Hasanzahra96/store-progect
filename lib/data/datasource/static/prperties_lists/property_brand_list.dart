import 'package:store/core/constant/image_assets.dart';
import 'package:store/data/model/total_brand_model.dart';

final List<TotalBrandModel> propertyBrandList = [
  TotalBrandModel(
    title: 'الكل',
    svg: AppImageAssets.realestate,
    id: '0',
  ),
  TotalBrandModel(title: 'شقة', svg: AppImageAssets.appartments, id: '1'),
  TotalBrandModel(title: 'غرفة', svg: AppImageAssets.room, id: '2'),
  TotalBrandModel(title: 'مكتب', svg: AppImageAssets.office, id: '3'),
  TotalBrandModel(title: 'ارض', svg: AppImageAssets.earth, id: '4'),
];
