'use strict';

class LinkedListNode
{
  constructor(data){
    this.data = data;
  }

  getData(){
    return this.data;
  }

  setData(val){
    this.data = val;
  }

  getNext(){
    return this.next;
  }

  setNext(addr){
    this.next = addr;
  }
}

class LinkedList
{
  constructor(){
    this.sentinel = new LinkedListNode(null);
  }

  getHead(){
    return this.sentinel.next;
  }

  insert(val){
    var node = new LinkedListNode(val);
    node.setNext(this.sentinel.next);
    this.sentinel.setNext(node);
  }

  delete(){
    if(this.sentinel.next != null){
      this.sentinel.next = this.sentinel.next.next;
    }
  }
}


module.exports.LinkedList = LinkedList;

// var cur_node = ll.getHead();
// for(var i = 1 ; i <= 10; i++){
//   console.log(cur_node.getData());
//   cur_node = cur_node.getNext();
// }
