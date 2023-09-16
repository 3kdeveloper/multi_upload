/// Flutter Imports
export 'dart:io';
export 'dart:convert';
export 'dart:async';
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';

/// Lib Imports
export 'package:multi_upload_pro/main.dart';

/// Packages Imports
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:logger/logger.dart';
export 'package:get_it/get_it.dart';
export 'package:cached_network_image/cached_network_image.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:firebase_core/firebase_core.dart';
export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:firebase_auth/firebase_auth.dart';
export 'package:firebase_storage/firebase_storage.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:json_annotation/json_annotation.dart';
export 'package:permission_handler/permission_handler.dart';
export 'package:fluttertoast/fluttertoast.dart';
export 'package:device_info_plus/device_info_plus.dart';
export 'package:file_picker/file_picker.dart';
export 'package:auto_height_grid_view/auto_height_grid_view.dart';

/// Config
///-- Router
export 'package:multi_upload_pro/config/router/app_router.dart';
export 'package:multi_upload_pro/config/router/route_names.dart';

///-- Theme
export 'package:multi_upload_pro/config/theme/app_theme.dart';
export 'package:multi_upload_pro/config/theme/text_styles.dart';

/// Core
/// Arguments
export 'package:multi_upload_pro/core/arguments/upload_data_screen_args.dart';
export 'package:multi_upload_pro/core/arguments/detail_screen_args.dart';

///-- Constants
export 'package:multi_upload_pro/core/constants/colors_resource.dart';
export 'package:multi_upload_pro/core/constants/constants.dart';
export 'package:multi_upload_pro/core/constants/dimensions_resource.dart';
export 'package:multi_upload_pro/core/constants/global_variable.dart';
export 'package:multi_upload_pro/core/constants/screen_percentage.dart';
export 'package:multi_upload_pro/core/constants/strings_resource.dart';
export 'package:multi_upload_pro/core/constants/images_resource.dart';

/// Enum
export 'package:multi_upload_pro/core/enum/upload_data_type.dart';
export 'package:multi_upload_pro/core/enum/media_type.dart';

/// Extensions
export 'package:multi_upload_pro/core/extensions/context_helper.dart';
export 'package:multi_upload_pro/core/extensions/string_helper.dart';

///-- Resources
export 'package:multi_upload_pro/core/resources/app_bloc_observer.dart';
export 'package:multi_upload_pro/core/resources/request_status.dart';

///-- Use Cases
export 'package:multi_upload_pro/core/user_cases/use_case.dart';

///-- Utils
export 'package:multi_upload_pro/injection_container.dart';
export 'package:multi_upload_pro/core/utils/no_animation_material_page_route.dart';
export 'package:multi_upload_pro/core/utils/validation.dart';
export 'package:multi_upload_pro/core/utils/permission_utils.dart';
export 'package:multi_upload_pro/core/utils/svg_utils.dart';

///-- Widgets
export 'package:multi_upload_pro/core/widgets/custom_text_view.dart';
export 'package:multi_upload_pro/core/widgets/custom_button.dart';
export 'package:multi_upload_pro/core/widgets/loading_widget.dart';
export 'package:multi_upload_pro/core/widgets/custom_text_form_field.dart';
export 'package:multi_upload_pro/features/auth/presentation/widgets/auth_footer.dart';
export 'package:multi_upload_pro/core/widgets/custom_app_bar.dart';
export 'package:multi_upload_pro/core/widgets/toggle_custom_button.dart';
