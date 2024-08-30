class OnboardingModel{
  final String title;
  final String description;
  final String image;

  OnboardingModel({required this.title, required this.description, required this.image});
}

List<OnboardingModel> onboardingsList = [
  OnboardingModel(
      title: "Share Your Vision",
      description: 'let connect to discuss your business and your vision',
      image: "https://www.wnyric.org/en/finance-and-hr-services/resources/directory-images/finance-hr.png",
  ),
  OnboardingModel(
    title: "Set Up and Customization",
    description: "We set up & develop custom workflow as per your vision and requirement",
    image: "https://img.freepik.com/free-vector/hand-drawn-flat-design-api-illustration_23-2149379500.jpg?t=st=1725015682~exp=1725019282~hmac=58ad8265bd855d40ac9b2c794d11efd041bab467831765c37420feb008e0b7de&w=1380"
  ),
  OnboardingModel(
    title: "Launch to success",
    description: "We launch it on our service, provide support & maintenance",
    image: "https://www.cen.org.in/images/banners/banner-3.png"
  )
];