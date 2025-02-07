class EmpAssets {
  static const plusIcon = 'assets/icons/plus.svg';
  static const placeholderImage = 'assets/icons/placeholder.png';
  static const arrowDropdown = 'assets/icons/arrow_dropdown.svg';
  static const arrowRight = 'assets/icons/arrow_right.svg';
  static const deleteIcon = 'assets/icons/delete.svg';
  static const eventIcon = 'assets/icons/event.svg';
  static const personIcon = 'assets/icons/person.svg';
  static const workIcon = 'assets/icons/work.svg';
}

enum EmployeeRoles {
  prouctDesigner,
  flutterDeveloper,
  qaTester,
  productOwner,
  fullStackDeveloper
}

class EmployeeRolesHelper {
  static EmployeeRoles? roleValueOf(String role) {
    switch (role) {
      case 'Product Designer':
        return EmployeeRoles.prouctDesigner;
      case 'Flutter Developer':
        return EmployeeRoles.flutterDeveloper;
      case 'QA Tester':
        return EmployeeRoles.qaTester;
      case 'Product Owner':
        return EmployeeRoles.productOwner;
      case 'Full-Stack Developer':
        return EmployeeRoles.fullStackDeveloper;
    }
    return null;
  }

  static String? stringValueOf(EmployeeRoles role) {
    switch (role) {
      case EmployeeRoles.prouctDesigner:
        return 'Product Designer';
      case EmployeeRoles.flutterDeveloper:
        return 'Flutter Developer';
      case EmployeeRoles.qaTester:
        return 'QA Tester';
      case EmployeeRoles.productOwner:
        return 'Product Owner';
      case EmployeeRoles.fullStackDeveloper:
        return 'Full-Stack Developer';
    }
  }
}
