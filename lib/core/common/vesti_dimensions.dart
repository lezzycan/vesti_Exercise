class VestiDimensions {
  /// This class provides the default dimensions to be used by the Lotus app.

/// These constants can be used in place of using hardcoded heights or widths for in-app dimensioning.
/// For example, rather than declaring SizedBox(height: 16), we can declare SizedBox(height: AfmDimensions.medium).
/// For example, rather than declaring SizedBox(width: 4), we can declare SizedBox(width: AfmDimensions.tiny).
  
  VestiDimensions._();

  static const double zero = 0;
  static const double tiny = 4;
  static const double xxxSmall = 8;
  static const double xxSmall = 10;
  static const double xSmall = 12;
  static const double small = 14;
  static const double medium = 16;
  static const double big = 24;
  static const double large = 32;
  static const double xLarge = 40;
  static const double xxLarge = 60;
  static const double xxxLarge = 84;
}



 

 // ListView.builder(
                          //   shrinkWrap: true,
                          //   itemCount: _skillControllers.length,
                          //   itemBuilder: (BuildContext context, int index) {
                          //     return TextFormField(
                          //       controller: _skillControllers[index],
                          //       decoration: InputDecoration(
                          //           labelText: 'Skill ${index + 1}'),
                          //       validator: (value) {
                          //         if (value!.isEmpty) {
                          //           return 'Please enter a skill';
                          //         }
                          //         return null;
                          //       },
                          //     );
                          //   },
                          // ),
                          // Expanded(
                          //   child: VestiButtonWidget(
                          //     onPressed: () {
                          //       if (_skillControllers.length < 2) {
                          //         //   addSkill(staffIndex)
                          //         _skillControllers
                          //             .add(TextEditingController());
                          //       }
                          //     },
                          //     label: '+Add Skill',
                          //     labelTextStyle: _textTheme.bodyMedium!
                          //         .copyWith(color: VestiColors.primary),
                          //     borderColor: VestiColors.primary.shade400,
                          //     borderRadius: BorderRadius.circular(5.r),
                          //     color: VestiColors.primary.shade50,
                          //     width: 3.0,
                          //   ),
                          // ),
                       
                          // Expanded(
                          //   child: VestiButtonWidget(
                          //     onPressed: () {
                          //       _skillControllers
                          //           .remove(TextEditingController());
                          //       removeSkills();
                          //     },
                          //     label: '-Remove Skill',
                          //     labelTextStyle: _textTheme.bodyLarge!.copyWith(
                          //         color: VestiColors.secondary,
                          //         fontWeight: FontWeight.w900),
                          //     color: VestiColors.secondary.shade50,
                          //     borderColor: VestiColors.secondary.shade400,
                          //     width: 3.0,
                          //     borderRadius: BorderRadius.circular(5.r),
                          //   ),
                          // ),
                      