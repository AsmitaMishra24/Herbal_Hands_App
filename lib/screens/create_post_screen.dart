import 'package:flutter/material.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _ingredientsController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _dosageController = TextEditingController();
  TextEditingController _mediaController = TextEditingController(); // Controller for media URLs

  // Method to handle media upload
  void _handleMediaUpload() {
    // Implement your media upload logic here
    // This could be uploading images or videos
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildRemedyTitleInput(),
              _buildIngredientsInput(),
              _buildDescriptionInput(),
              _buildDosageGuideInput(),
              _buildInputBoxWithMediaUploadButton(_mediaController),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform the action you want after form validation
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity, 60), // Set the minimum size of the button
                ),
                child: Text(
                  'Upload',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for building the "Remedy Title" input box
  Widget _buildRemedyTitleInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Remedy Title',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 70,
            child: TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Remedy Title';
                }
                return null;
              },
              minLines: 2,
              maxLines: null,
            ),
          ),
        ],
      ),
    );
  }

  // Widget for building the "Description" input box
  Widget _buildDescriptionInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 70,
            child: TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Description';
                }
                return null;
              },
              minLines: 2,
              maxLines: null,
            ),
          ),
        ],
      ),
    );
  }

  // Widget for building the "Ingredients" input box
  Widget _buildIngredientsInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ingredients',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 70,
            child: TextFormField(
              controller: _ingredientsController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Ingredients';
                }
                return null;
              },
              minLines: 2,
              maxLines: null,
            ),
          ),
        ],
      ),
    );
  }

  // Widget for building the "Dosage Guide" input box
  Widget _buildDosageGuideInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dosage Guide',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 70,
            child: TextFormField(
              controller: _dosageController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Dosage Guide';
                }
                return null;
              },
              minLines: 2,
              maxLines: null,
            ),
          ),
        ],
      ),
    );
  }

  // Widget for building the input box with media upload button
  Widget _buildInputBoxWithMediaUploadButton(TextEditingController mediaController) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Media',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            height: 70,
            child: ElevatedButton(
              onPressed: _handleMediaUpload,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Upload Media',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _ingredientsController.dispose();
    _descriptionController.dispose();
    _dosageController.dispose();
    _mediaController.dispose();
    super.dispose();
  }
}
