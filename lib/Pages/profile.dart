import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FreelancerProfilePage extends StatefulWidget {
  @override
  _FreelancerProfilePageState createState() => _FreelancerProfilePageState();
}

class _FreelancerProfilePageState extends State<FreelancerProfilePage> {
  File? _imageFile;

  Future<void> _uploadFromGallery() async {
    final pickedImage =
    await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
    }
  }

  Future<void> _captureFromCamera() async {
    final pickedImage =
    await ImagePicker().getImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,

      body: SingleChildScrollView(

        padding: EdgeInsets.all(20.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile photo and edit option
            SizedBox(width: 10,height: 30),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: _imageFile != null
                        ? FileImage(_imageFile!)
                        : AssetImage('assets/default_profile_image.jpg') as ImageProvider,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _showImagePickerDialog();
                  },
                  icon: Icon(Icons.edit),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                ' Maxine Lin ',
                style: TextStyle(fontSize: 22.0, fontFamily: 'Poppins'),
              ),
            ),
            // Bio of the freelancer
            Center(
              child: Text(
                'Passionate about creativity and functionality, crafts compelling visuals that captivate audiences.',
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),

            // Skills of the freelancer

            SizedBox(height: 10.0),
            // Display skills in rounded rectangles
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                SkillChip(skill: 'Graphic Design'),
                SkillChip(skill: 'Logo Design'),
                // Add more skills here
              ],
            ),
            SizedBox(height: 20.0),
            // Service Plans
            Center(
              child: Text(
                'Service Plans',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
            ),
            SizedBox(height: 10.0),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.amberAccent[200],
                    indicatorColor: Colors.amber,
                    tabs: [
                      Tab(
                        child: Text(
                          'Basic',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Standard',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Premium',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200.0, // Adjust height as needed
                    child: TabBarView(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          // Set background color
                          child: ServicePlan(
                            description: 'Basic service description',
                            priceRange: '\$50 - \$100',
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ), // Set background color
                          child: ServicePlan(
                            description: 'Standard service description',
                            priceRange: '\$100 - \$200',
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ), // Set background color
                          child: ServicePlan(
                            description: 'Premium service description',
                            priceRange: '\$200 - \$500',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),

            SizedBox(height: 10.0),
            // Reviews widgets here
            // Edit profile button
            ElevatedButton(
              onPressed: () {
                // Navigate to edit profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showImagePickerDialog() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Pick an Image"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: Text("Pick from Gallery"),
                  onTap: () {
                    _uploadFromGallery();
                    Navigator.of(context).pop();
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Capture from Camera"),
                  onTap: () {
                    _captureFromCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SkillChip extends StatelessWidget {
  final String skill;

  const SkillChip({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        skill.toUpperCase(),
        style: TextStyle(
            fontFamily: 'Poppins', fontWeight: FontWeight.w300, fontSize: 13),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}

class ServicePlan extends StatelessWidget {
  final String description;
  final String priceRange;

  const ServicePlan({
    required this.description,
    required this.priceRange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Price Range: $priceRange',
    style: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins'),
    ),

      SizedBox(height: 10.0),
      Text(
        'Description: $description',
        style: TextStyle(fontSize: 15.0, fontFamily: 'Poppins'),
      ),
    ],
    ),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Text('Edit Profile Form Here'),
      ),
    );
  }
}