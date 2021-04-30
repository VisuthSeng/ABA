import 'package:aba/common/route_name.dart';
import 'package:aba/di/Notification_binding.dart';
import 'package:aba/di/home_binding.dart';
import 'package:aba/ui/screen/Appbar/appbar_hotline/appbar_contactus.dart';
import 'package:aba/ui/screen/Appbar/appbar_notification/notification_screen.dart';
import 'package:aba/ui/screen/Cash_to_ATM/Cash_to_ATM_screen.dart';
import 'package:aba/ui/screen/Loans/Loan_screen.dart';
import 'package:aba/ui/screen/New_account/Cards_screen.dart';
import 'package:aba/ui/screen/Transfers/Transfer_screen.dart';
import 'package:aba/ui/screen/add_new_schedule/add_new_schedule_screen.dart';
import 'package:aba/ui/screen/home/Page_card/Account_Card/Account_card.dart';
import 'package:aba/ui/screen/home/Page_card/Card/Card_screen.dart';
import 'package:aba/ui/screen/home/Page_card/Payment_Card/Payments_card.dart';
import 'package:aba/ui/screen/home/home_screen.dart';
import 'package:aba/ui/screen/schedule_payment/schedule_payment_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteName.home,
      getPages: [
        GetPage(
          name: RouteName.home,
          page: () => HomeABA(),
          transition: Transition.rightToLeft,
          binding: HomeBinding(),
        ),
        GetPage(
          name: RouteName.appbar_notification,
          page: () => NotificationScreen(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.appbar_hotline,
          page: () => AppbarContactUs(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.account_cards,
          page: () => AccountPage(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.card_cards,
          page: () => CardScreen(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.payment_cards,
          page: () => Payments(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.newaccount_card,
          page: () => NewAccountScreen(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.cashtoatm_card,
          page: () => CashtoATMScreen(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.transfers_card,
          page: () => TransferScreen(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.loans_card,
          page: () => LoansScreen(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.schedule_payment,
          page: () => SchedulePaymentView(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.addnewschedule,
          page: () => AddnewSchedule(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.scanqr,
          page: () => MyApp(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        //GetPage(
        // name: RouteName.schedule_payments,
        // page: () => SchedulePayments(),
        // transition: Transition.rightToLeft,
        // binding: NotificationBinding(),
        //),
      ],
    );
  }
}
