part of '../chart_grid_layer.dart';

/// Provises data of grid.
class ChartGridData {
  /// The items data of grid.
  final List<ChartGridDataItem> items;

  /// The max value in data.
  final double max;

  /// The min value in data.
  final double min;

  ChartGridData({
    required this.items,
  })  : min = items.isNotEmpty
            ? ([...items]..sort((a, b) => a.value.compareTo(b.value)))
                .first
                .value
            : 0.0,
        max = items.isNotEmpty
            ? ([...items]..sort((a, b) => a.value.compareTo(b.value)))
                .last
                .value
            : 0.0;

  /// Dispose all animations.
  void dispose() {
    for (final ChartGridDataItem item in items) {
      item.dispose();
    }
  }
}
