
 import 'package:mvvm_flutter/model/picsum_model.dart';
import 'package:mvvm_flutter/services/services.dart';

class ListPictureViewModel{
  List<ListPictureViewModel>? pictures;

  get picSumModel => null;

  Future<void> fetchPictures() async{
    final apiResult = await Service().fetchPicturesAPI();
    this.pictures = apiResult.map((e) => PictureViewModel(e)).cast<ListPictureViewModel>().toList();
  }

 }

 class PictureViewModel {
  final PicSumModel? picSumModel;

  PictureViewModel(this.picSumModel);
 }