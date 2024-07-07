import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/add_teacher_repo/add_teacher_repo.dart';
import 'add_teacher_state.dart';

class AddTeacherCubit extends Cubit<AddTeacherState> {
  final AddTeacherRepo addTeacherRepo;
  AddTeacherCubit(this.addTeacherRepo) : super(const AddTeacherState.initial());
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nationalIdController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitAddTeacherStates(String token,
      {required String Name,required String Email,required String NationalNum,required File Image,required String SubjectName,required List<String> AssignClassId}) async {
    emit(const AddTeacherState.loading());
    final response = await addTeacherRepo.addTeacherData(token,Name: Name,Email: Email,NationalNum: NationalNum,Image: Image,AssignClassId: AssignClassId,SubjectName: SubjectName);

    response.when(
      success: (addTeacherData) {
        emit(AddTeacherState.success(addTeacherData));
      },
      failure: (error) {
        emit(AddTeacherState.error(error: error.apiErrorModel.errorMessage ?? ''));
      },
    );
  }

}
