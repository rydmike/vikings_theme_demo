// MIT License
//
// Copyright (c) 2022 Mike Rydstrom
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF386A20);

// Custom MaterialColor M1/M2 style Color Swatch based on primaryColor.
const MaterialColor mySwatch = MaterialColor(
  0xFF386A20,
  <int, Color>{
    50: Color(0xFFC3D2BB),
    100: Color(0xFFB4C7AA),
    200: Color(0xFF9AB48D),
    400: Color(0xFF598E3F),
    500: Color(0xFF386A20),
    600: Color(0xFF325F1D),
    700: Color(0xFF294D18),
    800: Color(0xFF213E12),
    900: Color(0xFF1A300E),
  },
);

// Light M3 ColorScheme.
const ColorScheme mySchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff386a20),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffc0f0a4),
  onPrimaryContainer: Color(0xff042100),
  secondary: Color(0xff55624c),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffd9e7cb),
  onSecondaryContainer: Color(0xff131f0d),
  tertiary: Color(0xff386667),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xffbbebeb),
  onTertiaryContainer: Color(0xff002021),
  error: Color(0xffba1b1b),
  onError: Color(0xffffffff),
  errorContainer: Color(0xffffdad4),
  onErrorContainer: Color(0xff410001),
  outline: Color(0xff74796e),
  background: Color(0xfffdfdf6),
  onBackground: Color(0xff1a1c18),
  surface: Color(0xfffdfdf6),
  onSurface: Color(0xff1a1c18),
  surfaceVariant: Color(0xffdfe4d6),
  onSurfaceVariant: Color(0xff43493e),
  inverseSurface: Color(0xff2f312c),
  onInverseSurface: Color(0xfff1f1ea),
  inversePrimary: Color(0xff9cd67d),
  shadow: Color(0xff000000),
  surfaceTint: Color(0xff386a20),
);

// Dark M3 ColorScheme.
const ColorScheme mySchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xff9cd67d),
  onPrimary: Color(0xff0c3900),
  primaryContainer: Color(0xff205107),
  onPrimaryContainer: Color(0xffc0f0a4),
  secondary: Color(0xffbdcbb0),
  onSecondary: Color(0xff273420),
  secondaryContainer: Color(0xff3e4a36),
  onSecondaryContainer: Color(0xffd9e7cb),
  tertiary: Color(0xffa0cfcf),
  onTertiary: Color(0xff003738),
  tertiaryContainer: Color(0xff1e4e4e),
  onTertiaryContainer: Color(0xffbbebeb),
  error: Color(0xffffb4a9),
  onError: Color(0xff680003),
  errorContainer: Color(0xff930006),
  onErrorContainer: Color(0xffffb4a9),
  outline: Color(0xff8d9286),
  background: Color(0xff1a1c18),
  onBackground: Color(0xffe3e3dc),
  surface: Color(0xff1a1c18),
  onSurface: Color(0xffe3e3dc),
  surfaceVariant: Color(0xff43493e),
  onSurfaceVariant: Color(0xffc4c8bb),
  inverseSurface: Color(0xffe3e3dc),
  onInverseSurface: Color(0xff2f312c),
  inversePrimary: Color(0xff386a20),
  shadow: Color(0xff000000),
  surfaceTint: Color(0xff9cd67d),
);

enum ThemingWay {
  road1('1: ThemeData.light/dark'),
  road2('2: ThemeData(primarySwatch: swatch)'),
  road3('3: ThemeData(colorScheme: ColorScheme.fromSwatch))'),
  road4('4: ThemeData.from(colorScheme: ColorScheme.fromSwatch))'),
  road5('5: ThemeData(colorScheme: scheme)'),
  road6('6: ThemeData.from(colorScheme: scheme)'),
  road7('7: ThemeData(colorSchemeSeed: color)'),
  road8('8: ThemeData(colorScheme: ColorScheme.fromSeed(color))'),
  road9('9: ThemeData.from(colorScheme: ColorScheme.fromSeed(color))'),
  road10('10: ThemeData(colorScheme: and other props)');

  final String describe;
  const ThemingWay(this.describe);

  ThemeData theme(Brightness mode, bool useMaterial3) {
    switch (this) {
      case ThemingWay.road1:
        return themeOne(mode, useMaterial3);
      case ThemingWay.road2:
        return themeTwo(mode, useMaterial3);
      case ThemingWay.road3:
        return themeThree(mode, useMaterial3);
      case ThemingWay.road4:
        return themeFour(mode, useMaterial3);
      case ThemingWay.road5:
        return themeFive(mode, useMaterial3);
      case ThemingWay.road6:
        return themeSix(mode, useMaterial3);
      case ThemingWay.road7:
        return themeSeven(mode, useMaterial3);
      case ThemingWay.road8:
        return themeEight(mode, useMaterial3);
      case ThemingWay.road9:
        return themeNine(mode, useMaterial3);
      case ThemingWay.road10:
        return themeTen(mode, useMaterial3);
    }
  }
}

// 1) TD.light/dark
//    ThemeData(brightness: Brightness.light)
//    ThemeData(brightness: Brightness.dark)
ThemeData themeOne(Brightness mode, bool useMaterial3) => ThemeData(
      brightness: mode,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 2) TD primarySwatch
//    ThemeData(brightness: ..., primarySwatch: swatch)
ThemeData themeTwo(Brightness mode, bool useMaterial3) => ThemeData(
      brightness: mode,
      primarySwatch: mySwatch,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 3) TD scheme.fromSwatch
//    ThemeData(colorScheme: ColorScheme.fromSwatch(swatch))
ThemeData themeThree(Brightness mode, bool useMaterial3) => ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        brightness: mode,
        primarySwatch: mySwatch,
      ),
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 4) TD.from scheme.fromSwatch
//    ThemeData.from(colorScheme: ColorScheme.fromSwatch(swatch))
ThemeData themeFour(Brightness mode, bool useMaterial3) => ThemeData.from(
      colorScheme: ColorScheme.fromSwatch(
        brightness: mode,
        primarySwatch: mySwatch,
      ),
      useMaterial3: useMaterial3,
    ).copyWith(visualDensity: VisualDensity.standard);

// 5) TD colorScheme
//    ThemeData(colorScheme: ColorScheme(...))
ThemeData themeFive(Brightness mode, bool useMaterial3) => ThemeData(
      colorScheme: mode == Brightness.light ? mySchemeLight : mySchemeDark,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 6) TD.from colorScheme
//    ThemeData.from(colorScheme: ColorScheme(...))
ThemeData themeSix(Brightness mode, bool useMaterial3) => ThemeData.from(
      colorScheme: mode == Brightness.light ? mySchemeLight : mySchemeDark,
      useMaterial3: useMaterial3,
    ).copyWith(visualDensity: VisualDensity.standard);

// 7) TD colorSchemeSeed
//    ThemeData(colorSchemeSeed: Color(...))
ThemeData themeSeven(Brightness mode, bool useMaterial3) => ThemeData(
      brightness: mode,
      colorSchemeSeed: primaryColor,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 8) TD scheme.fromSeed
//    ThemeData(colorScheme: ColorScheme.fromSeed(seedColor))
ThemeData themeEight(Brightness mode, bool useMaterial3) => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: mode,
        seedColor: primaryColor,
      ),
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 9) TD.from scheme.fromSeed
//    ThemeData(colorScheme: ColorScheme.fromSeed(...))
ThemeData themeNine(Brightness mode, bool useMaterial3) => ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        brightness: mode,
        seedColor: primaryColor,
      ),
      useMaterial3: useMaterial3,
    ).copyWith(visualDensity: VisualDensity.standard);

