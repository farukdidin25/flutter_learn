class User {
  final String imageUrl;
  final String title;
  final String description;
  final String storyText;

  User(
      {required this.imageUrl,
      required this.title,
      required this.description,
      required this.storyText});

  factory User.fakeItem(){
        return User(imageUrl: 'https://avatars.githubusercontent.com/u/78099256?v=4', title: 'farukdidin25', description: 'comp eng. student', storyText: 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500' * 100) ;
      }
}
