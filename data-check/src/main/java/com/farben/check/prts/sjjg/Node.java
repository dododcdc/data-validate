package com.farben.check.prts.sjjg;

public class Node<T> {
    T data;
    Node next;

    Node(T data,Node next) {
        this.data  = data;
        this.next = next;
    }

    boolean hasNext() {

        if (this.next != null) {
            return true;
        } else {
            return false;
        }
    }
}
