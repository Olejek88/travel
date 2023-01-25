library commons_ui;

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:collection/collection.dart';

part 'src/app/common_platform_router_app.dart';
part 'src/extensions/build_context_extensions.dart';
part 'src/extensions/color_extensions.dart';
part 'src/providers/app_brightness_provider.dart';
part 'src/routes/hero_empty_router_page.dart';
part 'src/routes/platform_route_builders.dart';
part 'src/routes/platform_routes.dart';
part 'src/routes/transitions/cupertino_bottom_sheet.dart';
part 'src/routes/transitions/modal_transitions.dart';
part 'src/widgets/common/extended_flex.dart';
part 'src/widgets/common/plain_platform_button.dart';
part 'src/widgets/common/input_widgets.dart';