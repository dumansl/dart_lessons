void main(List<String> args) {
  List<String> list = [];
  list.add("sule");
  list.add("seyda");

  printOut(list);

  // List<E> ==> Element
  // Map<K> ==>Key
  //Map<K,V> ==> Value
  //R ==> Methodların return tipleri için

  // Student<T extends Person>
}

printOut(List list) {
  print(list[1].length);
}
