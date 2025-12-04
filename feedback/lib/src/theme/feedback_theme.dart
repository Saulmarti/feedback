import 'package:flutter/material.dart';

const _defaultDrawColors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
];

/// This is the same as `Colors.grey[50]`
/// or the default value of ThemeData.canvasColor for light theme
const _lightGrey = Color(0xFFFAFAFA);

/// This is the same as `Colors.grey[850],
/// or default value of ThemeData.canvasColor for dark theme
const _darkGrey = Color(0xFF303030);

/// This is the same as `Colors.blue`
/// or the default value of ThemeData.accentColor
const _blue = Color(0xFF2196F3);

const _defaultBottomSheetDescriptionStyle = TextStyle(
  color: Colors.black,
);

const _defaultBottomSheetTextInputStyle = TextStyle(
  color: Colors.black,
);

/// See the following image to get a better understanding of the properties.
/// ![Theme](https://raw.githubusercontent.com/ueman/feedback/master/img/theme_description.png "Theme")
class FeedbackThemeData {
  /// Creates a [FeedbackThemeData].
  /// ![Theme](https://raw.githubusercontent.com/ueman/feedback/master/img/theme_description.png "Theme")
  FeedbackThemeData({
    this.background = Colors.grey,
    this.feedbackSheetColor = _lightGrey,
    this.feedbackSheetHeight = .25,
    this.activeFeedbackModeColor = _blue,
    this.drawColors = _defaultDrawColors,
    this.bottomSheetDescriptionStyle = _defaultBottomSheetDescriptionStyle,
    this.bottomSheetTextInputStyle = _defaultBottomSheetTextInputStyle,
    this.sheetIsDraggable = true,
    Brightness? brightness,
    Color? dragHandleColor,
    ColorScheme? colorScheme,
    // Material Theme customization fields
    this.primaryColor,
    this.primaryColorLight,
    this.primaryColorDark,
    this.scaffoldBackgroundColor,
    this.canvasColor,
    this.cardColor,
    this.dividerColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.selectedRowColor,
    this.unselectedWidgetColor,
    this.disabledColor,
    this.buttonTheme,
    this.toggleButtonsTheme,
    this.appBarTheme,
    this.textTheme,
    this.primaryTextTheme,
    this.inputDecorationTheme,
    this.iconTheme,
    this.primaryIconTheme,
    this.sliderTheme,
    this.tabBarTheme,
    this.tooltipTheme,
    this.cardTheme,
    this.chipTheme,
    this.materialTapTargetSize,
    this.pageTransitionsTheme,
    this.bottomAppBarTheme,
    this.dialogTheme,
    this.floatingActionButtonTheme,
    this.navigationBarTheme,
    this.navigationRailTheme,
    this.snackBarTheme,
    this.bottomSheetTheme,
    this.popupMenuTheme,
    this.bannerTheme,
    this.dividerTheme,
    this.listTileTheme,
    this.badgeTheme,
    this.bottomNavigationBarTheme,
    this.checkboxTheme,
    this.radioTheme,
    this.switchTheme,
    this.progressIndicatorTheme,
    this.drawerTheme,
    this.dataTableTheme,
    this.dropdownMenuTheme,
    this.searchBarTheme,
    this.searchViewTheme,
    this.segmentedButtonTheme,
    this.useMaterial3,
    this.visualDensity,
  })  :
        // if the user chooses to supply custom drawing colors,
        // make sure there is at least on color to draw with
        assert(
          // ignore: prefer_is_empty
          drawColors.length > 0,
          'There must be at least one color to draw with',
        ) {
    this.brightness =
        brightness ??= ThemeData.estimateBrightnessForColor(feedbackSheetColor);
    final bool isDark = brightness == Brightness.dark;
    this.dragHandleColor =
        dragHandleColor ?? (isDark ? Colors.black26 : Colors.white38);
    this.colorScheme = colorScheme ??
        (isDark
            ? ColorScheme.dark(background: background)
            : ColorScheme.light(background: background));
  }

  /// Create a dark version of the [FeedbackThemeData]
  factory FeedbackThemeData.dark({bool sheetIsDraggable = true}) =>
      FeedbackThemeData(
        background: Colors.grey.shade700,
        dragHandleColor: Colors.white38,
        feedbackSheetColor: _darkGrey,
        bottomSheetDescriptionStyle: const TextStyle(
          color: Colors.white,
        ),
        sheetIsDraggable: sheetIsDraggable,
        brightness: Brightness.dark,
      );

  /// Create a light version of the [FeedbackThemeData]
  factory FeedbackThemeData.light({bool sheetIsDraggable = true}) =>
      FeedbackThemeData(
        background: Colors.grey,
        dragHandleColor: Colors.black26,
        feedbackSheetColor: _lightGrey,
        bottomSheetDescriptionStyle: _defaultBottomSheetDescriptionStyle,
        sheetIsDraggable: sheetIsDraggable,
        brightness: Brightness.light,
      );

