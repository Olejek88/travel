library travel;

import 'package:google_fonts/google_fonts.dart';

export 'package:flutter/widgets.dart' hide Locale;
export 'package:hooks_riverpod/hooks_riverpod.dart';
export 'package:auto_route/auto_route.dart';
export 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
export 'package:flutter/material.dart' show Colors;
export 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:dio/dio.dart';

import 'package:flutter/material.dart' hide Locale;
import 'package:flutter/cupertino.dart' hide Locale;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';

export 'models/continent.dart';
export 'models/country.dart';
export 'models/land.dart';
export 'models/user.dart';
export 'models/level.dart';
export 'models/todo_continent.dart';
export 'models/todo_country.dart';
export 'models/todo_land.dart';
export 'models/todo_continent_completed.dart';
export 'models/todo_country_completed.dart';
export 'models/todo_land_completed.dart';
export 'models/user_continent_progress.dart';
export 'models/user_country_progress.dart';
export 'models/user_land_progress.dart';


import 'main_lib.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:flutter/semantics.dart';

export 'shared/commons_ui.dart';

part 'shared/extensions/build_context_extension.dart';
part 'shared/theme/theme_colors.dart';
part 'shared/theme/app_colors.dart';
part 'shared/theme/theme_fonts.dart';
part 'shared/theme/theme_icons.dart';
part 'shared/extensions/image_extensions.dart';
part 'shared/extensions/color_extensions.dart';
