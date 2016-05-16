// Write a function that takes 2 arguments; a linked list (ll) and on integer(n).
// The function should return the value of the nth node in the linked list.
// 
// Assume that the linked is in non-empty and is of length at least 'n'

var ll = require('../linked_list/00-implement');
var methods = require('../linked_list/01-find-nth-node-value')


var longLinkedList = new ll.LinkedList();
for (var i = 1;i <= 100 ; i++){
  longLinkedList.insert(i);
}


describe('Test for random normal cases',function(){
  it('Case of exact mid',function(){
    expect(methods.valueOfNthNode(longLinkedList,55)).toBe(46);
  });
  it('Case of 10',function(){
    expect(methods.valueOfNthNode(longLinkedList,10)).toBe(91);
  });
  it('Case of 90',function(){
    expect(methods.valueOfNthNode(longLinkedList,90)).toBe(11);
  });  
});


describe('Test for boundary cases',function(){
  it('Case of zero position',function(){
    expect(methods.valueOfNthNode(longLinkedList,1)).toBe(100);
  });
  it('Case of last element',function(){
    expect(methods.valueOfNthNode(longLinkedList,100)).toBe(1);
  });
});