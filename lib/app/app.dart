
import 'package:interview_exercise/views/staff/staff_view.dart';
import 'package:interview_exercise/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
     MaterialRoute(page: StaffForm),
    MaterialRoute(page: StartupView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  // bottomsheets: [
  //   StackedBottomsheet(classType: NoticeSheet),
  //   // @stacked-bottom-sheet
  // ],
  // dialogs: [
  //   StackedDialog(classType: InfoAlertDialog),
  //   // @stacked-dialog
  // ],
)
class App {}