// 10) Custom ThemeData()
ThemeData themeTen(Brightness mode, bool useMaterial3) =>
    mode == Brightness.light
        ? ThemeData(
            colorScheme: mySchemeLight,
            primaryColor: mySchemeLight.primary,
            primaryColorLight: Color.alphaBlend(
                Colors.white.withAlpha(0x66), mySchemeLight.primary),
            primaryColorDark: Color.alphaBlend(
                Colors.black.withAlpha(0x66), mySchemeLight.primary),
            secondaryHeaderColor: Color.alphaBlend(
                Colors.white.withAlpha(0xCC), mySchemeLight.primary),
            toggleableActiveColor:
                useMaterial3 ? mySchemeLight.primary : mySchemeLight.secondary,
            scaffoldBackgroundColor: mySchemeLight.background,
            canvasColor: mySchemeLight.background,
            backgroundColor: mySchemeLight.background,
            cardColor: mySchemeLight.surface,
            bottomAppBarColor: mySchemeLight.surface,
            dialogBackgroundColor: mySchemeLight.surface,
            indicatorColor: useMaterial3
                ? mySchemeLight.onSurface
                : mySchemeLight.onPrimary,
            dividerColor: mySchemeLight.onSurface.withOpacity(0.12),
            errorColor: mySchemeLight.error,
            applyElevationOverlayColor: false,
            useMaterial3: useMaterial3,
            visualDensity: VisualDensity.standard,
          )
        : ThemeData(
            colorScheme: mySchemeDark,
            primaryColor: mySchemeDark.surface,
            primaryColorLight: Color.alphaBlend(
                Colors.white.withAlpha(0x59), mySchemeDark.primary),
            primaryColorDark: Color.alphaBlend(
                Colors.black.withAlpha(0x72), mySchemeDark.primary),
            secondaryHeaderColor: Color.alphaBlend(
                Colors.black.withAlpha(0x99), mySchemeDark.primary),
            toggleableActiveColor:
                useMaterial3 ? mySchemeDark.primary : mySchemeDark.secondary,
            scaffoldBackgroundColor: mySchemeDark.background,
            canvasColor: mySchemeDark.background,
            backgroundColor: mySchemeDark.background,
            cardColor: mySchemeDark.surface,
            bottomAppBarColor: mySchemeDark.surface,
            dialogBackgroundColor: mySchemeDark.surface,
            indicatorColor: mySchemeDark.onSurface,
            dividerColor: mySchemeDark.onSurface.withOpacity(0.12),
            errorColor: mySchemeDark.error,
            applyElevationOverlayColor: true,
            useMaterial3: useMaterial3,
            visualDensity: VisualDensity.standard,
          );

// App breakpoints
const double phoneWidthBreakpoint = 550;
const double phoneHeightBreakpoint = 600;

void main() {
  runApp(const VikingsThemeApp());
}

class VikingsThemeApp extends StatefulWidget {
  const VikingsThemeApp({super.key});

  @override
  State<VikingsThemeApp> createState() => _VikingsThemeAppState();
}

class _VikingsThemeAppState extends State<VikingsThemeApp> {
  bool useMaterial3 = false;
  ThemeMode themeMode = ThemeMode.light;
  ThemingWay themingWay = ThemingWay.road1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: themingWay.theme(Brightness.light, useMaterial3),
      darkTheme: themingWay.theme(Brightness.dark, useMaterial3),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vikings Theme Dive ${themingWay.index + 1}'),
          actions: <Widget>[
            IconButton(
              icon: useMaterial3
                  ? const Icon(Icons.filter_3)
                  : const Icon(Icons.filter_2),
              onPressed: () {
                setState(() {
                  useMaterial3 = !useMaterial3;
                });
              },
              tooltip: 'Switch to Material ${useMaterial3 ? 2 : 3}',
            ),
            IconButton(
              icon: themeMode == ThemeMode.dark
                  ? const Icon(Icons.wb_sunny_outlined)
                  : const Icon(Icons.wb_sunny),
              onPressed: () {
                setState(() {
                  if (themeMode == ThemeMode.light) {
                    themeMode = ThemeMode.dark;
                  } else {
                    themeMode = ThemeMode.light;
                  }
                });
              },
              tooltip: 'Toggle brightness',
            ),
            ThemePopupMenu(
              themingWay: themingWay,
              onChanged: (ThemingWay value) {
                setState(() {
                  themingWay = value;
                });
              },
            ),
          ],
        ),
        body: HomePage(themingWay: themingWay),
      ),
    );
  }
}

// A popup menu that allows us to select the theme we want to use.
class ThemePopupMenu extends StatelessWidget {
  const ThemePopupMenu({
    super.key,
    required this.themingWay,
    required this.onChanged,
  });
  final ThemingWay themingWay;
  final ValueChanged<ThemingWay> onChanged;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ThemingWay>(
      icon: const Icon(Icons.more_vert),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tooltip: 'Theming way',
      padding: const EdgeInsets.all(10),
      onSelected: onChanged,
      constraints: const BoxConstraints(maxWidth: 470),
      itemBuilder: (BuildContext context) => <PopupMenuItem<ThemingWay>>[
        for (ThemingWay item in ThemingWay.values)
          PopupMenuItem<ThemingWay>(
            value: item,
            child: ListTile(
              dense: true,
              title: Text(item.describe),
            ),
          )
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.themingWay,
  });
  final ThemingWay themingWay;

  @override
  Widget build(BuildContext context) {
    final String materialType =
        Theme.of(context).useMaterial3 ? 'Material 3' : 'Material 2';
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: <Widget>[
        const SizedBox(height: 8),
        Text(
          materialType,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          themingWay.describe,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Divider(),
        const ShowColorSchemeColors(),
        const Divider(),
        const ShowThemeDataColors(),
        const Divider(),
        const ThemeShowcase(),
      ],
    );
  }
}

/// Theme showcase for the current theme.
///
/// Use this widget to review your theme's impact on [ThemeData] and see
/// how it looks with different Material widgets.
///
/// The sub widgets used in this theme show case can also be used on their
/// own, for example combined in smaller panels instead of in on big column
/// like here. Using the individual elements is done in example 5 where they
/// are put in separate cards.
///
/// These are all Flutter "Universal" Widgets that only depends on the SDK and
/// all the Widgets in this file be dropped into any application. They are
/// however not so useful, unless all you really want to do is to show what
/// Flutter Widgets look like.
class ThemeShowcase extends StatelessWidget {
  const ThemeShowcase({
    super.key,
    this.useRailAssertWorkAround = true,
  });

  // Flag set to true to make a work around to avoid unnecessarily
  // eager assert in NavigationRail SDK API.
  //
  // Assertion: line 562 pos 7: 'useIndicator || indicatorColor == null'
  // A flag is used to do trickery with transparency for this
  // assertion that we cannot avoid since the theme controls the
  // setup and user it. User may enter combo that has no effect, and
  // triggers the assert.
  // It should be obvious that if you have no indicator color
  // you cannot use an indicator, why assert it? Just don't show one!
  final bool useRailAssertWorkAround;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 8),
        const TextInputField(),
        const Divider(),
        const ElevatedButtonShowcase(),
        const SizedBox(height: 8),
        const OutlinedButtonShowcase(),
        const SizedBox(height: 8),
        const TextButtonShowcase(),
        const SizedBox(height: 8),
        const ToggleButtonsShowcase(),
        const Divider(),
        const FabShowcase(),
        const SizedBox(height: 16),
        const ChipShowcase(),
        const Divider(),
        const SizedBox(height: 8),
        const PopupMenuShowcase(),
        const SizedBox(height: 8),
        const SizedBox(height: 8),
        const IconButtonCircleAvatarDropdownTooltipShowcase(),
        const Divider(),
        const SwitchShowcase(),
        const CheckboxShowcase(),
        const RadioShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const ListTileShowcase(),
        const Divider(),
        const AppBarShowcase(),
        const Divider(),
        const TabBarForAppBarShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const BottomNavigationBarShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const NavigationBarShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const NavigationRailShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const AlertDialogShowcase(),
        const TimePickerDialogShowcase(),
        const DatePickerDialogShowcase(),
        const Divider(),
        const MaterialAndBottomSheetShowcase(),
        const Divider(height: 32),
        const CardShowcase(),
        const SizedBox(height: 8),
        Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text('Normal TextTheme',
                      style: Theme.of(context).textTheme.titleMedium),
                ),
                const TextThemeShowcase(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 0,
          color: Theme.of(context).colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text('Primary TextTheme',
                      style: Theme.of(context).primaryTextTheme.titleMedium),
                ),
                const PrimaryTextThemeShowcase(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ElevatedButtonShowcase extends StatelessWidget {
  const ElevatedButtonShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: const Text('Elevated button'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Elevated icon'),
        ),
        const ElevatedButton(
          onPressed: null,
          child: Text('Elevated button'),
        ),
      ],
    );
  }
}

