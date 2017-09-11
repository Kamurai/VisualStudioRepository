using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TreeParentNodeFinder1
{
    class Program
    {
        static void Main(string[] args)
        {
            Btree Alpha = new Btree(new Node("head"));

            Alpha.Add(Alpha.head,new Node("leaf4"), false);
            Alpha.Add(Alpha.head,new Node("node1"), true);
            
            Alpha.Add(Alpha.head.getRight(),new Node("leaf3"), false);
            Alpha.Add(Alpha.head.getRight(),new Node("node2"), true);
            
            Alpha.Add(Alpha.head.getRight().getRight(),new Node("leaf2"), false);
            Alpha.Add(Alpha.head.getRight().getRight(),new Node("leaf1"), true);

            Node output = ParentFinder(Alpha, Alpha.head.getRight().getRight().getRight(), Alpha.head.getRight().getLeft());

            Console.WriteLine("The common parent is " + output.getName() + "!");

            printBTree(Alpha, output);

            Console.WriteLine("Please press enter to end:");
            Console.ReadLine();

        }

        public static void printBTree(Btree B, Node n1)
        {

            int tick = 1;
            int count = 0;
            int depth = 0;
            int limit = 0;
            string spacer = "";

            Queue<Node> q = new Queue<Node>();
            q.Enqueue(B.head);
            while (depth <= B.depth)
            {
                if (count == 0)
                {
                    limit = (B.depth - depth) * 12;
                    for (int x = 0; x < limit; x++)
                    {
                        Console.Write(" ");
                    }

                    spacer = "";
                    limit = (B.depth - depth) * 3 + 5;
                    for (int x = 0; x < limit; x++)
                    {
                        spacer += " ";
                    }
                }
                Node n = q.Dequeue();
                count++;

                if( n.getName() != "blank" )
                {
                    if (n == n1)
                    {
                        Console.Write("*" + n.getName() + "*" + spacer); 
                    }
                    else
                    {
                        Console.Write(n.getName() + spacer);
                    }
                
                }
                else
                {
                    Console.Write("     " + spacer);
                }

                if(count == tick)
                {
                    tick *= 2;
                    count = 0;
                    depth++;
                    Console.WriteLine("");
                }
                
                if (n.getLeft() != null)
                {
                    q.Enqueue(n.getLeft());
                }
                if (n.getRight() != null)
                {
                    q.Enqueue(n.getRight());
                }

                if(n.getName() == "blank")
                {
                    q.Enqueue(new Node("blank"));
                    q.Enqueue(new Node("blank"));
                }
            }
        }

        public static Node ParentFinder(Btree B, Node n1, Node n2)
        {
            Node result = B.head;
            Node current = n1;
            Node moving = n2;

            if (n1 == B.head || n2 == B.head)
            {
                return result;
            }

            while (current != moving)
            {
                if (B.head == moving)
                {
                    current = current.getParent();
                    moving = n2;
                }
                else
                {
                    moving = moving.getParent();
                }

                if (current == moving)
                {
                    result = moving;
                }
            }
            return result;
        }

        public class Btree
        {
            public Node head;
            public int depth = 0;
            int currentDepth = 0;

            

            public Btree(Node anode)
            {
                head = anode;
                depth = 0;
            }

            public void Add(Node nTarget, Node nAdd, bool direction)
            {
                if(!direction)
                {
                    nTarget.assignLeft(nAdd);
                }
                else
                {
                    nTarget.assignRight(nAdd);
                }

                Node current = nAdd;
                currentDepth = 0;

                while( current != head)
                {
                    currentDepth++;
                    if(current.getParent() != head)
                    {
                        current = current.getParent();
                    }
                    else
                    {
                        break;
                    }
                }

                if (currentDepth > depth)
                {
                    depth = currentDepth;
                }

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
                if (name != "blank")
                {
                    this.left = new Node("blank");
                    this.right = new Node("blank");
                }
            }

            public Node(string name, Node left)
            {
                this.name = name;
                this.left = left;
                this.right = new Node("blank");
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
                this.left.parent = this;
            }

            public void assignRight(Node anode)
            {
                this.right = anode;
                this.right.parent = this;
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

            public string getName()
            {
                return name;
            }
        }
    }
}