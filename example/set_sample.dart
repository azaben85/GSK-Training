void main() {
  Set<String> namesSet = {'Ahmad', 'Ahmad', 'Omar'};
  namesSet.add('ahmad');

  print(namesSet);

  Set<int> ageSet = {33, 44, 55, 55};
  namesSet.add('ahmad');

  print(ageSet);
}

String camelCase(String input) {
  return input.substring(0, 1).toUpperCase() + input.substring(1);
}
