import 'dart:math';

void main() async {
  score();
  await cartItem();
  await lottonum();
}

Future<void> score() async {
  int student = 101;
  if (100 <= student) {
    print('점수에 오류가 있습니다.');
  } else if (90 <= student) {
    print('이 학생의 점수는 $student 이며, 등급은 A등급입니다.');
  } else if (80 <= student) {
    print('이 학생의 점수는 $student 이며, 등급은 B등급입니다.');
  } else if (80 > student) 
    print('이 학생의 점수는 $student 이며, 등급은 C등급입니다.');
  }


Future<void> cartItem() async {
  int totalPrice = 0;
  Map<String, int> price = {'티셔츠': 10000, '바지': 8000, '모자': 4000};
  List<String> cart = ['티셔츠', '바지', '모자', '티셔츠', '바지'];

  for (var item in cart) {
    if (price.containsKey(item)) {
      totalPrice += price[item]!;
    }
  }
  double totalPrice2 = totalPrice / 10;

  if (totalPrice > 20000) {
    print('장바구니에 $totalPrice 어치를 담으셨네요!');
    print('할인금액 : $totalPrice2');
    print('최종적으로 결재하실 금액은 ${totalPrice - totalPrice2}');
  } else if (totalPrice < 20000) {
    print('장바구니에 $totalPrice 어치를 담으셨네요!');
    print('최종적으로 결재하실 금액은 $totalPrice');
  }
}

Future<void> lottonum() async {
  List<int> number = [9, 19, 29, 35, 37, 38];
  Set<int>? mynumber = {};
  int? num = 0;

  for (int i = 0; mynumber.length < 6; i++) {
    mynumber.add(Random().nextInt(45));
  }

  for(int num in mynumber){
    if (mynumber.contains(9)){
      num+1;
    } else if(mynumber.contains(19)){
      num+1;
    } else if(mynumber.contains(29)){
      num+1;
    }else if(mynumber.contains(35)){
      num+1;
    }else if(mynumber.contains(37)){
      num+1;
    }else if(mynumber.contains(38)){
      num+1;
    }
  }

  if (num >= 5){
    print('도전문제');
    print('발금한 로또 번호 : [$mynumber]');
    print('당첨여부 : 1등');
    mynumber = null;
    num = null;
    print('현재 발급한 로또 번호 : [$mynumber]');
  } else if (num == 4){
    print('도전문제');
    print('발금한 로또 번호 : [$mynumber]');
    print('당첨여부 : 2등');
    mynumber = null;
    num = null;
    print('현재 발급한 로또 번호 : [$mynumber]');
  } else if (num == 3){
    print('도전문제');
    print('발금한 로또 번호 : [$mynumber]');
    print('당첨여부 : 3등');
    mynumber = null;
    num = null;
    print('현재 발급한 로또 번호 : [$mynumber]');
  } else if (num <= 2){
    print('도전문제');
    print('발금한 로또 번호 : [$mynumber]');
    print('당첨여부 : 실패');
    mynumber = null;
    num = null;
    print('현재 발급한 로또 번호 : [$mynumber]');
  }
}