  /// Brightness of the theme based on the [background] color
  late final Brightness brightness;

  /// The background of the feedback view.
  final Color background;

  /// The background color of the bottom sheet in which the user can input
  /// his feedback and thoughts.
  final Color feedbackSheetColor;

  /// The height of the bottom sheet as a fraction of the screen height.
  ///
  /// Values between .2 and .3 are usually ideal.
  final double feedbackSheetHeight;

  /// The color to highlight the currently selected feedback mode.
  final Color activeFeedbackModeColor;

  /// Colors which can be used to draw while in feedback mode.
  final List<Color> drawColors;

  /// Text Style of the text above of the feedback text input.
  final TextStyle bottomSheetDescriptionStyle;

  /// Text Style of the text input.
  final TextStyle bottomSheetTextInputStyle;

  /// Whether or not the bottom sheet is draggable.
  ///
  /// If this is set to true, the user feedback form will be wrapped in a
  /// [DraggableScrollableSheet] that will expand when the user drags upward on
  /// it. This is useful for large feedback forms.
  final bool sheetIsDraggable;

  /// Color of the drag handle on the feedback sheet
  late final Color dragHandleColor;

  /// [ColorScheme] on the feedback UI
  late final ColorScheme colorScheme;

  // Material Theme customization fields
  /// Primary color of the theme
  final Color? primaryColor;

  /// Light variant of the primary color
  final Color? primaryColorLight;

  /// Dark variant of the primary color
  final Color? primaryColorDark;

  /// Background color for scaffold
  final Color? scaffoldBackgroundColor;

  /// Canvas color
  final Color? canvasColor;

  /// Card color
  final Color? cardColor;

  /// Divider color
  final Color? dividerColor;

  /// Focus color
  final Color? focusColor;

  /// Hover color
  final Color? hoverColor;

  /// Highlight color
  final Color? highlightColor;

  /// Splash color
  final Color? splashColor;

  /// Selected row color
  final Color? selectedRowColor;

  /// Unselected widget color
  final Color? unselectedWidgetColor;

  /// Disabled color
  final Color? disabledColor;

  /// Button theme
  final ButtonThemeData? buttonTheme;

  /// Toggle buttons theme
  final ToggleButtonsThemeData? toggleButtonsTheme;

  /// App bar theme
  final AppBarTheme? appBarTheme;

  /// Text theme
  final TextTheme? textTheme;

  /// Primary text theme
  final TextTheme? primaryTextTheme;

  /// Input decoration theme
  final InputDecorationTheme? inputDecorationTheme;

  /// Icon theme
  final IconThemeData? iconTheme;

  /// Primary icon theme
  final IconThemeData? primaryIconTheme;

  /// Slider theme
  final SliderThemeData? sliderTheme;

  /// Tab bar theme
  final TabBarTheme? tabBarTheme;

  /// Tooltip theme
  final TooltipThemeData? tooltipTheme;

  /// Card theme
  final CardTheme? cardTheme;

  /// Chip theme
  final ChipThemeData? chipTheme;

  /// Material tap target size
  final MaterialTapTargetSize? materialTapTargetSize;

  /// Page transitions theme
  final PageTransitionsTheme? pageTransitionsTheme;

  /// Bottom app bar theme
  final BottomAppBarTheme? bottomAppBarTheme;

  /// Dialog theme
  final DialogTheme? dialogTheme;

  /// Floating action button theme
  final FloatingActionButtonThemeData? floatingActionButtonTheme;

  /// Navigation bar theme
  final NavigationBarThemeData? navigationBarTheme;

  /// Navigation rail theme
  final NavigationRailThemeData? navigationRailTheme;

  /// Snack bar theme
  final SnackBarThemeData? snackBarTheme;

  /// Bottom sheet theme
  final BottomSheetThemeData? bottomSheetTheme;

  /// Popup menu theme
  final PopupMenuThemeData? popupMenuTheme;

  /// Banner theme
  final MaterialBannerThemeData? bannerTheme;

  /// Divider theme
  final DividerThemeData? dividerTheme;

  /// List tile theme
  final ListTileThemeData? listTileTheme;

  /// Badge theme
  final BadgeThemeData? badgeTheme;

  /// Bottom navigation bar theme
  final BottomNavigationBarThemeData? bottomNavigationBarTheme;

  /// Checkbox theme
  final CheckboxThemeData? checkboxTheme;

  /// Radio theme
  final RadioThemeData? radioTheme;

  /// Switch theme
  final SwitchThemeData? switchTheme;

  /// Progress indicator theme
  final ProgressIndicatorThemeData? progressIndicatorTheme;

