import 'package:get/get.dart';

class TransactionController extends GetxController {
  RxInt transactionIndex = 0.obs;
  RxInt filterIndex = 0.obs;

  //status
  RxBool isCompleted = true.obs;
  RxBool isPending = false.obs;
  RxBool isFailed = false.obs;
  RxBool isCancelled = false.obs;

  //instrument
  RxBool isupi = true.obs;
  RxBool isWallet = false.obs;
  RxBool iscreditCard = false.obs;
  RxBool isDebitCard = false.obs;

  //qr code'
  RxBool isQrCode = true.obs;

  //settlements
  RxBool isUnsettled = true.obs;

  //today
  RxBool isCustom = true.obs;
  RxBool isToday = false.obs;
  RxBool isYesterday = false.obs;
  RxBool islast7d = false.obs;
  RxBool islast30d = false.obs;
  RxBool islast6m = false.obs;


  clearAll() {
     isCompleted (false);
     isPending (false);
     isFailed (false);
     isCancelled  (false);

    //instrument
     isupi (false);
     isWallet (false);
     iscreditCard  (false);
     isDebitCard (false);

    //qr code'
     isQrCode (false);

    //settlements
     isUnsettled  (false);

    //today
     isCustom (false);
     isToday (false);
     isYesterday (false);
     islast7d (false);
     islast30d (false);
     islast6m  (false);



  }
}
