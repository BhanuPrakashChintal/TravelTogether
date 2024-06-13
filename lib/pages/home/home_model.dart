import '/components/banner/banner_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for banner component.
  late BannerModel bannerModel;

  @override
  void initState(BuildContext context) {
    bannerModel = createModel(context, () => BannerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bannerModel.dispose();
  }
}
