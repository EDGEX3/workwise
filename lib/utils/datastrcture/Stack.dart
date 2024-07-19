class StackCollection<T> {
  List<T> _stack = [];
  StackCollection(List<T> Item) {
    _stack = Item;
  }
  void push(T element) {
    _stack.add(element);
  }

  T pop() {
    if (_stack.isEmpty) {
      throw StateError("Cannot pop from an empty stack");
    }
    return _stack.removeLast();
  }

  T peek() {
    if (_stack.isEmpty) {
      throw StateError("Cannot peek at an empty stack");
    }
    return _stack.last;
  }
}
