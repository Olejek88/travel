import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import '../../../main_lib.dart';
import '../../models/predictions.dart';
import '../../pages/map/layers/map_tiles_layer.dart';
import 'input.dart';

final placePredictionsProvider = StateProvider<Predictions?>((ref) => Predictions.empty());

class SearchAddressField extends HookConsumerWidget {
  final String name;
  final String iconName;
  final String infoMessage;
  final String? initialValue;
  final void Function(MapBoxPlace place)? onSubmitted;
  /// Language used for the autocompletion.
  /// Check the full list of [supported languages](https://docs.mapbox.com/api/search/#language-coverage) for the MapBox API
  final String language;
  /// The point around which you wish to retrieve place information.
  final Location? location;
  /// Filter results to include only a subset (one or more) of the available feature types.
  /// Options are country, region, postcode, district, place, locality, neighborhood, address, and poi
  final String types;
  /// Limits the no of predictions it shows
  final int? limit;
  /// Limits the search to the given country
  /// Check the full list of [supported countries](https://docs.mapbox.com/api/search/) for the MapBox API
  final String? country;
  final showMultipleLines = useState(false);

  SearchAddressField(
      {super.key,
      required this.name,
      required this.iconName,
      this.initialValue = "",
      this.onSubmitted,
      this.infoMessage = "",
      this.language = "en",
      this.location,
      this.types = "address",
      this.limit = 20,
      this.country,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchFieldTextFocus = FocusNode();
    final errorState = useState(false);
    final searchFieldTextController = useTextEditingController(text: initialValue ?? "");
    searchFieldTextController.addListener(() {
      errorState.value = false;
    });
    return VStack(children: [
      InputText(
          hintText: name,
          controller: searchFieldTextController,
          onChanged: (input) => _getPlaces(ref, input),
          focusNode: searchFieldTextFocus,
          onTap: () {
          },
          leadingIcon: const Icon(Icons.map_rounded),
          autofocus: false),
      PlacesResultList(onPlaceSelected: (place) {
        ref.read(placePredictionsProvider.notifier).state = Predictions.empty();
        searchFieldTextController.text = place.placeName ?? "";
        if (onSubmitted != null) onSubmitted!(place);
        // Set cursor to the end of address
        searchFieldTextController.selection =
            TextSelection.collapsed(offset: searchFieldTextController.text.length);
      })
    ]);
  }

  Future<void> _getPlaces(WidgetRef ref, String input) async {
    if (input.isNotEmpty) {
      String url =
          "https://api.mapbox.com/geocoding/v5/mapbox.places/$input.json?access_token=$mapBoxAPIToken&cachebuster=1566806258853&autocomplete=true&language=$language&limit=$limit&types=$types";
      if (country != null) {
        url += "&country=$country";
      }
      final response = await http.get(Uri.parse(url));
      final predictions = Predictions.fromRawJson(response.body);
      ref.read(placePredictionsProvider.notifier).state = predictions;
    } else {
      ref.read(placePredictionsProvider.notifier).state = Predictions.empty();
    }
  }
}

class PlacesResultList extends ConsumerWidget {
  final void Function(MapBoxPlace place) onPlaceSelected;

  const PlacesResultList({super.key, required this.onPlaceSelected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final placePredictionFeatures = ref.watch(placePredictionsProvider.state).state?.features?.take(5).toList() ?? [];
    return ListView.separated(
      separatorBuilder: (cx, _) => const Divider(),
      itemCount: placePredictionFeatures.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        MapBoxPlace singlePlace = placePredictionFeatures[i];
        return ListTile(
          title: Text(singlePlace.text!, style: context.fontByStyle(ThemeTextStyle.defaultText).copyWith(fontSize: 16)),
          subtitle: Text(singlePlace.placeName!, style: context.fontByStyle(ThemeTextStyle.body3)),
          dense:true,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          onTap: () => onPlaceSelected(singlePlace),
        );
      },
    );
  }
}