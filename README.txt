=== TITLE ===

NSCollectionView wrongly allows multiple selection

=== Explanation ===

NSCollectionView allows multiple selection when an item is already selected and a user holds down the shift key and presses an arrow key.

Doesn't happen when using the mouse to click on collection view items.


=== REPRO ===

Create an NSCollectionView. 
collectionView.selectable = true
collectionView.allowsEmptySelection = true
collectionView.allowsMultipleSelection = false

Click to select a cell.
Select any item by clicking on it.
Hold down shift and press the right arrow key.
Multiple items are selected


=== Expected Behavior ===

Previously selected item is deselected and new item is selected
Only one item is selected

=== Observed Behavior ===

Previously selected item is still selected and a new item is also selected
Multiple items are selected


=== Environment ===

Xcode 7.2.1 (7C1002)
OS X 10.11.3 (15D21)
