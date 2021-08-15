class Users {
  String imagePath;
  String firstName;
  String lastName;
  String userName;

  Users({
    required this.imagePath,
    required this.firstName,
    required this.lastName,
    required this.userName,
  });
}

final List<Users> usersDetails = [
  Users(
    imagePath: 'assets/ant.jpg',
    firstName: 'Rohit',
    lastName: 'Sharma',
    userName: '@ashwanisng',
  ),
  Users(
    imagePath: 'assets/green.jpg',
    firstName: 'Sachin',
    lastName: 'Tendulkar',
    userName: '@ashwanisng',
  ),
  Users(
    imagePath: 'assets/bird.jpg',
    firstName: 'KL',
    lastName: 'Rahul',
    userName: '@ashwanisng',
  ),
  Users(
    imagePath: 'assets/img1.jpg',
    firstName: 'Ashwani',
    lastName: 'Singh',
    userName: '@ashwanisng',
  ),
  Users(
    imagePath: 'assets/brick.jpg',
    firstName: 'MS',
    lastName: 'Dhoni',
    userName: '@ashwanisng',
  ),
  Users(
    imagePath: 'assets/people.jpg',
    firstName: 'Virat',
    lastName: 'Kohli',
    userName: '@ashwanisng',
  ),
  Users(
    imagePath: 'assets/bw.jpg',
    firstName: 'John',
    lastName: 'Cena',
    userName: '@ashwanisng',
  ),
];
