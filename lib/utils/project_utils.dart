class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/02.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Social Media App',
    description:
        'Fully Functional Social media App using flutter, check below.',
    links: 'https://github.com/arslan-aslam-brw/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/1.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Awesome CRM UI',
    description: 'CRM UI Design using Figma, check below.',
    links: 'https://github.com/arslan-aslam-brw/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/03.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Exercise App',
    description: 'Fully function Exercise App using flutter, check below.',
    links: 'https://github.com/arslan-aslam-brw/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/04.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Awesome Plant App UI',
    description: 'Plant App UI using flutter, check below.',
    links: 'https://github.com/arslan-aslam-brw/',
  ),
];