class OutlinedButtonShowcase extends StatelessWidget {
  const OutlinedButtonShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        OutlinedButton(
          onPressed: () {},
          child: const Text('Outlined button'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Outlined icon'),
        ),
        const OutlinedButton(
          onPressed: null,
          child: Text('Outlined button'),
        ),
      ],
    );
  }
}

class TextButtonShowcase extends StatelessWidget {
  const TextButtonShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: const Text('Text button'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Text icon'),
        ),
        const TextButton(
          onPressed: null,
          child: Text('Text button'),
        ),
      ],
    );
  }
}

class ToggleButtonsShowcase extends StatefulWidget {
  const ToggleButtonsShowcase({this.showOutlinedButton, super.key});
  final bool? showOutlinedButton;

  @override
  State<ToggleButtonsShowcase> createState() => _ToggleButtonsShowcaseState();
}

class _ToggleButtonsShowcaseState extends State<ToggleButtonsShowcase> {
  List<bool> selected = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 4,
      children: <Widget>[
        ToggleButtons(
          isSelected: selected,
          onPressed: (int toggledIndex) {
            setState(() {
              selected[toggledIndex] = !selected[toggledIndex];
            });
          },
          children: const <Widget>[
            Icon(Icons.adb),
            Icon(Icons.phone),
            Icon(Icons.account_circle),
          ],
        ),
        if (widget.showOutlinedButton ?? false)
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined'),
          ),
        ToggleButtons(
          isSelected: const <bool>[true, false, false],
          onPressed: null,
          children: const <Widget>[
            Icon(Icons.adb),
            Icon(Icons.phone),
            Icon(Icons.account_circle),
          ],
        ),
        if (widget.showOutlinedButton ?? false)
          const OutlinedButton(
            onPressed: null,
            child: Text('Outlined'),
          ),
      ],
    );
  }
}

class FabShowcase extends StatelessWidget {
  const FabShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 4,
      children: <Widget>[
        FloatingActionButton.small(
          heroTag: 'FAB small',
          onPressed: () {},
          tooltip: 'Tooltip on small\nFloatingActionButton',
          child: const Icon(Icons.accessibility),
        ),
        FloatingActionButton.extended(
          heroTag: 'FAB extended false',
          isExtended: false,
          onPressed: () {},
          tooltip: 'Tooltip on extended:false\nFloatingActionButton.extended',
          icon: const Icon(Icons.accessibility),
          label: const Text('Extended'),
        ),
        FloatingActionButton.extended(
          heroTag: 'FAB extended true',
          isExtended: true,
          onPressed: () {},
          tooltip: 'Tooltip on extended:true\nFloatingActionButton.extended',
          icon: const Icon(Icons.accessibility),
          label: const Text('Extended'),
        ),
        FloatingActionButton(
          heroTag: 'FAB standard',
          onPressed: () {},
          tooltip: 'Tooltip on default\nFloatingActionButton',
          child: const Icon(Icons.accessibility),
        ),
        FloatingActionButton.large(
          heroTag: 'FAB large',
          onPressed: () {},
          tooltip: 'Tooltip on large\nFloatingActionButton',
          child: const Icon(Icons.accessibility),
        ),
      ],
    );
  }
}

class SwitchShowcase extends StatelessWidget {
  const SwitchShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 4,
      children: <Widget>[
        Switch(
          value: true,
          onChanged: (bool value) {},
        ),
        Switch(
          value: false,
          onChanged: (bool value) {},
        ),
        const Switch(
          value: true,
          onChanged: null,
        ),
        const Switch(
          value: false,
          onChanged: null,
        ),
      ],
    );
  }
}

class CheckboxShowcase extends StatelessWidget {
  const CheckboxShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 4,
      children: <Widget>[
        Checkbox(
          value: true,
          onChanged: (bool? value) {},
        ),
        Checkbox(
          value: false,
          onChanged: (bool? value) {},
        ),
        const Checkbox(
          value: true,
          onChanged: null,
        ),
        const Checkbox(
          value: false,
          onChanged: null,
        ),
      ],
    );
  }
}

class RadioShowcase extends StatelessWidget {
  const RadioShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 4,
      children: <Widget>[
        Radio<bool>(
          value: true,
          groupValue: true,
          onChanged: (bool? value) {},
        ),
        Radio<bool>(
          value: false,
          groupValue: true,
          onChanged: (bool? value) {},
        ),
        const Radio<bool>(
          value: true,
          groupValue: true,
          onChanged: null,
        ),
        const Radio<bool>(
          value: false,
          groupValue: true,
          onChanged: null,
        ),
      ],
    );
  }
}

class PopupMenuShowcase extends StatelessWidget {
  const PopupMenuShowcase({
    super.key,
    this.enabled = true,
    this.popupRadius,
  });
  final bool enabled;
  final double? popupRadius;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 4,
      children: <Widget>[
        _PopupMenuButton(enabled: enabled, radius: popupRadius),
      ],
    );
  }
}

class _PopupMenuButton extends StatelessWidget {
  const _PopupMenuButton({
    this.enabled = true,
    this.radius,
  });
  final bool enabled;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme scheme = theme.colorScheme;
    return PopupMenuButton<int>(
      onSelected: (_) {},
      enabled: enabled,
      tooltip: enabled ? 'Show menu' : 'Menu disabled',
      itemBuilder: (BuildContext context) => const <PopupMenuItem<int>>[
        PopupMenuItem<int>(value: 1, child: Text('Option 1')),
        PopupMenuItem<int>(value: 2, child: Text('Option 2')),
        PopupMenuItem<int>(value: 3, child: Text('Option 3')),
        PopupMenuItem<int>(value: 4, child: Text('Option 4')),
        PopupMenuItem<int>(value: 5, child: Text('Option 5')),
      ],
      child: AbsorbPointer(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: scheme.primary,
            foregroundColor: scheme.onPrimary,
            disabledForegroundColor: scheme.onSurface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius ?? 8)),
            ),
          ),
          onPressed: enabled ? () {} : null,
          icon: const Icon(Icons.expand_more_outlined),
          label: const Text('PopupMenu'),
        ),
      ),
    );
  }
}

class _DropDownButton extends StatefulWidget {
  const _DropDownButton();

