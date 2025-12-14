class TreeNode {
    [int]$Value
    [TreeNode]$Left
    [TreeNode]$Right

    TreeNode([int]$value) {
        $this.Value = $value
        $this.Left = $null
        $this.Right = $null
    }

    [TreeNode] Clone() {
        $newNode = [TreeNode]::new($this.Value)
        if ($this.Left) { $newNode.Left = $this.Left.Clone() }
        if ($this.Right) { $newNode.Right = $this.Right.Clone() }
        return $newNode
    }
}

function InvertBinaryTree {
    [OutputType([TreeNode])]
    param (
        [TreeNode]$root
    )
    if ($null -eq $root) {
        return $null
    }
    $temp = $root.Left
    $root.Left = $root.Right
    $root.Right = $temp
    $null = InvertBinaryTree -root $root.Left
    $null = InvertBinaryTree -root $root.Right
    return [TreeNode]$root
}
#before inversion the tree is
#    4
#   / \
#  2   7
# / \ / \
#1 3 6 9

$root = [TreeNode]::new(4)
$root.Left = [TreeNode]::new(2)
$root.Right = [TreeNode]::new(7)

$root.Left.Left = [TreeNode]::new(1)
$root.Left.Right = [TreeNode]::new(3)
$root.Right.Left = [TreeNode]::new(6)
$root.Right.Right = [TreeNode]::new(9)
$invert =InvertBinaryTree -root $root

$invert

#after inversion the tree will be
#    4
#   / \
#  7   2
# / \ / \
#9  6 3   1
