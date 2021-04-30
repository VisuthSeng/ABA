import 'package:aba/data/model/notification_announcement_model.dart';
import 'package:aba/data/model/transaction_model.dart';
import 'package:flutter/material.dart';

class DataTest {
  const DataTest();

  static Future<List<TransactionModel>> listitemTransaction() async {
    var list = <TransactionModel>[];
    list = [
      TransactionModel(
        image: "assets/cash-in-logo.png",
        title: "Cash Deposit",
        dateTime: "Mar/17/2021 / 14:10:04",
        description: "20.00 USD is deposit to account 002 206 023",
      ),
      TransactionModel(
        image: "assets/vector-logo.png",
        color: Colors.blue,
        title: "Apple.com/Bill",
        dateTime: "Mar/17/2021 / 14:10:04",
        description:
            "0.99 USD is Blocked on account 002 206 023 for purchase made by MASTERCARD *9835",
      ),
      TransactionModel(
        image: "assets/sabay.jpg",
        title: "Sabay Digital",
        dateTime: "Mar/17/2021 / 14:10:04",
        description: "3.00 USD is paid for 26279118 from account 002206023",
      ),
      TransactionModel(
        image: "assets/cellcard2.jpg",
        title: "Cellcard",
        dateTime: "Mar/17/2021 / 14:10:04",
        description:
            "2.00 USD is blocked on account 002 206 023 for Top-up Phone Number",
      ),
      TransactionModel(
        image: "assets/cellcard2.jpg",
        title: "Cellcard",
        dateTime: "Mar/17/2021 / 14:10:04",
        description:
            "2.00 USD is blocked on account 002 206 023 for Top-up Phone Number",
      ),
      TransactionModel(
        image: "assets/cellcard2.jpg",
        title: "Cellcard",
        dateTime: "Mar/17/2021 / 14:10:04",
        description:
            "2.00 USD is blocked on account 002 206 023 for Top-up Phone Number",
      ),
      TransactionModel(
        image: "assets/cellcard2.jpg",
        title: "Cellcard",
        dateTime: "Mar/17/2021 / 14:10:04",
        description:
            "2.00 USD is blocked on account 002 206 023 for Top-up Phone Number",
      ),
      TransactionModel(
        image: "assets/cellcard2.jpg",
        title: "Cellcard",
        dateTime: "Mar/17/2021 / 14:10:04",
        description:
            "2.00 USD is blocked on account 002 206 023 for Top-up Phone Number",
      ),
    ];
    return list;
  }

  static Future<List<AnnouncementModel>> listitemAnnouncement() async {
    var list = <AnnouncementModel>[];
    list = [
      AnnouncementModel(
        backgroundImage:
            "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fjqlouise%2Ffiles%2F2019%2F05%2FCambodia-6734-1200x800.jpg",
        title: 'The Palace The Kingdom of Cambodia',
        dateTime: '16/03/21 | 18:51:39',
        demodescription:
            "Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or.....",
        description:
            'Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or the other way round! The daily limit is 4',
        detail: 'Cellcard play',
      ),
      AnnouncementModel(
        demodescription:
            "Now,you can make E-Cash trasnfer from a USD account......,",
        backgroundImage:
            'https://www.smart.com.kh/media/2019/10/SmartNas_Sub-page_MockUP_Check-Balance-966x320.jpg',
        title: 'More convenience to E-Cash',
        dateTime: '16/03/21 | 18:51:39',
        description:
            'We recommend reducing cash contact and using ABA for all your payments and trasnfe, especially during this Covid outbreak Be Smart, go cashless',
        detail: 'SmartNas',
      ),
      AnnouncementModel(
        backgroundImage:
            "https://www.cellcard.com.kh/c/uploads/2020/04/IMG_1655.png",
        title: 'Play us Play Cellcard',
        dateTime: '16/03/21 | 18:51:39',
        demodescription:
            "Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or.....",
        description:
            'Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or the other way round! The daily limit is 4',
        detail: 'Cellcard play',
      ),
      AnnouncementModel(
        demodescription:
            "Now,you can make E-Cash trasnfer from a USD account......,",
        backgroundImage: 'https://news.sabay.com.kh/img/logo.png',
        title: 'More convenience to E-Cash',
        dateTime: '16/03/21 | 18:51:39',
        description:
            'Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or the other way round! The daily limit is 4',
        detail: 'SmartNas',
      ),
      AnnouncementModel(
        backgroundImage:
            "https://cdn.britannica.com/24/77424-050-4FF80B58/Angkor-Wat-Cambodia.jpg",
        title: 'Play us Play Cellcard',
        dateTime: '16/03/21 | 18:51:39',
        demodescription:
            "Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or.....",
        description:
            'Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or the other way round! The daily limit is 4',
        detail: 'Cellcard play',
      ),
      AnnouncementModel(
        demodescription:
            "Now,you can make E-Cash trasnfer from a USD account......,",
        backgroundImage: 'https://news.sabay.com.kh/img/logo.png',
        title: 'More convenience to E-Cash',
        dateTime: '16/03/21 | 18:51:39',
        description:
            'Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or the other way round! The daily limit is 4',
        detail: 'SmartNas',
      ),
      AnnouncementModel(
        backgroundImage:
            "https://www.cellcard.com.kh/c/uploads/2020/04/IMG_1655.png",
        title: 'Play us Play Cellcard',
        dateTime: '16/03/21 | 18:51:39',
        demodescription:
            "Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or.....",
        description:
            'Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or the other way round! The daily limit is 4 ',
        detail: 'Cellcard play',
      ),
      AnnouncementModel(
        demodescription:
            "Now,you can make E-Cash trasnfer from a USD account......,",
        backgroundImage:
            'https://www.smart.com.kh/media/2019/10/SmartNas_Sub-page_MockUP_Check-Balance-966x320.jpg',
        title: 'More convenience to E-Cash',
        dateTime: '16/03/21 | 18:51:39',
        description:
            'Now,you can make E-Cash trasnfer from a USD account and withdraw it in KHR or the other way round! The daily limit is 4',
        detail: 'SmartNas',
      ),
    ];
    return list;
  }
}
