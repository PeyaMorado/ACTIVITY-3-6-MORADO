class Stack {
  List<int> _stack = [];

  void push(int element) {
    _stack.add(element);
    print('$element pushed to the stack');
  }

  int? pop() {
    if (isEmpty()) {
      print('Stack is empty');
      return null;
    }
    int poppedElement = _stack.removeLast();
    print('$poppedElement popped from the stack');
    return poppedElement;
  }

  int? peek() {
    if (isEmpty()) {
      print('Stack is empty');
      return null;
    }
    return _stack.last;
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }
}

void main() {
  Stack stack = Stack();

  
  stack.push(5);
  stack.push(10);
  stack.push(15);

  print('Top element: ${stack.peek()}');

  
  stack.pop();
  stack.pop();
  stack.pop();
  stack.pop(); 
}