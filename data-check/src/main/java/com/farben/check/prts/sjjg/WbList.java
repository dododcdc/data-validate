package com.farben.check.prts.sjjg;


public class WbList {
    Node head;
    int length;

    /**
     * 获取链表长度
     * @return
     */
    public int size() {
        return this.length + 1 ;
    }

    /**
     * 添加一个元素
     * @param node
     */
    public void add(Node node) {

        if (this.head == null) {
            this.head = node;
        }else {

            Node temp = this.head;

            while (temp.hasNext()) {
                temp = temp.next;
            }
            Node newNode = node;
            temp.next = newNode;

        }

        this.length ++;
    }

    public static void main(String[] args) {

        WbList wbList = new WbList();
        wbList.head = new Node("aa",null);

        wbList.add(new Node("bb",null));
        wbList.add(new Node("cc",null));

        System.out.println(wbList.size());


    }


}
