import 'package:industry_app/model/news.dart';

const mockTitle =
    "How to Upskill Frontline Employees as Industry 4.0 Gains Traction";
const mockDesc =
    "Digitization, automation, and artificial intelligence in manufacturing have paved the way for new production methods. If employees are going to take on new responsibilities and operate connected devices, they need to be upskilled and trained accordingly.";

final _instance1 = News(
  imagePath: 'assets/images/news2.jpg',
  title: mockTitle,
  description: mockDesc,
);
final _instance2 = News(
  imagePath: 'assets/images/news1.png',
  title: mockTitle,
  description: mockDesc,
);

final _instance3 = News(
  imagePath: 'assets/images/news2.jpg',
  title: mockTitle,
  description: mockDesc,
);

final _instance4 = News(
  imagePath: 'assets/images/news1.png',
  title: mockTitle,
  description: mockDesc,
);

final mockNewsList = [_instance1, _instance2, _instance3, _instance4];
