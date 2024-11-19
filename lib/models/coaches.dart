
import 'package:flutter/material.dart';

class Coaches{
  int id;
  String name;
  String photo;
  double cost;
  String description;
  Coaches(this.id, this.name, this.photo, this.cost, this.description);

}

List <Coaches> coachList = [
  Coaches(1, "Иванов Иван Иванович", "https://p1.zoon.ru/f/8/584e65e8f5ebb1c9778b456d_587736d7b0b28.jpg", 1500, "Иван Иванович — опытный тренер по фитнесу с 10-летним стажем. Специализируется на силовых тренировках и функциональном тренинге."),
  Coaches(2, "Петрова Анна Сергеевна", "https://p1.zoon.ru/c/d/5877363327716d664f8b4570_587736bdd1e79.jpg", 1200, "Анна Сергеевна — сертифицированный тренер по йоге и пилатесу. Помогает клиентам достичь гармонии тела и духа."),
  Coaches(3, "Сидоров Алексей Владимирович", "https://avatars.mds.yandex.net/i?id=5f5d3e5e78957fb0ed7fc3e6e9ff42fe_l-5287954-images-thumbs&n=13", 1800, "Алексей Владимирович — тренер по боксу и кикбоксингу. Имеет опыт работы с профессиональными спортсменами."),
  Coaches(4, "Кузнецова Елена Александровна", "https://p1.zoon.ru/f/e/59c510d980931f2a355423fc_59c511ac2145a.jpg", 1300, "Eлена Александровна — тренер по аэробике и танцевальной фитнес-программе. Помогает клиентам поддерживать форму и получать удовольствие от тренировок."),
  Coaches(5, "Смирнов Дмитрий Петрович", "https://avatars.mds.yandex.net/i?id=b375f8d4eca6bb0f5420d456c2947cf73c487115-4867051-images-thumbs&n=13", 1600, "Дмитрий Петрович — тренер по кроссфиту и функциональному тренингу. Помогает клиентам достичь высоких результатов в короткие сроки."),
  Coaches(6, "Васильева Мария Ивановна", "https://p0.zoon.ru/d/4/584e626ef5ebb134748b4567_5a336c477c12b.jpg", 1400, "Мария Ивановна — тренер по пилатесу и стретчингу. Помогает клиентам улучшить гибкость и координацию."),
  Coaches(7, "Федоров Сергей Николаевич", "https://sun9-26.userapi.com/impf/c636823/v636823636/5e374/pTCToi4cyJ0.jpg?size=604x403&quality=96&sign=dfe346a5fac7d81b14c8995f95415308&type=album", 1700, "Сергей Николаевич — тренер по бодибилдингу и пауэрлифтингу. Имеет опыт подготовки спортсменов к соревнованиям."),
  Coaches(8, "Морозова Ольга Сергеевна", "https://p1.zoon.ru/7/4/58773a9f27716dc5548b456e_58773fb3054ba.jpg", 1100, "Ольга Сергеевна — тренер по фитнесу для беременных и мам с детьми. Помогает женщинам поддерживать форму и здоровье."),
  Coaches(9, "Захаров Андрей Александрович", "https://sun9-5.userapi.com/impg/O4jJoOJI4a6CTj4Mbb8_djECtisSLUs2fcF8Hw/jniUxqfNWeE.jpg?size=483x604&quality=95&sign=2bc7b22490e81416937756b9c63c52b0&c_uniq_tag=UyXSScLc_8svElET8JGKR53e-kPkYxINNtvF76jdCJg&type=album", 1900, "Андрей Александрович — тренер по ММА и самообороне. Имеет опыт работы с профессиональными бойцами."),
  Coaches(10, "Соколова Наталья Владимировна", "https://krayt.moscow/upload/img/a18/a18e82f4828f6d81fd131d48aa9822ef.png", 1350, "Наталья Владимировна — тренер по зумбе и танцевальной аэробике. Помогает клиентам получать удовольствие от тренировок и поддерживать форму."),



];

class Training{
  int id;
  DateTime trainingdate;
  TimeOfDay trainigtime;
  String trainername;
  double cost;
  Training(this.id, this.trainingdate, this.trainigtime, this.trainername, this.cost);

}

List <Training> TrainingList = [];