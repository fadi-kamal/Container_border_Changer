import 'package:get/state_manager.dart';

class ConutingBorder extends GetxController {
  // ------Start TopLeft-------
  var topLeft = 0.obs;
  InCrementTopLeft() {
    if (topLeft == 50) {
      return topLeft = 50 as RxInt;
    }
    topLeft++;
  }

  DecrementTopLeft() {
    if (topLeft == 0) {
      return topLeft = 0 as RxInt;
    }
    topLeft--;
  }

  // ------End TopLeft-------
  // ------Start TopRight-------
  var topRight = 0.obs;
  InCremenTopRight() {
    if (topRight == 50) {
      return topRight = 50 as RxInt;
    }
    topRight++;
  }

  DecrementTopRight() {
    if (topRight == 0) {
      return topRight = 0 as RxInt;
    }
    topRight--;
  }

  // ------End TopRight-------
  // ------Start BottomRight-------
  var bottomRight = 0.obs;
  InCremenBottomRight() {
    if (bottomRight == 50) {
      return bottomRight = 50 as RxInt;
    }
    bottomRight++;
  }

  DecrementBottomRight() {
    if (bottomRight == 0) {
      return bottomRight = 0 as RxInt;
    }
    bottomRight--;
  }
  // ------End BottomRight-------
  // ------Start BottomLeft-------

  var bottomLeft = 0.obs;
  InCrementBottomLeft() {
    if (bottomLeft == 50) {
      return bottomLeft = 50 as RxInt;
    }
    bottomLeft++;
  }

  DecrementBottomLeft() {
    if (bottomLeft == 0) {
      return bottomLeft = 0 as RxInt;
    }
    bottomLeft--;
  }
  // ------End BottomLeft-------
}
