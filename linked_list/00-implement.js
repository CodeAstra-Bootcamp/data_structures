'use strict';

class LinkedListNode{
  constructor(val){
    this._value = val;
  }
  get value() {
    return this._value; 
  }
  set value(val) {
    this._value = val; 
  }
  get next(){
    return this._next;
  }
  set next(nxt){
    this._next = nxt;
  }
}

class LinkedList {
  constructor(){
    this.sentinel = new LinkedListNode(null);
  }
  get head(){
    return this.sentinel.next;
  }
  insert(val) {
    var node = new LinkedListNode(val);
    node.next = this.sentinel.next;
    this.sentinel.next = node;
  }
  delete(){
    if(this.sentinel.next){
      this.sentinel.next=this.sentinel.next.next;
    }
  }
}


// var ll = new LinkedList();
// ll.insert(1);
// console.log(ll);
// ll.insert(2);
// console.log(ll);
// ll.insert(2);


module.exports.LinkedList = LinkedList;