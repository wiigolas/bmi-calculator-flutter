class Gender {
  String _selectedGender;
  final String male = 'male';
  final String female = 'female';

  getSelectedGender() => _selectedGender;

  setSelectedGender(String gender) => _selectedGender = gender;
}