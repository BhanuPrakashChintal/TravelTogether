import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blogoptions_model.dart';
export 'blogoptions_model.dart';

class BlogoptionsWidget extends StatefulWidget {
  const BlogoptionsWidget({super.key});

  @override
  State<BlogoptionsWidget> createState() => _BlogoptionsWidgetState();
}

class _BlogoptionsWidgetState extends State<BlogoptionsWidget> {
  late BlogoptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogoptionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.favorite_border,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            Icon(
              Icons.mode_comment_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            Icon(
              Icons.share_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