  @override
  State<_DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<_DropDownButton> {
  String selectedItem = 'Dropdown button 1';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedItem,
      onChanged: (String? value) {
        setState(() {
          selectedItem = value ?? 'Dropdown button 1';
        });
      },
      items: <String>[
        'Dropdown button 1',
        'Dropdown button 2',
        'Dropdown button 3',
        'Dropdown button 4',
        'Dropdown button 5'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class _DropDownButtonFormField extends StatefulWidget {
  const _DropDownButtonFormField();

  @override
  State<_DropDownButtonFormField> createState() =>
      _DropDownButtonFormFieldState();
}

class _DropDownButtonFormFieldState extends State<_DropDownButtonFormField> {
  String selectedItem = 'Dropdown button form field 1';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedItem,
      onChanged: (String? value) {
        setState(() {
          selectedItem = value ?? 'Dropdown button form field 1';
        });
      },
      items: <String>[
        'Dropdown button form field 1',
        'Dropdown button form field 2',
        'Dropdown button form field 3',
        'Dropdown button form field 4',
        'Dropdown button form field 5'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class IconButtonCircleAvatarDropdownTooltipShowcase extends StatefulWidget {
  const IconButtonCircleAvatarDropdownTooltipShowcase({super.key});

  @override
  State<IconButtonCircleAvatarDropdownTooltipShowcase> createState() =>
      _IconButtonCircleAvatarDropdownTooltipShowcaseState();
}

class _IconButtonCircleAvatarDropdownTooltipShowcaseState
    extends State<IconButtonCircleAvatarDropdownTooltipShowcase> {
  bool isLockOpen = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 16,
      runSpacing: 4,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: IconButton(
            icon: const Icon(Icons.accessibility),
            tooltip: 'Tooltip on\nIconButton',
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: IconButton(
            icon: const Icon(Icons.lock_outlined),
            selectedIcon: const Icon(Icons.lock_open_outlined),
            tooltip: isLockOpen ? 'In M3 tap to close' : 'In M3 tap to open',
            isSelected: isLockOpen,
            onPressed: () {
              setState(() {
                isLockOpen = !isLockOpen;
              });
            },
          ),
        ),
        const Tooltip(
          message: 'Tooltip on\nCircleAvatar',
          child: CircleAvatar(
            child: Text('AV'),
          ),
        ),
        const _DropDownButton(),
        const Tooltip(
          message: 'Current tooltip theme.\nThis a two row tooltip.',
          child: Text('Text with tooltip'),
        ),
      ],
    );
  }
}

class ChipShowcase extends StatelessWidget {
  const ChipShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        Chip(
          label: const Text('Chip'),
          onDeleted: () {},
        ),
        const Chip(
          label: Text('Chip'),
          avatar: FlutterLogo(),
        ),
        ActionChip(
          label: const Text('ActionChip'),
          avatar: const Icon(Icons.settings),
          onPressed: () {},
        ),
        const ActionChip(
          label: Text('ActionChip'),
          avatar: Icon(Icons.settings),
        ),
        FilterChip(
          label: const Text('FilterChip'),
          selected: true,
          onSelected: (bool value) {},
        ),
        FilterChip(
          label: const Text('FilterChip'),
          selected: false,
          onSelected: (bool value) {},
        ),
        const FilterChip(
          label: Text('FilterChip'),
          selected: true,
          onSelected: null,
        ),
        ChoiceChip(
          label: const Text('ChoiceChip'),
          selected: true,
          onSelected: (bool value) {},
        ),
        ChoiceChip(
          label: const Text('ChoiceChip'),
          selected: false,
          onSelected: (bool value) {},
        ),
        const ChoiceChip(
          label: Text('ChoiceChip'),
          selected: true,
        ),
        InputChip(
          label: const Text('InputChip'),
          onSelected: (bool value) {},
          onDeleted: () {},
        ),
        InputChip(
          showCheckmark: true,
          selected: true,
          label: const Text('InputChip'),
          onSelected: (bool value) {},
          onDeleted: () {},
        ),
        InputChip(
          label: const Text('InputChip'),
          isEnabled: false,
          onSelected: (bool value) {},
          onDeleted: () {},
          // onDeleted: () {},
        ),
      ],
    );
  }
}

class TextInputField extends StatefulWidget {
  const TextInputField({this.filled, super.key});
  final bool? filled;

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  late TextEditingController _textController1;
  late TextEditingController _textController2;
  bool _errorState1 = false;
  bool _errorState2 = false;

  @override
  void initState() {
    super.initState();
    _textController1 = TextEditingController();
    _textController2 = TextEditingController();
  }

  @override
  void dispose() {
    _textController1.dispose();
    _textController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String text) {
            setState(() {
              if (text.contains('a') | text.isEmpty) {
                _errorState1 = false;
              } else {
                _errorState1 = true;
              }
            });
          },
          key: const Key('TextField1'),
          controller: _textController1,
          decoration: InputDecoration(
            filled: widget.filled ?? true,
            hintText: 'Write something...',
            labelText: 'TextField - Underline border',
            errorText: _errorState1
                ? "Any entry without an 'a' will trigger this error"
                : null,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: (String text) {
            setState(() {
              if (text.contains('a') | text.isEmpty) {
                _errorState2 = false;
              } else {
                _errorState2 = true;
              }
            });
          },
          key: const Key('TextField2'),
          controller: _textController2,
          decoration: InputDecoration(
            filled: widget.filled ?? true,
            border: const OutlineInputBorder(),
            hintText: 'Write something...',
            labelText: 'TextField - Outline border',
            prefixIcon: const Icon(Icons.search),
            suffixIcon: const Icon(Icons.info),
            errorText: _errorState2
                ? "Any entry without an 'a' will trigger this error"
                : null,
          ),
        ),
        const SizedBox(height: 8),
        const TextField(
          enabled: false,
          decoration: InputDecoration(
            labelText: 'TextField - Disabled',
          ),
        ),
        const SizedBox(height: 8),
        const _DropDownButtonFormField(),
      ],
    );
  }
}

