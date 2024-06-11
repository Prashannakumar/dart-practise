///An Unordered Collections of Unique Items

Set<int> mySet = Set.from([1, 2, 3]);
// mySet.add(5);
void main(){
  mySet.add(5);
  print(mySet);
  // mySet.add('4');
  Set<String> countries = Set();
  countries = Set.from({'US', 'UK'});
  print(countries);

  //method 1
  for (var element in countries) {
    print(element);
  }

  //method 2
  countries.forEach((v)=> print('${v} is a country'));

  for(String country in countries){
    if(countries.lookup(country) == 'US'){
      print('$country is a country');
      // break;
    }else{print('$country is not a country');};
  }
  print(countries.lookup('UK'));

  var newSet = Set.from([1, 2, 3, 'non-integer']);
  print(newSet.contains(4));
  print(newSet.length);
  print(newSet.isEmpty);
  newSet.remove(2);
  print(newSet);
}
