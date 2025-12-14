/**
 * Definition for a binary tree node.
 */
 public class TreeNode {
      public int val;
      public TreeNode left;
      public TreeNode right;
      public TreeNode(int val=0, TreeNode left=null, TreeNode right=null) {
          this.val = val;
          this.left = left;
          this.right = right;
      }
  }
 
public class Solution {
    public TreeNode InvertTree(TreeNode root) {

        if(root == null)
        return root;
        
        TreeNode temp = root.left; 
        root.left = root.right;
        root.right = temp;
        
        InvertTree(root.left);
        InvertTree(root.right);
        return root;
        
    }
}


class Program {
static void Main(string[] args) {
            Solution sol = new Solution();
            //root plus its children
            var root = new TreeNode(4);
            root.left = new TreeNode(2);
            root.right = new TreeNode(7);
            //left subtree
            root.left.left = new TreeNode(8);
            root.left.right = new TreeNode(10);
            //right subtree          
            root.right.left = new TreeNode(6);
            root.right.right = new TreeNode(9);
            /*
                    4
                   / \
                  2   7
                 / \ / \
                8 10 6  9
            */
            var invertedTree = sol.InvertTree(root);
            Console.WriteLine("Inverted Tree Root Value is " + invertedTree.val);
            //after inversion the tree should look like this:
            /*
                    4
                   / \
                  7   2
                 / \ / \
                9 6 10 8
            */  
    }

} 