class AppBarShowcase extends StatelessWidget {
  const AppBarShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      removeTop: true,
      child: Column(
        children: <Widget>[
          AppBar(
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            title: const Text('Normal AppBar'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 8),
          CustomScrollView(
            // Normally avoid shrinkWrap, but for showing a few widgets here
            // it is fine
            shrinkWrap: true,
            slivers: <Widget>[
              SliverAppBar(
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                title: const Text('Sliver AppBar'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 8)),
              SliverAppBar.medium(
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                title: const Text('SliverAppBar.medium'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 8)),
              SliverAppBar.large(
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                title: const Text('SliverAppBar.large'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TabBarForAppBarShowcase extends StatelessWidget {
  const TabBarForAppBarShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final bool useMaterial3 = theme.useMaterial3;
    final ColorScheme colorScheme = theme.colorScheme;

    final Color effectiveTabBackground =
        Theme.of(context).appBarTheme.backgroundColor ??
            (useMaterial3
                ? colorScheme.surface
                : isDark
                    ? colorScheme.surface
                    : colorScheme.primary);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);

    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            color: effectiveTabBackground,
            child: const SizedBox(
              height: 70,
              child: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'Chat',
                    icon: Icon(Icons.chat_bubble),
                  ),
                  Tab(
                    text: 'Tasks',
                    icon: Icon(Icons.beenhere),
                  ),
                  Tab(
                    text: 'Folder',
                    icon: Icon(Icons.create_new_folder),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Text(
              'TabBar',
              style: denseHeader,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Text(
              'TabBar theme needs to know if is '
              'used on surface or primary color. Since it is often used in '
              'an AppBar, its style need varies with it.',
              style: denseBody,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarShowcase extends StatefulWidget {
  const BottomNavigationBarShowcase({super.key});

  @override
  State<BottomNavigationBarShowcase> createState() =>
      _BottomNavigationBarShowcaseState();
}

class _BottomNavigationBarShowcaseState
    extends State<BottomNavigationBarShowcase> {
  int buttonIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          removeTop: true,
          child: BottomNavigationBar(
            currentIndex: buttonIndex,
            onTap: (int value) {
              setState(() {
                buttonIndex = value;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                label: 'Chat',
                // title: Text('Item 1'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.beenhere),
                label: 'Tasks',
                // title: Text('Item 2'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.create_new_folder),
                label: 'Folder',
                // title: Text('Item 3'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Text(
            'BottomNavigationBar (Material 2)',
            style: denseHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(
            'Default background color is theme canvasColor via Material, '
            'canvasColor is set to color scheme background, default '
            'elevation is 8, but gets no visible elevation in M3.',
            style: denseBody,
          ),
        ),
      ],
    );
  }
}

class NavigationBarShowcase extends StatefulWidget {
  const NavigationBarShowcase({super.key});

  @override
  State<NavigationBarShowcase> createState() => _NavigationBarShowcaseState();
}

class _NavigationBarShowcaseState extends State<NavigationBarShowcase> {
  int buttonIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          removeTop: true,
          child: NavigationBar(
            selectedIndex: buttonIndex,
            onDestinationSelected: (int value) {
              setState(() {
                buttonIndex = value;
              });
            },
            destinations: const <NavigationDestination>[
              NavigationDestination(
                icon: Icon(Icons.chat_bubble),
                label: 'Chat',
              ),
              NavigationDestination(
                icon: Icon(Icons.beenhere),
                label: 'Tasks',
              ),
              NavigationDestination(
                icon: Icon(Icons.create_new_folder),
                label: 'Folder',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Text(
            'NavigationBar (Material 3)',
            style: denseHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(
            'Default background color is surface with an onSurface overlay '
            'color in M2, and primary in M3, with elevation 3.',
            style: denseBody,
          ),
        ),
      ],
    );
  }
}

class NavigationRailShowcase extends StatefulWidget {
  const NavigationRailShowcase({
    super.key,
    this.child,
    this.height = 400,
  });

  /// A child widget that we can use to place controls on the
  /// side of the NavigationRail in the show case widget.
  final Widget? child;

  /// The vertical space for the navigation bar.
  final double height;

  @override
  State<NavigationRailShowcase> createState() => _NavigationRailShowcaseState();
}

class _NavigationRailShowcaseState extends State<NavigationRailShowcase> {
  int buttonIndex = 0;
  bool isExtended = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Text(
            'NavigationRail',
            style: denseHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(
            'Default SDK background color is theme.colorScheme.surface. '
            'FlexColorScheme sub-theme default is colorScheme.background.',
            style: denseBody,
          ),
        ),
        const Divider(height: 1),
        SizedBox(
          height: widget.height,
          // If we expand the rail and have a very narrow screen, it will
          // take up a lot of height, more than we want to give to the demo
          // panel, just let it overflow then. This may happen when we place
          // a lot of widgets in the child that no longer fits on a phone
          // with expanded rail.
          child: ClipRect(
            child: OverflowBox(
              alignment: AlignmentDirectional.topStart,
              maxHeight: 1200,
              child: Row(
                children: <Widget>[
                  MediaQuery.removePadding(
                    context: context,
                    removeBottom: true,
                    removeTop: true,
                    child: NavigationRail(
                      extended: isExtended,
                      minExtendedWidth: 150,
                      labelType:
                          isExtended ? NavigationRailLabelType.none : null,
                      selectedIndex: buttonIndex,
                      onDestinationSelected: (int value) {
                        setState(() {
                          buttonIndex = value;
                        });
                      },
                      destinations: const <NavigationRailDestination>[
                        NavigationRailDestination(
                          icon: Icon(Icons.chat_bubble),
                          label: Text('Chat'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.beenhere),
                          label: Text('Tasks'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.create_new_folder),
                          label: Text('Folder'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.logout),
                          label: Text('Logout'),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(width: 1),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        SwitchListTile(
                          title: const Text('Expand and collapse'),
                          subtitle: const Text('ON to expand  OFF to collapse\n'
                              'Only used for local control of Rail '
                              'presentation.'),
                          value: isExtended,
                          onChanged: (bool value) {
                            setState(() {
                              isExtended = value;
                            });
                          },
                        ),
                        widget.child ?? const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ListTileShowcase extends StatelessWidget {
  const ListTileShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('ListTile'),
          subtitle: const Text('List tile sub title'),
          trailing: const Text('Trailing'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('ListTile selected'),
          subtitle: const Text('Selected list tile sub title'),
          trailing: const Text('Trailing'),
          selected: true,
          onTap: () {},
        ),
        const Divider(height: 1),
        SwitchListTile(
          secondary: const Icon(Icons.info),
          title: const Text('SwitchListTile'),
          subtitle: const Text('The switch list tile is OFF'),
          value: false,
          onChanged: (bool value) {},
        ),
        SwitchListTile(
          secondary: const Icon(Icons.info),
          title: const Text('SwitchListTile'),
          subtitle: const Text('The switch list tile is ON'),
          value: true,
          onChanged: (bool value) {},
        ),
        const Divider(height: 1),
        CheckboxListTile(
          secondary: const Icon(Icons.info),
          title: const Text('CheckboxListTile'),
          subtitle: const Text('The checkbox list tile is unchecked'),
          value: false,
          onChanged: (bool? value) {},
        ),
        CheckboxListTile(
          secondary: const Icon(Icons.info),
          title: const Text('CheckboxListTile'),
          subtitle: const Text('The checkbox list tile is checked'),
          value: true,
          onChanged: (bool? value) {},
        ),
        CheckboxListTile(
          secondary: const Icon(Icons.info),
          title: const Text('CheckboxListTile'),
          subtitle: const Text('The checkbox list tile is null in tristate'),
          tristate: true,
          value: null,
          onChanged: (bool? value) {},
        ),
        const Divider(height: 1),
        RadioListTile<int>(
          secondary: const Icon(Icons.info),
          title: const Text('RadioListTile'),
          subtitle: const Text('The radio option is unselected'),
          value: 0,
          onChanged: (_) {},
          groupValue: 1,
        ),
        RadioListTile<int>(
          secondary: const Icon(Icons.info),
          title: const Text('RadioListTile'),
          subtitle: const Text('The radio option is selected'),
          value: 1,
          onChanged: (_) {},
          groupValue: 1,
        ),
        RadioListTile<int>(
          secondary: const Icon(Icons.info),
          title: const Text('RadioListTile'),
          subtitle: const Text('The radio option and list tile is selected'),
          value: 1,
          selected: true,
          onChanged: (_) {},
          groupValue: 1,
        ),
      ],
    );
  }
}

class TimePickerDialogShowcase extends StatelessWidget {
  const TimePickerDialogShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    // The TimePickerDialog pops the context with its buttons, clicking them
    // pops the page when not used in a showDialog. We just need to see it, no
    // need to use it to visually see what it looks like, so absorbing pointers.
    return AbsorbPointer(
      child: TimePickerDialog(
        initialTime: TimeOfDay.now(),
      ),
    );
  }
}

class DatePickerDialogShowcase extends StatelessWidget {
  const DatePickerDialogShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    // The DatePickerDialog pops the context with its buttons, clicking them
    // pops the page when not used in a showDialog. We just need to see it, no
    // need to use it to visually see what it looks like, so absorbing pointers.
    return AbsorbPointer(
      child: DatePickerDialog(
        initialDate: DateTime.now(),
        firstDate: DateTime(1930),
        lastDate: DateTime(2050),
      ),
    );
  }
}

class AlertDialogShowcase extends StatelessWidget {
  const AlertDialogShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Allow location services'),
      content: const Text('Let us help determine location. This means '
          'sending anonymous location data to us'),
      actions: <Widget>[
        TextButton(onPressed: () {}, child: const Text('CANCEL')),
        TextButton(onPressed: () {}, child: const Text('ALLOW')),
      ],
      actionsPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}

class MaterialAndBottomSheetShowcase extends StatelessWidget {
  const MaterialAndBottomSheetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final bool isLight = theme.brightness == Brightness.light;

    final Color defaultBackgroundColor = isLight
        ? Color.alphaBlend(
            colorScheme.onSurface.withOpacity(0.80), colorScheme.surface)
        : colorScheme.onSurface;
    final Color snackBackground =
        theme.snackBarTheme.backgroundColor ?? defaultBackgroundColor;
    final Color snackForeground =
        ThemeData.estimateBrightnessForColor(snackBackground) ==
                Brightness.light
            ? Colors.black
            : Colors.white;
    final TextStyle snackStyle = theme.snackBarTheme.contentTextStyle ??
        ThemeData(brightness: Brightness.light)
            .textTheme
            .titleMedium!
            .copyWith(color: snackForeground);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Material elevation and tint', style: denseHeader),
        Text(
          'When useMaterial3 is true, Material gets no elevation, '
          'unless its shadowColor is also specified, which is not needed when '
          'it is false and using M2. To in M3 give it surface elevated '
          'tint, also specify its surfaceTint color.',
          style: denseBody,
        ),
        const SizedBox(height: 12),
        Text('Material type canvas', style: denseHeader),
        Text(
          'Default background color is theme canvasColor, and '
          'theme canvasColor is set to theme colorScheme background. The '
          'color canvasColor is going to be deprecated in Flutter SDK',
          style: denseBody,
        ),
        const Divider(),
        const SizedBox(height: 8),
        const Material(
          type: MaterialType.canvas,
          elevation: 0,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 0, '
                  'default',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
        const Material(
          type: MaterialType.canvas,
          elevation: 1,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 1, '
                  'default',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.canvas,
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 1, '
                  'with surfaceTint, no shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.canvas,
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: colorScheme.shadow,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 1, '
                  'with surfaceTint, and shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
        const Material(
          type: MaterialType.canvas,
          elevation: 6,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 6, '
                  'default',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.canvas,
          elevation: 6,
          surfaceTintColor: colorScheme.surfaceTint,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 6, '
                  'with surfaceTint, no shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.canvas,
          elevation: 6,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: colorScheme.shadow,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 6, '
                  'with surfaceTint, and shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
        Text('Material type card', style: denseHeader),
        Text(
          'Default background color is theme cardColor, and '
          'theme cardColor is set to theme colorScheme surface. The '
          'color cardColor is going to be deprecated in Flutter SDK',
          style: denseBody,
        ),
        const Divider(),
        const SizedBox(height: 8),
        const Material(
          type: MaterialType.card,
          elevation: 0,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 0, '
                  'default',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
        const Material(
          type: MaterialType.card,
          elevation: 1,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 1, '
                  'default',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.card,
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 1, '
                  'with surfaceTint, no shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.card,
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: colorScheme.shadow,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 1, '
                  'with surfaceTint, and shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
        const Material(
          type: MaterialType.card,
          elevation: 6,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 6, '
                  'default',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.card,
          elevation: 6,
          surfaceTintColor: colorScheme.surfaceTint,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 6, '
                  'with surfaceTint, no shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.card,
          elevation: 6,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: colorScheme.shadow,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 6, '
                  'with surfaceTint, and shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
        const Divider(height: 1),
        MaterialBanner(
          padding: const EdgeInsets.all(20),
          content: const Text('Hello, I am a Material Banner'),
          leading: const Icon(Icons.agriculture_outlined),
          actions: <Widget>[
            TextButton(
              child: const Text('OPEN'),
              onPressed: () {},
            ),
            TextButton(
              child: const Text('DISMISS'),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 24),
        AbsorbPointer(
          child: BottomSheet(
            enableDrag: false,
            onClosing: () {},
            builder: (final BuildContext context) => SizedBox(
              height: 150,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Text(
                      'A Material BottomSheet',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Like Drawer it uses Material of type canvas as '
                      'background.',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    Material(
                      color: snackBackground,
                      elevation: 0,
                      surfaceTintColor: colorScheme.surfaceTint,
                      shadowColor: colorScheme.shadow,
                      child: SizedBox(
                        height: 40,
                        child: Center(
                          child: Text(
                              'A Material SnackBar, style simulation only',
                              style: snackStyle),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardShowcase extends StatelessWidget {
  const CardShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Card', style: denseHeader),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Default background color comes from Material of type card. '
            'When useMaterial3 is true, Card gets elevation based '
            'surfaceTint, when it is false and using M2, surfaceTint has no '
            'effect even if specified.',
            style: denseBody,
          ),
        ),
        Card(
          elevation: 0,
          surfaceTintColor: colorScheme.surfaceTint,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 0',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Card(
          elevation: 1,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Card, elevation 1, default',
                textAlign: TextAlign.center,
              )),
            ),
          ),
        ),
        const SizedBox(height: 2),
        Card(
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 1, with surfaceTint',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        Card(
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 1,  with surfaceTint, '
                  'transparent shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const Divider(),
        const Card(
          elevation: 4,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 4, default',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Card(
          elevation: 4,
          surfaceTintColor: colorScheme.surfaceTint,
          child: const SizedBox(
            height: 60,
            child: Center(
              child: Text(
                'Card, elevation 4, with surfaceTint',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Card(
          elevation: 4,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 4, with surfaceTint, '
                  'transparent shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const Divider(),
        const Card(
          elevation: 10,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 10, default',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Card(
          elevation: 10,
          surfaceTintColor: colorScheme.surfaceTint,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 10, with surfaceTint',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Card(
          elevation: 10,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Card, elevation 10, with surfaceTint, '
                'transparent shadow',
                textAlign: TextAlign.center,
              )),
            ),
          ),
        ),
      ],
    );
  }
}

class TextThemeShowcase extends StatelessWidget {
  const TextThemeShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return TextThemeColumnShowcase(textTheme: Theme.of(context).textTheme);
  }
}

class PrimaryTextThemeShowcase extends StatelessWidget {
  const PrimaryTextThemeShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return TextThemeColumnShowcase(
        textTheme: Theme.of(context).primaryTextTheme);
  }
}

class TextThemeColumnShowcase extends StatelessWidget {
  const TextThemeColumnShowcase({super.key, required this.textTheme});
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Font: ${textTheme.titleSmall!.fontFamily}',
            style:
                textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600)),
        Text(
          'Display Large '
          '(${textTheme.displayLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.displayLarge,
        ),
        Text(
          'Display Medium '
          '(${textTheme.displayMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.displayMedium,
        ),
        Text(
          'Display Small '
          '(${textTheme.displaySmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.displaySmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Headline Large '
          '(${textTheme.headlineLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.headlineLarge,
        ),
        Text(
          'Headline Medium '
          '(${textTheme.headlineMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.headlineMedium,
        ),
        Text(
          'Headline Small '
          '(${textTheme.headlineSmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.headlineSmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Title Large '
          '(${textTheme.titleLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.titleLarge,
        ),
        Text(
          'Title Medium '
          '(${textTheme.titleMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.titleMedium,
        ),
        Text(
          'Title Small '
          '(${textTheme.titleSmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.titleSmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Body Large '
          '(${textTheme.bodyLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.bodyLarge,
        ),
        Text(
          'Body Medium '
          '(${textTheme.bodyMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.bodyMedium,
        ),
        Text(
          'Body Small '
          '(${textTheme.bodySmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.bodySmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Label Large '
          '(${textTheme.labelLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.labelLarge,
        ),
        Text(
          'Label Medium '
          '(${textTheme.labelMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.labelMedium,
        ),
        Text(
          'Label Small '
          '(${textTheme.labelSmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.labelSmall,
        ),
      ],
    );
  }
}

/// Draw a number of boxes showing the colors of key theme color properties
/// in the ColorScheme of the inherited ThemeData and its color properties.
class ShowColorSchemeColors extends StatelessWidget {
  const ShowColorSchemeColors({super.key, this.onBackgroundColor});

  /// The color of the background the color widget are being drawn on.
  ///
  /// Some of the theme colors may have semi transparent fill color. To compute
  /// a legible text color for the sum when it shown on a background color, we
  /// need to alpha merge it with background and we need the exact background
  /// color it is drawn on for that. If not passed in from parent, it is
  /// assumed to be drawn on card color, which usually is close enough.
  final Color? onBackgroundColor;

  // Return true if the color is light, meaning it needs dark text for contrast.
  static bool _isLight(final Color color) =>
      ThemeData.estimateBrightnessForColor(color) == Brightness.light;

  // Return true if the color is dark, meaning it needs light text for contrast.
  static bool _isDark(final Color color) =>
      ThemeData.estimateBrightnessForColor(color) == Brightness.dark;

  // On color used when a theme color property does not have a theme onColor.
  static Color _onColor(final Color color, final Color bg) =>
      _isLight(Color.alphaBlend(color, bg)) ? Colors.black : Colors.white;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final bool isDark = colorScheme.brightness == Brightness.dark;
    final bool useMaterial3 = theme.useMaterial3;

    final MediaQueryData media = MediaQuery.of(context);
    final bool isPhone = media.size.width < phoneWidthBreakpoint ||
        media.size.height < phoneHeightBreakpoint;
    final double spacing = isPhone ? 3 : 6;

    // Grab the card border from the theme card shape
    ShapeBorder? border = theme.cardTheme.shape;
    // If we had one, copy in a border side to it.
    if (border is RoundedRectangleBorder) {
      border = border.copyWith(
        side: BorderSide(
          color: theme.dividerColor,
          width: 1,
        ),
      );
      // If
    } else {
      // If border was null, make one matching Card default, but with border
      // side, if it was not null, we leave it as it was.
      border ??= RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(useMaterial3 ? 12 : 4)),
        side: BorderSide(
          color: theme.dividerColor,
          width: 1,
        ),
      );
    }

    // Get effective background color.
    final Color background =
        onBackgroundColor ?? theme.cardTheme.color ?? theme.cardColor;

    // Warning label for scaffold background when it uses to much blend.
    final String surfaceTooHigh = isDark
        ? _isLight(theme.colorScheme.surface)
            ? '\nTOO HIGH'
            : ''
        : _isDark(theme.colorScheme.surface)
            ? '\nTOO HIGH'
            : '';

    // Warning label for scaffold background when it uses to much blend.
    final String backTooHigh = isDark
        ? _isLight(theme.colorScheme.background)
            ? '\nTOO HIGH'
            : ''
        : _isDark(theme.colorScheme.background)
            ? '\nTOO HIGH'
            : '';

    // Wrap this widget branch in a custom theme where card has a border outline
    // if it did not have one, but retains in ambient themed border radius.
    return Theme(
      data: Theme.of(context).copyWith(
        cardTheme: CardTheme.of(context).copyWith(
          elevation: 0,
          shape: border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'ColorScheme Colors',
              style: theme.textTheme.titleMedium,
            ),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: spacing,
            runSpacing: spacing,
            children: <Widget>[
              ColorCard(
                label: 'Primary',
                color: colorScheme.primary,
                textColor: colorScheme.onPrimary,
              ),
              ColorCard(
                label: 'on\nPrimary',
                color: colorScheme.onPrimary,
                textColor: colorScheme.primary,
              ),
              ColorCard(
                label: 'Primary\nContainer',
                color: colorScheme.primaryContainer,
                textColor: colorScheme.onPrimaryContainer,
              ),
              ColorCard(
                label: 'onPrimary\nContainer',
                color: colorScheme.onPrimaryContainer,
                textColor: colorScheme.primaryContainer,
              ),
              ColorCard(
                label: 'Secondary',
                color: colorScheme.secondary,
                textColor: colorScheme.onSecondary,
              ),
              ColorCard(
                label: 'on\nSecondary',
                color: colorScheme.onSecondary,
                textColor: colorScheme.secondary,
              ),
              ColorCard(
                label: 'Secondary\nContainer',
                color: colorScheme.secondaryContainer,
                textColor: colorScheme.onSecondaryContainer,
              ),
              ColorCard(
                label: 'on\nSecondary\nContainer',
                color: colorScheme.onSecondaryContainer,
                textColor: colorScheme.secondaryContainer,
              ),
              ColorCard(
                label: 'Tertiary',
                color: colorScheme.tertiary,
                textColor: colorScheme.onTertiary,
              ),
              ColorCard(
                label: 'on\nTertiary',
                color: colorScheme.onTertiary,
                textColor: colorScheme.tertiary,
              ),
              ColorCard(
                label: 'Tertiary\nContainer',
                color: colorScheme.tertiaryContainer,
                textColor: colorScheme.onTertiaryContainer,
              ),
              ColorCard(
                label: 'on\nTertiary\nContainer',
                color: colorScheme.onTertiaryContainer,
                textColor: colorScheme.tertiaryContainer,
              ),
              ColorCard(
                label: 'Error',
                color: colorScheme.error,
                textColor: colorScheme.onError,
              ),
              ColorCard(
                label: 'on\nError',
                color: colorScheme.onError,
                textColor: colorScheme.error,
              ),
              ColorCard(
                label: 'Error\nContainer',
                color: colorScheme.errorContainer,
                textColor: colorScheme.onErrorContainer,
              ),
              ColorCard(
                label: 'onError\nContainer',
                color: colorScheme.onErrorContainer,
                textColor: colorScheme.errorContainer,
              ),
              ColorCard(
                label: 'Background$backTooHigh',
                color: colorScheme.background,
                textColor: colorScheme.onBackground,
              ),
              ColorCard(
                label: 'on\nBackground',
                color: colorScheme.onBackground,
                textColor: colorScheme.background,
              ),
              ColorCard(
                label: 'Surface$surfaceTooHigh',
                color: colorScheme.surface,
                textColor: colorScheme.onSurface,
              ),
              ColorCard(
                label: 'on\nSurface',
                color: colorScheme.onSurface,
                textColor: colorScheme.surface,
              ),
              ColorCard(
                label: 'Surface\nVariant',
                color: colorScheme.surfaceVariant,
                textColor: colorScheme.onSurfaceVariant,
              ),
              ColorCard(
                label: 'onSurface\nVariant',
                color: colorScheme.onSurfaceVariant,
                textColor: colorScheme.surfaceVariant,
              ),
              ColorCard(
                label: 'Outline',
                color: colorScheme.outline,
                textColor: colorScheme.background,
              ),
              ColorCard(
                label: 'Shadow',
                color: colorScheme.shadow,
                textColor: _onColor(colorScheme.shadow, background),
              ),
              ColorCard(
                label: 'Inverse\nSurface',
                color: colorScheme.inverseSurface,
                textColor: colorScheme.onInverseSurface,
              ),
              ColorCard(
                label: 'onInverse\nSurface',
                color: colorScheme.onInverseSurface,
                textColor: colorScheme.inverseSurface,
              ),
              ColorCard(
                label: 'Inverse\nPrimary',
                color: colorScheme.inversePrimary,
                textColor: colorScheme.inverseSurface,
              ),
              ColorCard(
                label: 'Surface\nTint',
                color: colorScheme.surfaceTint,
                textColor: colorScheme.onPrimary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Draw a number of boxes showing the colors of key theme color properties
/// in the ColorScheme of the inherited ThemeData and some of its key color
/// properties.
class ShowThemeDataColors extends StatelessWidget {
  const ShowThemeDataColors({
    super.key,
    this.onBackgroundColor,
  });

  /// The color of the background the color widget are being drawn on.
  ///
  /// Some of the theme colors may have semi-transparent fill color. To compute
  /// a legible text color for the sum when it shown on a background color, we
  /// need to alpha merge it with background and we need the exact background
  /// color it is drawn on for that. If not passed in from parent, it is
  /// assumed to be drawn on card color, which usually is close enough.
  final Color? onBackgroundColor;

  // Return true if the color is light, meaning it needs dark text for contrast.
  static bool _isLight(final Color color) =>
      ThemeData.estimateBrightnessForColor(color) == Brightness.light;

  // Return true if the color is dark, meaning it needs light text for contrast.
  static bool _isDark(final Color color) =>
      ThemeData.estimateBrightnessForColor(color) == Brightness.dark;

  // On color used when a theme color property does not have a theme onColor.
  static Color _onColor(final Color color, final Color background) =>
      _isLight(Color.alphaBlend(color, background))
          ? Colors.black
          : Colors.white;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final bool isDark = colorScheme.brightness == Brightness.dark;
    final bool useMaterial3 = theme.useMaterial3;

    final MediaQueryData media = MediaQuery.of(context);
    final bool isPhone = media.size.width < phoneWidthBreakpoint ||
        media.size.height < phoneHeightBreakpoint;
    final double spacing = isPhone ? 3 : 6;

    // Grab the card border from the theme card shape
    ShapeBorder? border = theme.cardTheme.shape;
    // If we had one, copy in a border side to it.
    if (border is RoundedRectangleBorder) {
      border = border.copyWith(
        side: BorderSide(
          color: theme.dividerColor,
          width: 1,
        ),
      );
    } else {
      // If border was null, make one matching Card default, but with border
      // side, if it was not null, we leave it as it was.
      border ??= RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(useMaterial3 ? 12 : 4)),
        side: BorderSide(
          color: theme.dividerColor,
          width: 1,
        ),
      );
    }

    // Get effective background color.
    final Color background =
        onBackgroundColor ?? theme.cardTheme.color ?? theme.cardColor;

    // Warning label for scaffold background when it uses to much blend.
    final String scaffoldTooHigh = isDark
        ? _isLight(theme.scaffoldBackgroundColor)
            ? '\nTOO HIGH'
            : ''
        : _isDark(theme.scaffoldBackgroundColor)
            ? '\nTOO HIGH'
            : '';
    // Warning label for scaffold background when it uses to much blend.
    final String surfaceTooHigh = isDark
        ? _isLight(theme.colorScheme.surface)
            ? '\nTOO HIGH'
            : ''
        : _isDark(theme.colorScheme.surface)
            ? '\nTOO HIGH'
            : '';

    // Warning label for scaffold background when it uses to much blend.
    final String backTooHigh = isDark
        ? _isLight(theme.colorScheme.background)
            ? '\nTOO HIGH'
            : ''
        : _isDark(theme.colorScheme.background)
            ? '\nTOO HIGH'
            : '';

    // Wrap this widget branch in a custom theme where card has a border outline
    // if it did not have one, but retains in ambient themed border radius.
    return Theme(
      data: Theme.of(context).copyWith(
        cardTheme: CardTheme.of(context).copyWith(
          elevation: 0,
          shape: border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'ThemeData Colors',
              style: theme.textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: spacing,
            runSpacing: spacing,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              ColorCard(
                label: 'Primary\nColor',
                color: theme.primaryColor,
                textColor: _onColor(theme.primaryColor, background),
              ),
              ColorCard(
                label: 'Primary\nDark',
                color: theme.primaryColorDark,
                textColor: _onColor(theme.primaryColorDark, background),
              ),
              ColorCard(
                label: 'Primary\nLight',
                color: theme.primaryColorLight,
                textColor: _onColor(theme.primaryColorLight, background),
              ),
              ColorCard(
                label: 'Secondary\nHeader',
                color: theme.secondaryHeaderColor,
                textColor: _onColor(theme.secondaryHeaderColor, background),
              ),
              ColorCard(
                label: 'Toggleable\nActive',
                color: theme.toggleableActiveColor,
                textColor: _onColor(theme.toggleableActiveColor, background),
              ),
              ColorCard(
                label: 'Bottom\nAppBar',
                color: theme.bottomAppBarColor,
                textColor: _onColor(theme.bottomAppBarColor, background),
              ),
              ColorCard(
                label: 'Error\nColor',
                color: theme.errorColor,
                textColor: colorScheme.onError,
              ),
              ColorCard(
                label: 'Canvas$backTooHigh',
                color: theme.canvasColor,
                textColor: _onColor(theme.canvasColor, background),
              ),
              ColorCard(
                label: 'Card$surfaceTooHigh',
                color: theme.cardColor,
                textColor: _onColor(theme.cardColor, background),
              ),
              ColorCard(
                label: 'Scaffold\nBackground$scaffoldTooHigh',
                color: theme.scaffoldBackgroundColor,
                textColor: _onColor(theme.scaffoldBackgroundColor, background),
              ),
              ColorCard(
                label: 'Dialog',
                color: theme.dialogBackgroundColor,
                textColor: _onColor(theme.dialogBackgroundColor, background),
              ),
              ColorCard(
                label: 'Indicator\nColor',
                color: theme.indicatorColor,
                textColor: _onColor(theme.indicatorColor, background),
              ),
              ColorCard(
                label: 'Divider\nColor',
                color: theme.dividerColor,
                textColor: _onColor(theme.dividerColor, background),
              ),
              ColorCard(
                label: 'Disabled\nColor',
                color: theme.disabledColor,
                textColor: _onColor(theme.disabledColor, background),
              ),
              ColorCard(
                label: 'Hover\nColor',
                color: theme.hoverColor,
                textColor: _onColor(theme.hoverColor, background),
              ),
              ColorCard(
                label: 'Focus\nColor',
                color: theme.focusColor,
                textColor: _onColor(theme.focusColor, background),
              ),
              ColorCard(
                label: 'Highlight\nColor',
                color: theme.highlightColor,
                textColor: _onColor(theme.highlightColor, background),
              ),
              ColorCard(
                label: 'Splash\nColor',
                color: theme.splashColor,
                textColor: _onColor(theme.splashColor, background),
              ),
              ColorCard(
                label: 'Shadow\nColor',
                color: theme.shadowColor,
                textColor: _onColor(theme.shadowColor, background),
              ),
              ColorCard(
                label: 'Hint\nColor',
                color: theme.hintColor,
                textColor: _onColor(theme.hintColor, background),
              ),
              ColorCard(
                label: 'Selected\nRow',
                color: theme.selectedRowColor,
                textColor: _onColor(theme.selectedRowColor, background),
              ),
              ColorCard(
                label: 'Unselected\nWidget',
                color: theme.unselectedWidgetColor,
                textColor: _onColor(theme.unselectedWidgetColor, background),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// A [SizedBox] with a [Card] and string text in it. Used in this demo to
/// display theme color boxes.
///
/// Can specify label text color and background color.
class ColorCard extends StatelessWidget {
  const ColorCard({
    super.key,
    required this.label,
    required this.color,
    required this.textColor,
    this.size,
  });

  final String label;
  final Color color;
  final Color textColor;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final bool isPhone = media.size.width < phoneWidthBreakpoint ||
        media.size.height < phoneHeightBreakpoint;
    final double fontSize = isPhone ? 10 : 11;
    final Size effectiveSize =
        size ?? (isPhone ? const Size(74, 54) : const Size(86, 58));

    return SizedBox(
      width: effectiveSize.width,
      height: effectiveSize.height,
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        color: color,
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: textColor, fontSize: fontSize),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
