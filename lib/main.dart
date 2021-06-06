import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_cookbook/forms/farmWithValidation.dart';
import 'package:flutter_app_cookbook/forms/formStyling.dart';
import 'package:flutter_app_cookbook/forms/onTextChange.dart';
import 'package:flutter_app_cookbook/forms/requestingFocusDynamically.dart';
import 'package:flutter_app_cookbook/gestures/onTap.dart';
import 'package:flutter_app_cookbook/gestures/ripple.dart';
import 'package:flutter_app_cookbook/gestures/swipeToDismiss.dart';
import 'package:flutter_app_cookbook/hello_world/FirstMaterialApp.dart';
import 'package:flutter_app_cookbook/hello_world/helloWorld.dart';
import 'package:flutter_app_cookbook/images/cachedImageExample.dart';
import 'package:flutter_app_cookbook/images/displayImageFromNet.dart';
import 'package:flutter_app_cookbook/images/fadeInImages.dart';
import 'package:flutter_app_cookbook/layouts/tutorial.dart';
import 'package:flutter_app_cookbook/lists/GridSample.dart';
import 'package:flutter_app_cookbook/lists/HorizontalList.dart';
import 'package:flutter_app_cookbook/state/StateWithinWidget.dart';
import 'package:flutter_app_cookbook/state/mix.dart';

import 'state/StateWithParent.dart';


//Whatever your widget you want to test it, put it inside the runApp try it
void main() {
  runApp(
    HorizontalList()
  );
}