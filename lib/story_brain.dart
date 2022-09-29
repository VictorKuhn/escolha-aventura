import 'package:escolha_ventura/story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
        'Seu carro estourou um pneu numa estrada sinuosa, no meio do nada, sem sinal de celular. Você decidiu procurar carona. Você ouve o barulho de uma caminhonete velha para próxima de você. Um homem com um chapelão e olhos assombrosos abre a porta do carona para você e pergunta: "Precisa de uma carona, garoto?".',
        choice1: 'Eu vou aceitar. Agradeço a ajuda!',
        choice2: 'É melhor perguntar antes se ele é um assassino.'),
    Story(
        storyTitle: 'Ele assente vagarosamente, sem se incomodar com a pergunta.',
        choice1: 'Pelo menos ele é honesto. Eu vou aceitar.',
        choice2: 'Espera, eu sei trocar um pneu.'),
    Story(
        storyTitle:
        'Assim que você começa a dirigir, o estranho começa a falar sobre o relacionamento dele com a mãe. Ele fica cada vez mais bravo. Ele pede que você abra o porta-luvas. Dentro, você vê uma faca ensanguentada, dois dedos cortados e uma fita K7 do Elton John. Ele se estica para o porta-luvas.',
        choice1: 'Eu adoro Elton John! Entregue a ele a fita K7.',
        choice2: 'Sou eu ou ele! Você pega a faca o esfaqueia.'),
    Story(
        storyTitle:
        'O que? Que desculpa esfarrapada! Você sabia que acidentes de trânsito são a segunda causa de morte acidental para a maioria dos adultos?',
        choice1: 'Recomeçar',
        choice2: ''),
    Story(
        storyTitle:
        'Conforme você se arrasta pelo guardrail e se inclina na direção das rochas abaixo, você pensa na sabedoria duvidosa de esfaquear alguém enquanto ele dirigia o carro no qual você está.',
        choice1: 'Recomeçar',
        choice2: ''),
    Story(
        storyTitle:
        'Você se conecta com o assassino, enquanto cantarola versos de "Can you feel the love tonight". Ele te deixa na próxima cidade. Antes de partir, ele pergunta se você conhece algum lugar adequado para largar corpos. Você responde: "Tente o pier".',
        choice1: 'Recomeçar',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void restart(){
    _storyNumber = 0;
  }

  bool isChoice2Available(){
    if(_storyNumber < 3){
      return true;
    }
    return false;
  }

  void nextStory(int userOption) {
    if(_storyNumber == 0){
      if(userOption == 1){
        _storyNumber = 2;
      }else {
        _storyNumber = 1;
      }
    }else if(_storyNumber == 1){
      if(userOption == 1){
        _storyNumber = 2;
      }else {
        _storyNumber = 3;
      }
    }else if(_storyNumber == 2){
      if(userOption == 1){
        _storyNumber = 5;
      }else {
        _storyNumber = 4;
      }
    }

  }
}