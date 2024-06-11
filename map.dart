/// Map, Hash or Dictionary is a key-value pair of unordered collection
/// it can grow or shrink at runtime

Map countries = Map();
void main(List<String> args) {
  countries["India"] = "Asia";
  countries['France'] = "Europe";

  print(countries);

  Map<String, String> myMap =
      Map.from({'1': 'Mercury', '2': 'Venus', '3': 'Earth', '4': 'Mars'});
  print(myMap);

  // method 1
  for (var key in myMap.keys) {
    print(key);
  }
  for (var value in myMap.values) {
    print(value);
  }

  // method 2
  myMap.forEach((key, value) {
    print("key is $key and value is $value");
  });

  print(myMap.remove('3'));
  print(myMap);
}
