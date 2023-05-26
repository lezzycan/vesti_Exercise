// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_exercise/core/common/app_strings.dart';
import 'package:interview_exercise/core/common/vesti_colors.dart';
import 'package:interview_exercise/core/model/staff_model.dart';
import 'package:interview_exercise/core/shared/dumb_widgets/textfield_input.dart';
import 'package:interview_exercise/core/shared/dumb_widgets/vesti_button.dart';
import 'package:interview_exercise/core/shared/vesti_spacing.dart';
import 'package:interview_exercise/views/staff/staff_viewmmmodel.dart';
import 'package:stacked/stacked.dart';

class StaffForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return ViewModelBuilder<StaffVieModel>.reactive(
        viewModelBuilder: () => StaffVieModel(),
        onDispose: (viewModel) => viewModel.dispose(),
        builder: (context, viewModel, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: SafeArea(
                child: Form(
                  key: viewModel.formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFieldInput(
                          controller: viewModel.fullNameController,
                          labelText: 'Full Name',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Filed must not be null';
                            }
                          },
                        ),
                        SizedBox(height: 10),
                        TextFieldInput(
                          controller: viewModel.emailController,
                          labelText: 'Email Address',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter an email address';
                            } else if (!viewModel.isEmailUnique(value)) {
                              return 'This email address is already used';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFieldInput(
                            controller: viewModel.addressController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Field must not be null";
                              }
                            },
                            labelText: 'Address'),
                        SizedBox(height: 10),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: viewModel.skillControllers.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: TextFieldInput(
                                controller: viewModel.skillControllers[index],
                                labelText: 'Skill ${index + 1}',
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (viewModel.skillControllers.length < 5) {
                                  viewModel.addSkills();
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Maximum Skills Reached'),
                                        content: Text(
                                            'You can add up to 5 skills per staff member.'),
                                        actions: [
                                          TextButton(
                                            child: Text('OK'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              child: Text(ksAddSkill),
                            ),
                            VestiSpacing.mediumWidth(),
                            Expanded(
                              child: VestiButtonWidget(
                                  widths: 3.0,
                                  width: 3.0,
                                  color: VestiColors.primary.shade100,
                                  borderColor: VestiColors.secondary.shade300,
                                  borderRadius: BorderRadius.circular(8.r),
                                  onPressed: viewModel.removeSkill,
                                  labelTextStyle: _textTheme.bodySmall!
                                      .copyWith(color: VestiColors.secondary),
                                  label: ksRemoveSkill),
                            ),
                            VestiSpacing.mediumWidth(),
                            Expanded(
                              child: VestiButtonWidget(
                                widths: 3.0,
                                width: 3.0,
                                color: VestiColors.primary.shade100,
                                borderColor: VestiColors.primary.shade900,
                                borderRadius: BorderRadius.circular(10.r),
                                onPressed: viewModel.addStaff,
                                label: ksAddStaff,
                                labelTextStyle: _textTheme.bodySmall!
                                    .copyWith(color: VestiColors.primary),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Staff List',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ),
                        if (viewModel.staffList.isNotEmpty)
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: viewModel.staffList.length,
                            itemBuilder: (BuildContext context, int index) {
                              Staff staff = viewModel.staffList[index];
                              return Card(
                                  margin: EdgeInsets.all(10),
                                  color: VestiColors.secondary.shade400,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                            labelText: staff.fullName,
                                          ),
                                        ),
                                        TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                            labelText: staff.email,
                                          ),
                                        ),
                                        TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                            labelText: staff.address,
                                          ),
                                        ),
                                        TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                            labelText: staff.skills.join(", "),
                                          ),
                                        ),
                                        VestiSpacing.height(20.h),
                                        ElevatedButton(
                                            onPressed: () {
                                              viewModel.removeStaff(index);
                                            },
                                            child: Text(ksRemoveStaff))
                                      ],
                                    ),
                                  ));
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
// ListTile(
//                                 title: Text(staff.fullName),
//                                 subtitle: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(staff.email),
//                                     SizedBox(height: 8.0),
//                                     Text('Skills: ${staff.skills.join(", ")}'),
//                                   ],
//                                 ),
//                                 trailing: IconButton(
//                                   icon: Icon(Icons.delete),
//                                   onPressed: () {
//                                     viewModel.removeStaff(index);
//                                   },
//                                 ),
//                               ),
