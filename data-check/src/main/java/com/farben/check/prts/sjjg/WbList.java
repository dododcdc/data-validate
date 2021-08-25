package com.farben.check.prts.sjjg;


public class WbList {
    Node head;
    int length;

    /**
     * 获取链表长度
     *
     * @return
     */
    public int size() {
        return this.length;
    }

    /**
     * 添加一个元素
     *
     * @param node
     */
    public void add(Node node) {

        if (this.head == null) {
            this.head = node;
        } else {

            Node temp = this.head;

            while (temp.hasNext()) {
                temp = temp.next;
            }
            Node newNode = node;
            temp.next = newNode;

        }

        ++this.length;
    }

    /**
     * 根据下标查询
     * @param index
     * @return
     */
    public Node get(int index) {
        if (index>length) return null;
        Node temp = head;
        for (int i = 0; i < index; i++) {
            temp = temp.next;
        }
        return  temp;
    }

    /**
     * 移除一个元素
     * @param node
     */
    public void remove(Node node) {
        // 谁的下一个是node
        Node pre = null;

        // node 的下一个是谁
        Node next = null;

        Node temp = this.head;
        for (int i = 0; i < this.length; i++) {

            if (temp.next == node) {
                pre = temp;
                temp = temp.next;
                continue;
            }
            if (node.next == temp) {
                next = temp;
                break;
            }
            temp = temp.next;
        }

        // 将node的上一个的next指向node的下一个
        pre.next = next;
        this.length--;


    }

    public static void main(String[] args) {

        WbList wbList = new WbList();
        Node cc = new Node("cc", null);
        wbList.add(new Node("bb", null));
        wbList.add(cc);
        wbList.add(new Node("dd", null));

        System.out.println(wbList.size());
        System.out.println(wbList.get(2).data);
        wbList.remove(cc);
        System.out.println("over");

    }


}
