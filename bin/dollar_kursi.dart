import 'dart:io';

import 'dart:math';

Future<void> main() async {


  final stream = randomNumbers();

  List listOne = [];
  final stream1 = randomNumbersForCurrent();
  await for (var item in stream1) {
    listOne.add(item);
  }

  List listTwo = [];
  final stream2 = randomNumbersForPercentage();
  await for(var item in stream2){
    listTwo.add(item);
  }

  List listThree = [];
  final stream3 = randomNumbersForLastMonth();
  await for(var item in stream3){
    listThree.add(item);
  }

  List listFour = [];
  final stream4 = randomNumbersForLastDay();
  await for(var item in stream4){
    listFour.add(item);
  }


    int i = 0;
    int j = 0;
    List<String> list = [
      '⭐️BTC/USD  ',
      '⭐️YUAN/USD ',
      '⭐️CARAT/USD',
      '⭐️EURO/USD ',
      '⭐️RUBL/USD ',
      '⭐️GOLD/USD ',
    ];

  await for (var item in stream) {
    print('\n\n********************************************************************************************* *');
    stdout.writeln('        Symbol            Last Price      24H change      last month           24H volume     *');
    stdout.writeln('          ⏬                   ⏬              ⏬                ⏬                   ⏬          *');
    while (i < n*6) {
        stdout.writeln(
            '  ${list[j]}            ${listOne[i]}          ${listTwo[i]}%           ${listThree[i]}           ${listFour[i]} USD  *');
        i++;
        j++;
        print('--------------------------------------------------------------------------------------------  *');
        await Future.delayed(Duration(seconds: 1));
        if(i % 6 == 0){
        j = 0;
        break;
      }
    }
    }
}


int n = 5;
Stream randomNumbers()async*{
  for(int i = 0; i < n; i++){
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}



Stream randomNumbersForCurrent()async*{
  final random = Random();
  for(int i = 0; i < (n*6); i++){
    await Future.delayed(Duration(milliseconds: 1));
    yield (random.nextDouble() + random.nextInt(40)+30).toStringAsFixed(3);
  }
}

Stream randomNumbersForPercentage()async*{
  final random = Random();
  for(int i = 0; i < (n*6); i++){
    await Future.delayed(Duration(milliseconds: 1));
    yield (random.nextDouble() + random.nextInt(3)-1).toStringAsFixed(2);
  }
}

Stream randomNumbersForLastMonth()async*{
  final random = Random();
  for(int i = 0; i < (n*6); i++){
    await Future.delayed(Duration(milliseconds: 1));
    yield (random.nextDouble() + random.nextInt(40)+30).toStringAsFixed(3);
  }
}

Stream randomNumbersForLastDay()async*{
  final random = Random();
  for(int i = 0; i < (n*6); i++){
    await Future.delayed(Duration(milliseconds: 1));
    yield (random.nextDouble() + random.nextInt(10000)+1000).toStringAsFixed(6);
  }
}
