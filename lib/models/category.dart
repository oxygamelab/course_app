class Category {
  final String name;
  final int numOfCourses;
  final String imageUrl;

  Category({
    this.name,
    this.numOfCourses,
    this.imageUrl,
  });
}

List<Category> categories = categoriesData
    .map(
      (cat) => Category(
        name: cat['name'],
        numOfCourses: cat['courses'],
        imageUrl: cat['image'],
      ),
    )
    .toList();

var categoriesData = [
  {"name": "Marketing", 'courses': 17, 'image': "assets/images/marketing.png"},
  {"name": "UX Design", 'courses': 25, 'image': "assets/images/ux_design.png"},
  {
    "name": "Photography",
    'courses': 13,
    'image': "assets/images/photography.png"
  },
  {"name": "Business", 'courses': 17, 'image': "assets/images/business.png"},
];
