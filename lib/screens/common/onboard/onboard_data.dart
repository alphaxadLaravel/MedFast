// ignore_for_file: file_names

class OnBoarding {
  final String title;
  final String image;
  final String paragraphs;

  OnBoarding({
    required this.title,
    required this.image,
    required this.paragraphs,
  });
}

List<OnBoarding> boardContents = [

  OnBoarding(
    title: "Karibu MedFAST!",
    paragraphs: "Tunao Madaktari wa Kutosha Kukuhudumia \n Tatizo lako popote Ulipo Tanzania",
    image: 'assets/images/doctors.gif',
  ),
  OnBoarding(
    title: "Madaktari Wetu",
    paragraphs: "Kutana na Daktari kwa haraka Kupitia \nsimu yako ya mkononi popote pale Ulipo",
    image: 'assets/images/meet.gif',
  ),
  OnBoarding(
    title: "Huduma za Maabara",
    paragraphs: "Tumekusogezea Huduma za maabara \n Kupitia mawakala wetu waliopo mtaani kwako",
    image: 'assets/images/lab.gif',
  ),

];