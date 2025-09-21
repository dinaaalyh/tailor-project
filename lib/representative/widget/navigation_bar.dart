import 'package:flutter/material.dart';

class TailorNavigationDestination {
  final Widget icon;
  final Widget? selectedIcon;
  final String label;
  final Color? labelColor;
  final Color? selectedLabelColor;

  const TailorNavigationDestination({
    required this.icon,
    this.selectedIcon,
    required this.label,
    this.labelColor,
    this.selectedLabelColor,
  });
}

class TailorNavigationBar extends StatelessWidget {
  final List<TailorNavigationDestination> destinations;
  final int selectedIndex;
  final Function(int) onDestinationSelected;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final ShapeBorder? indicatorShape;
  final double height;
  final EdgeInsets? labelPadding;
  final TextStyle? labelTextStyle;
  final TextStyle? selectedLabelTextStyle;

  const TailorNavigationBar({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    this.backgroundColor,
    this.indicatorColor,
    this.indicatorShape,
    this.height = 70,
    this.labelPadding,
    this.labelTextStyle,
    this.selectedLabelTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              destinations.length,
              (index) => _buildNavigationItem(context, index),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationItem(BuildContext context, int index) {
    final destination = destinations[index];
    final isSelected = selectedIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => onDestinationSelected(index),
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: isSelected
                      ? ShapeDecoration(
                          color: indicatorColor?.withOpacity(0.1) ?? Theme.of(context).primaryColor.withOpacity(0.1),
                          shape: indicatorShape ??
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                        )
                      : null,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: isSelected ? (destination.selectedIcon ?? destination.icon) : destination.icon,
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Flexible(
                child: Padding(
                  padding: labelPadding ?? EdgeInsets.zero,
                  child: Text(
                    destination.label,
                    style: isSelected
                        ? (selectedLabelTextStyle ??
                            TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: destination.selectedLabelColor ?? indicatorColor ?? Theme.of(context).primaryColor,
                            ))
                        : (labelTextStyle ??
                            TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: destination.labelColor ?? Colors.grey,
                            )),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TailorNavigationBarMaterial extends StatelessWidget {
  final List<TailorNavigationDestination> destinations;
  final int selectedIndex;
  final Function(int) onDestinationSelected;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final ShapeBorder? indicatorShape;

  const TailorNavigationBarMaterial({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    this.backgroundColor,
    this.indicatorColor,
    this.indicatorShape,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: backgroundColor,
      indicatorColor: indicatorColor,
      indicatorShape: indicatorShape,
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: destinations.map((destination) {
        return NavigationDestination(
          icon: destination.icon,
          selectedIcon: destination.selectedIcon,
          label: destination.label,
        );
      }).toList(),
    );
  }
}

class TailorAnimatedNavigationBar extends StatelessWidget {
  final List<TailorNavigationDestination> destinations;
  final int selectedIndex;
  final Function(int) onDestinationSelected;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final ShapeBorder? indicatorShape;
  final Duration animationDuration;
  final Curve animationCurve;

  const TailorAnimatedNavigationBar({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    this.backgroundColor,
    this.indicatorColor,
    this.indicatorShape,
    this.animationDuration = const Duration(milliseconds: 300),
    this.animationCurve = Curves.easeInOut,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: animationDuration,
              curve: animationCurve,
              left: (MediaQuery.of(context).size.width / destinations.length) * selectedIndex,
              child: Container(
                width: MediaQuery.of(context).size.width / destinations.length,
                height: 80,
                child: Center(
                  child: Container(
                    width: 60,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: indicatorColor?.withOpacity(0.1) ?? Theme.of(context).primaryColor.withOpacity(0.1),
                      shape: indicatorShape ??
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: List.generate(
                destinations.length,
                (index) => _buildAnimatedNavigationItem(context, index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedNavigationItem(BuildContext context, int index) {
    final destination = destinations[index];
    final isSelected = selectedIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => onDestinationSelected(index),
        behavior: HitTestBehavior.opaque,
        child: Container(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: animationDuration,
                curve: animationCurve,
                padding: EdgeInsets.all(isSelected ? 12 : 8),
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: animationDuration.inMilliseconds ~/ 2),
                  child: isSelected ? (destination.selectedIcon ?? destination.icon) : destination.icon,
                ),
              ),
              AnimatedDefaultTextStyle(
                duration: animationDuration,
                curve: animationCurve,
                style: TextStyle(
                  fontSize: isSelected ? 13 : 12,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  color: isSelected ? (destination.selectedLabelColor ?? indicatorColor ?? Theme.of(context).primaryColor) : (destination.labelColor ?? Colors.grey),
                ),
                child: Text(
                  destination.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
