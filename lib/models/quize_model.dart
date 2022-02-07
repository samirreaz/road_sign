class Quize {
  final String question;

  Quize({required this.question});
}

List<Quize> quizeList = [
  Quize(question: 'What are the importance of traffic signals'),
  Quize(question: 'What what traffic signals mean?'),
  Quize(question: 'What are the 3 colors of traffic light?'),
  Quize(question: 'What does the red and amber traffic light mean?'),
  Quize(question: 'What does yellow traffic light mean?'),
  Quize(question: 'What is the hand signal for left?'),
  Quize(question: 'How do you indicate hands?'),
  Quize(question: 'When must you have to stop your vehicle?'),
  Quize(question: 'What are the three arm signals?'),
  Quize(question: 'What will reduce fuel consumption?'),
];

class Answer {
  final String answerList;
  Answer({required this.answerList});
}

List<Answer> anserList = [
  Answer(
      answerList:
          'Traffic signals are designed to ensure an orderly flow of traffic, provide an opportunity for pedestrians or vehicles to cross an intersection and help reduce the number of conflicts between vehicles entering intersections from different directions.'),
  Answer(answerList: 'RED—A red signal light means STOP.'),
  Answer(answerList: 'The three Traffic Lights Are Red, Yellow, and Green.'),
  Answer(
      answerList:
          "RED AND AMBER also means 'Stop'. Do not pass through or start until GREEN shows. "),
  Answer(answerList: 'A steady yellow means the signal is changing to red.'),
  Answer(
      answerList:
          'To indicate a left turn, extend your left arm out sideways with all your fingers extended. '),
  Answer(
      answerList:
          'You also need to signal if you intend to move or turn to either side. '),
  Answer(
      answerList:
          "When you're coming up to a junction or a set of traffic lights"),
  Answer(
      answerList:
          'There are three main hand signals that every motorist and cyclist should become familiar with: Left turn, right turn, and slowing down/stopping. '),
  Answer(
      answerList:
          'Explanation: Harsh braking, frequent gear changes and harsh acceleration increase fuel consumption. A car uses less fuel when travelling at a constant low speed in an appropriate high gear.'),
];
