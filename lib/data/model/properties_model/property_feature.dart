class PropertyFeature {
  final String id;
  final String label;
  bool isSelected;
  PropertyFeature({
    required this.id,
    required this.label,
    this.isSelected = false,
  });
}
