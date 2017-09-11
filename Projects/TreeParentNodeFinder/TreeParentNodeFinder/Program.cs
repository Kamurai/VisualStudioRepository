using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TreeParentNodeFinder
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());


            
            Btree Alpha = new Btree(new Node("head"));

            Alpha.head.assignLeft(new Node("leaf4"));
            Alpha.head.assignRight(new Node("node1"));

            Alpha.head.getRight().assignLeft(new Node("leaf3"));
            Alpha.head.getRight().assignRight(new Node("node2"));

            Alpha.head.getRight().getRight().assignLeft(new Node("leaf2"));
            Alpha.head.getRight().getRight().assignRight(new Node("leaf1"));

            Node output = ParentFinder(Alpha, Alpha.head.getRight().getRight(), Alpha.head.getRight().getLeft());

        }


        public static Node ParentFinder(Btree B, Node n1, Node n2)
        {
            Node result = B.head;
            Node current = n1;
            Node moving = n2; 
            
            if(n1 == B.head || n2 == B.head)
            {
               return result;
            }

            while(current != moving)
            {
                if(current == moving)
                {
                    result = moving;
                }
                else
                {
                    if(B.head == moving)
                    {
                        current = current.getParent();
                        moving = n2;
                    }
                    else
                    {
                        moving = moving.getParent();
                    }
                    
                }
            }




            return result;
        }

        public class Btree
        {
            public Node head;
            public Btree(Node anode)
            {
                head = anode;
            }
        }

        public class Node
        {
            string name = "";
            Node parent;
            Node left;
            Node right;

            public Node(string name)
            {
                this.name = name;
            }

            public Node(string name, Node left)
            {
                this.name = name;
                this.left = left;
            }

            public Node(string name, Node left, Node right)
            {
                this.name = name;
                this.left = left;
                this.right = right;
            }

            public void assignLeft(Node anode)
            {
                this.left = anode;
            }

            public void assignRight(Node anode)
            {
                this.right = anode;
            }

            public Node getLeft()
            {
                return left;
            }

            public Node getRight()
            {
                return right;
            }

            public Node getParent()
            {
                return parent;
            }
        }
    }
}