  /// Drawer theme
  final DrawerThemeData? drawerTheme;

  /// Data table theme
  final DataTableThemeData? dataTableTheme;

  /// Dropdown menu theme
  final DropdownMenuThemeData? dropdownMenuTheme;

  /// Search bar theme
  final SearchBarThemeData? searchBarTheme;

  /// Search view theme
  final SearchViewThemeData? searchViewTheme;

  /// Segmented button theme
  final SegmentedButtonThemeData? segmentedButtonTheme;

  /// Use Material 3 design
  final bool? useMaterial3;

  /// Visual density
  final VisualDensity? visualDensity;

  /// Creates a copy of the current [FeedbackThemeData] with the given
  /// optional fields replaced with the given values.
  FeedbackThemeData copyWith({
    Color? background,
    Color? feedbackSheetColor,
    double? feedbackSheetHeight,
    Color? activeFeedbackModeColor,
    List<Color>? drawColors,
    TextStyle? bottomSheetDescriptionStyle,
    TextStyle? bottomSheetTextInputStyle,
    bool? sheetIsDraggable,
    Color? dragHandleColor,
    Brightness? brightness,
    ColorScheme? colorScheme,
    Color? primaryColor,
    Color? primaryColorLight,
    Color? primaryColorDark,
    Color? scaffoldBackgroundColor,
    Color? canvasColor,
    Color? cardColor,
    Color? dividerColor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    Color? selectedRowColor,
    Color? unselectedWidgetColor,
    Color? disabledColor,
    ButtonThemeData? buttonTheme,
    ToggleButtonsThemeData? toggleButtonsTheme,
    AppBarTheme? appBarTheme,
    TextTheme? textTheme,
    TextTheme? primaryTextTheme,
    InputDecorationTheme? inputDecorationTheme,
    IconThemeData? iconTheme,
    IconThemeData? primaryIconTheme,
    SliderThemeData? sliderTheme,
    TabBarTheme? tabBarTheme,
    TooltipThemeData? tooltipTheme,
    CardTheme? cardTheme,
    ChipThemeData? chipTheme,
    MaterialTapTargetSize? materialTapTargetSize,
    PageTransitionsTheme? pageTransitionsTheme,
    BottomAppBarTheme? bottomAppBarTheme,
    DialogTheme? dialogTheme,
    FloatingActionButtonThemeData? floatingActionButtonTheme,
    NavigationBarThemeData? navigationBarTheme,
    NavigationRailThemeData? navigationRailTheme,
    SnackBarThemeData? snackBarTheme,
    BottomSheetThemeData? bottomSheetTheme,
    PopupMenuThemeData? popupMenuTheme,
    MaterialBannerThemeData? bannerTheme,
    DividerThemeData? dividerTheme,
    ListTileThemeData? listTileTheme,
    BadgeThemeData? badgeTheme,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    CheckboxThemeData? checkboxTheme,
    RadioThemeData? radioTheme,
    SwitchThemeData? switchTheme,
    ProgressIndicatorThemeData? progressIndicatorTheme,
    DrawerThemeData? drawerTheme,
    DataTableThemeData? dataTableTheme,
    DropdownMenuThemeData? dropdownMenuTheme,
    SearchBarThemeData? searchBarTheme,
    SearchViewThemeData? searchViewTheme,
    SegmentedButtonThemeData? segmentedButtonTheme,
    bool? useMaterial3,
    VisualDensity? visualDensity,
  }) {
    return FeedbackThemeData(
      background: background ?? this.background,
      feedbackSheetColor: feedbackSheetColor ?? this.feedbackSheetColor,
      feedbackSheetHeight: feedbackSheetHeight ?? this.feedbackSheetHeight,
      activeFeedbackModeColor:
          activeFeedbackModeColor ?? this.activeFeedbackModeColor,
      drawColors: drawColors ?? this.drawColors,
      bottomSheetDescriptionStyle:
          bottomSheetDescriptionStyle ?? this.bottomSheetDescriptionStyle,
      bottomSheetTextInputStyle:
          bottomSheetTextInputStyle ?? this.bottomSheetTextInputStyle,
      sheetIsDraggable: sheetIsDraggable ?? this.sheetIsDraggable,
      dragHandleColor: dragHandleColor ?? this.dragHandleColor,
      brightness: brightness ?? this.brightness,
      colorScheme: colorScheme ?? this.colorScheme,
      primaryColor: primaryColor ?? this.primaryColor,
      primaryColorLight: primaryColorLight ?? this.primaryColorLight,
      primaryColorDark: primaryColorDark ?? this.primaryColorDark,
      scaffoldBackgroundColor:
          scaffoldBackgroundColor ?? this.scaffoldBackgroundColor,
      canvasColor: canvasColor ?? this.canvasColor,
      cardColor: cardColor ?? this.cardColor,
      dividerColor: dividerColor ?? this.dividerColor,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      highlightColor: highlightColor ?? this.highlightColor,
      splashColor: splashColor ?? this.splashColor,
      selectedRowColor: selectedRowColor ?? this.selectedRowColor,
      unselectedWidgetColor:
          unselectedWidgetColor ?? this.unselectedWidgetColor,
      disabledColor: disabledColor ?? this.disabledColor,
      buttonTheme: buttonTheme ?? this.buttonTheme,
      toggleButtonsTheme: toggleButtonsTheme ?? this.toggleButtonsTheme,
      appBarTheme: appBarTheme ?? this.appBarTheme,
      textTheme: textTheme ?? this.textTheme,
      primaryTextTheme: primaryTextTheme ?? this.primaryTextTheme,
      inputDecorationTheme: inputDecorationTheme ?? this.inputDecorationTheme,
      iconTheme: iconTheme ?? this.iconTheme,
      primaryIconTheme: primaryIconTheme ?? this.primaryIconTheme,
      sliderTheme: sliderTheme ?? this.sliderTheme,
      tabBarTheme: tabBarTheme ?? this.tabBarTheme,
      tooltipTheme: tooltipTheme ?? this.tooltipTheme,
      cardTheme: cardTheme ?? this.cardTheme,
      chipTheme: chipTheme ?? this.chipTheme,
      materialTapTargetSize:
          materialTapTargetSize ?? this.materialTapTargetSize,
      pageTransitionsTheme:
          pageTransitionsTheme ?? this.pageTransitionsTheme,
      bottomAppBarTheme: bottomAppBarTheme ?? this.bottomAppBarTheme,
      dialogTheme: dialogTheme ?? this.dialogTheme,
      floatingActionButtonTheme:
          floatingActionButtonTheme ?? this.floatingActionButtonTheme,
      navigationBarTheme: navigationBarTheme ?? this.navigationBarTheme,
      navigationRailTheme: navigationRailTheme ?? this.navigationRailTheme,
      snackBarTheme: snackBarTheme ?? this.snackBarTheme,
      bottomSheetTheme: bottomSheetTheme ?? this.bottomSheetTheme,
      popupMenuTheme: popupMenuTheme ?? this.popupMenuTheme,
      bannerTheme: bannerTheme ?? this.bannerTheme,
      dividerTheme: dividerTheme ?? this.dividerTheme,
      listTileTheme: listTileTheme ?? this.listTileTheme,
      badgeTheme: badgeTheme ?? this.badgeTheme,
      bottomNavigationBarTheme:
          bottomNavigationBarTheme ?? this.bottomNavigationBarTheme,
      checkboxTheme: checkboxTheme ?? this.checkboxTheme,
      radioTheme: radioTheme ?? this.radioTheme,
      switchTheme: switchTheme ?? this.switchTheme,
      progressIndicatorTheme:
          progressIndicatorTheme ?? this.progressIndicatorTheme,
      drawerTheme: drawerTheme ?? this.drawerTheme,
      dataTableTheme: dataTableTheme ?? this.dataTableTheme,
      dropdownMenuTheme: dropdownMenuTheme ?? this.dropdownMenuTheme,
      searchBarTheme: searchBarTheme ?? this.searchBarTheme,
      searchViewTheme: searchViewTheme ?? this.searchViewTheme,
      segmentedButtonTheme:
          segmentedButtonTheme ?? this.segmentedButtonTheme,
      useMaterial3: useMaterial3 ?? this.useMaterial3,
      visualDensity: visualDensity ?? this.visualDensity,
    );
  }
}

/// Provides an instance of [FeedbackThemeData] for all descendants.
class FeedbackTheme extends InheritedTheme {
  /// Creates a feedback theme that controls the color, opacity, and size of
  /// descendant widgets.
  ///
  /// Both [data] and [child] arguments must not be null.
  const FeedbackTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// This [FeedbackThemeData] can be obtained by calling
  /// `FeedbackTheme.of(context)`.
  final FeedbackThemeData data;

  /// The data from the closest instance of this class that encloses the given
  /// context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// FeedbackThemeData theme = FeedbackTheme.of(context);
  /// ```
  static FeedbackThemeData of(BuildContext context) {
    final feedbackThemeData =
        context.dependOnInheritedWidgetOfExactType<FeedbackTheme>();
    return feedbackThemeData?.data ?? FeedbackThemeData();
  }

  @override
  bool updateShouldNotify(FeedbackTheme oldWidget) => data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    final theme = context.findAncestorWidgetOfExactType<FeedbackTheme>();
    return identical(this, theme)
        ? child
        : FeedbackTheme(data: data, child: child);
  }
}
