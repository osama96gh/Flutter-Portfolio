
enum LinkType{youtube,website,appleStore,googleStore,github}
class ProjectUtils {

  static const List<String> titles = [
    "Dawaa24",
    "AR Furniture E-Commerce",
    "Mr. Boum",
    "Ramadan Series",
    "Kambaqi",
    "Real-time Sudoku Solver",

  ];

  static const List<String> icons = [
    "assets/projects/icons/dawaa_icon.png",
    "assets/projects/icons/furniture_icon.png",
    "assets/projects/icons/boum_icon.png",
    "assets/projects/icons/ramadan_icon.png",
    "assets/projects/icons/kambaqi_icon.png",
    "assets/projects/icons/sudouko_icon.png",
  ];

  static const List<String> banners = [
    "assets/projects/banners/dawaa.jpeg",
    "assets/projects/banners/furniture.png",
    "assets/projects/banners/boum.png",
    "assets/projects/banners/ramadan.png",
    "assets/projects/banners/kambaqi.jpg",
    "assets/projects/banners/sudoko.png",
  ];



  static const List<String> description = [
    "Dawaa24 Delivering Better Healthcare - Empowers healthcare services by enabling a march towards growing precision medicine, remodeling care delivery, and developing patient experience eased by digitalizing healthcare.",
    "Online Furniture Store supported with AI,Online Furniture Store supported with AI,Online Furniture Store supported with AI",
    "Developed by myself as a side project, Using java and Android Native SDK as a mobile environment, and firebase as a Backend",
    "Ramadan Series is an Android Application that podcast the TV Channels that Show Ramadan Series and work as reminder for the time of view for your favorite Series",
    "First Project for me As mobile developer, Freelance Project, more than 50k User",
    "Read Time Sudoku Solver, Done Using Python and OpenCV and Computer Vision technics",
  ];

  static const List<Map<LinkType,String>> links = [
    {LinkType.appleStore:'https://apps.apple.com/us/app/dawaa-24/id1563905634',LinkType.googleStore:'https://play.google.com/store/apps/details?id=winsoft.dawaa.twentyfour',LinkType.website:'https://dawaa24.com/'},
    {LinkType.youtube:'https://youtu.be/JUn5PsCQGpc',LinkType.github:'https://github.com/osama96gh/ecommerce-flutter-arcore'},
    {LinkType.googleStore:"https://play.google.com/store/apps/details?id=mr.boum.academy.arabic"},
    {LinkType.googleStore:"https://play.google.com/store/apps/details?id=com.ramadan.androgrammer"},
    {LinkType.googleStore:"https://play.google.com/store/apps/details?id=com.kambaqi"},
    {LinkType.youtube:'https://youtu.be/LKktgL5QfTM',LinkType.github:'https://github.com/osama96gh/Sudoku-Solver-Real_Time'},

  ];
}
