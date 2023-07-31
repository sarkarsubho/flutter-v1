import 'package:equatable/equatable.dart';
import 'listvolume_item_model.dart';

// ignore: must_be_immutable
class CreditCardAndDebitModel extends Equatable {
  CreditCardAndDebitModel({this.listvolumeItemList = const []});

  List<ListvolumeItemModel> listvolumeItemList;

  CreditCardAndDebitModel copyWith(
      {List<ListvolumeItemModel>? listvolumeItemList}) {
    return CreditCardAndDebitModel(
      listvolumeItemList: listvolumeItemList ?? this.listvolumeItemList,
    );
  }

  @override
  List<Object?> get props => [listvolumeItemList];
}
