String? validateNotEmpty(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'This field is required and cannot be empty.';
  }
  return null;
}
