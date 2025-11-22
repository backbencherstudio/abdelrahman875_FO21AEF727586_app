import 'package:abdelrahman875_fo21aef727586/core/constants/icons.dart';
import 'package:abdelrahman875_fo21aef727586/core/routes/route_name.dart';
import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/custom_divider.dart';
import 'package:abdelrahman875_fo21aef727586/features/widgets/primery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class DeliveriesCompletedScreen extends StatefulWidget {
  const DeliveriesCompletedScreen({super.key});

  @override
  State<DeliveriesCompletedScreen> createState() => _DeliveriesCompletedScreenState();
}

class _DeliveriesCompletedScreenState extends State<DeliveriesCompletedScreen> {
  final ImagePicker _imagePicker = ImagePicker();

  File? _packagePhoto;
  File? _senderSignature;
  File? _transporterSignature;
  File? _loadingNotePhoto;

  Future<void> _showImageSourceDialog(Function(File) onImageSelected) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Choisir une source',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt, color: AppColors.blackColor),
                title: Text('Caméra'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera, onImageSelected);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library, color: AppColors.blackColor),
                title: Text('Galerie'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery, onImageSelected);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(
      ImageSource source,
      Function(File) onImageSelected,
      ) async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: source,
        maxWidth: 1800,
        maxHeight: 1800,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        setState(() {
          onImageSelected(File(pickedFile.path));
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erreur lors de la sélection de l\'image'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _removeImage(String section) {
    setState(() {
      switch (section) {
        case 'package':
          _packagePhoto = null;
          break;
        case 'sender':
          _senderSignature = null;
          break;
        case 'transporter':
          _transporterSignature = null;
          break;
        case 'loading':
          _loadingNotePhoto = null;
          break;
      }
    });
  }

  Widget _buildImagePickerSection({
    required String title,
    required String sectionKey,
    required File? imageFile,
    required String placeholderText,
    IconData? placeholderIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xff353535),
          ),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: imageFile == null
              ? () => _showImageSourceDialog((file) {
            switch (sectionKey) {
              case 'package':
                _packagePhoto = file;
                break;
              case 'sender':
                _senderSignature = file;
                break;
              case 'transporter':
                _transporterSignature = file;
                break;
              case 'loading':
                _loadingNotePhoto = file;
                break;
            }
          })
              : null,
          child: Container(
            height: 140.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffF3F3F3),
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Color(0xffD9D9D9), width: 1),
            ),
            child: imageFile == null
                ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  placeholderIcon ?? Icons.add_photo_alternate_outlined,
                  size: 40.w,
                  color: Color(0xff696767),
                ),
                SizedBox(height: 8.h),
                Text(
                  placeholderText,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff696767),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
                : Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.file(
                    imageFile,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8.w,
                  right: 8.w,
                  child: GestureDetector(
                    onTap: () => _removeImage(sectionKey),
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        size: 18.w,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 24.w,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.h,
                    horizontal: 16.w,
                  ),
                  child: Row(
                    children: [
                      Image.asset(AppIcons.tickPng, width: 24.w, height: 24.h),
                      SizedBox(width: 10.w),
                      Text(
                        'Preuve de livraison',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff353535),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Numéro de livraison :',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff353535),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '#CMD456781',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff353535),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Icon(
                                Icons.copy_rounded,
                                size: 20.w,
                                color: AppColors.blackColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      CustomStatus(title: 'Statut :', subtitle: 'Sur la route'),
                      SizedBox(height: 16.h),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'De',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff696767),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  '2 rue de l\'Avenir, Ermont,\n95110, France',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Color(0xff736F6F),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Destination',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff696767),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  '12 rue de Maurice, Lyon,\n69000, France',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Color(0xff736F6F),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      CustomStatus(
                        title: 'Expéditeur :',
                        subtitle: 'Jonathan Leon - H&M',
                      ),
                      SizedBox(height: 16.h),
                      CustomStatus(title: 'Transporteur :', subtitle: 'UPS'),
                      SizedBox(height: 16.h),
                      CustomStatus(
                        title: 'Date d\'expédition :',
                        subtitle: '20 Sept 2025',
                      ),
                      CustomDivider(),

                      // Package Photos Section
                      _buildImagePickerSection(
                        title: 'Photos du colis à la livraison',
                        sectionKey: 'package',
                        imageFile: _packagePhoto,
                        placeholderText: 'Ajouter une photo du colis',
                        placeholderIcon: Icons.inventory_2_outlined,
                      ),

                      // Sender Signature Section
                      _buildImagePickerSection(
                        title: 'Signature Destinataire',
                        sectionKey: 'sender',
                        imageFile: _senderSignature,
                        placeholderText:
                        'Ajouter la signature du destinataire',
                        placeholderIcon: Icons.draw_outlined,
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                            checkColor: AppColors.whiteColor,
                            activeColor: Color(0xff9E9D9F),
                          ),
                          Expanded(
                            child: Text(
                              'J’ai vérifié le colis livré et accepte sa réception.',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff9E9D9F),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Transporter Signature Section
                      _buildImagePickerSection(
                        title: 'Signature Transporteur',
                        sectionKey: 'transporter',
                        imageFile: _transporterSignature,
                        placeholderText: 'Ajouter la signature du transporteur',
                        placeholderIcon: Icons.assignment_outlined,
                      ),

                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     Checkbox(
                      //       value: true,
                      //       onChanged: (value) {},
                      //       checkColor: AppColors.whiteColor,
                      //       activeColor: Color(0xff9E9D9F),
                      //     ),
                      //     Expanded(
                      //       child: Text(
                      //         "Je m'engage à respecter les conditions de livraison et à traiter l'envoi conformément aux informations renseignées.",
                      //         style: TextStyle(
                      //           fontSize: 14.sp,
                      //           fontWeight: FontWeight.w500,
                      //           color: Color(0xff9E9D9F),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),

                      // Loading Note Section
                      _buildImagePickerSection(
                        title: 'Remarque au chargement',
                        sectionKey: 'loading',
                        imageFile: _loadingNotePhoto,
                        placeholderText: 'Difficulté à trouver l’adresse de livraison.',
                        placeholderIcon: Icons.note_alt_outlined,
                      ),

                      SizedBox(height: 20.h),
                      PrimaryButton(
                        title: 'Suivant',
                        width: double.infinity,
                        containerColor: AppColors.blackColor,
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                        onTap: () {
                          // context.pop();
                          context.push(RouteName.deliveryDetailsScreen);
                        },
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomStatus extends StatelessWidget {
  const CustomStatus({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff353535),
            ),
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff353535),
          ),
        ),
      ],
    );
  }
}
