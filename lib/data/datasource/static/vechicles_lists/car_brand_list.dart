import 'package:store/core/constant/image_assets.dart';
import 'package:store/data/model/total_brand_model.dart';

final List<TotalBrandModel> carBrandList = [
  TotalBrandModel(
    title: 'الكل',
    svg: AppImageAssets.car,
    id: '0',
  ),
  TotalBrandModel(title: 'تويوتا', svg: AppImageAssets.toyota, id: '1'),
  TotalBrandModel(title: 'نيسان', svg: AppImageAssets.nissan, id: '2'),
  TotalBrandModel(title: 'هيونداي', svg: AppImageAssets.hyundai, id: '3'),
  TotalBrandModel(title: 'فورد', svg: AppImageAssets.ford, id: '4'),
  TotalBrandModel(title: 'شيفروليه', svg: AppImageAssets.chevrolet, id: '5'),
];
