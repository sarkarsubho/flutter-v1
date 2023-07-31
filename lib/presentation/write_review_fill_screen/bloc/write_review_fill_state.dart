// ignore_for_file: must_be_immutable

part of 'write_review_fill_bloc.dart';

class WriteReviewFillState extends Equatable {
  WriteReviewFillState({
    this.addreviewController,
    this.writeReviewFillModelObj,
  });

  TextEditingController? addreviewController;

  WriteReviewFillModel? writeReviewFillModelObj;

  @override
  List<Object?> get props => [
        addreviewController,
        writeReviewFillModelObj,
      ];
  WriteReviewFillState copyWith({
    TextEditingController? addreviewController,
    WriteReviewFillModel? writeReviewFillModelObj,
  }) {
    return WriteReviewFillState(
      addreviewController: addreviewController ?? this.addreviewController,
      writeReviewFillModelObj:
          writeReviewFillModelObj ?? this.writeReviewFillModelObj,
    );
  }
}
