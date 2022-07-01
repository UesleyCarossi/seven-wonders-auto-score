import 'dart:math';

int pointsFromEqualCards(cardList) {
  return [0, ...cardList.values].reduce((memo, cardCount) => memo + (cardCount * cardCount));
}

int pointsFromDifferentCards(cardList) {
  final min_card_count = <int>[...cardList.values].reduce(min);
  
  return min_card_count * 7;
}

int points(int cardsX, int cardsY, int cardsZ) {
  var cardList = <String, int>{
    'x': cardsX, 
    'y': cardsY, 
    'z': cardsZ
  };
  
  return pointsFromEqualCards(cardList) + pointsFromDifferentCards(cardList);
} 

void main() {  
  print(points(0, 0, 1)); //1
  print(points(1, 1, 0)); //2
  print(points(3, 0, 0)); //9
  print(points(2, 2, 0)); //8
  print(points(1, 1, 1)); //10
  print(points(5, 1, 0)); //26
  print(points(3, 3, 3)); //48
}
