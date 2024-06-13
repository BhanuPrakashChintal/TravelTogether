import '/components/blogoptions/blogoptions_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'blog_content_widget.dart' show BlogContentWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlogContentModel extends FlutterFlowModel<BlogContentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for Blogoptions component.
  late BlogoptionsModel blogoptionsModel;

  @override
  void initState(BuildContext context) {
    blogoptionsModel = createModel(context, () => BlogoptionsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    blogoptionsModel.dispose();
  }
}
