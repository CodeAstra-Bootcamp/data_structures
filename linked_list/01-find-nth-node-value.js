// Write a function that takes 2 arguments; a linked list (ll) and on integer(n).
// The function should return the value of the nth node in the linked list.
// 
// Assume that the linked is in non-empty and is of length at least 'n'

var ll = require('./00-implement');

function valueOfNthNode(ll, n){
  var currentNode = ll.head;
  for(var i=0;i<n-1;i++){
    currentNode = currentNode.next
  }
  return currentNode.value
}

var longLinkedList = new ll.LinkedList();
for (var i = 1;i <= 100 ; i++){
  longLinkedList.insert(i);
}

console.log(valueOfNthNode(longLinkedList,46));
console.log(valueOfNthNode(longLinkedList,20));