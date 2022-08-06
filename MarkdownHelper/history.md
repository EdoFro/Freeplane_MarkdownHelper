# History

## v0.1.3

* Selecting contiguos nodes inserts MDNode as parent
* **MDH task list**: if task node has progress then it adds "(working on it)" and its progress
* **MDH List**: now it understands the use of leaf, ignoreContent and ignoreNode icons
* **MDH List and tasks lists new logic**: if node has a note it takes that string as list item. If not, it takes the node's text followed by its detail (in a new line). But only if MD parameter "ignoreLeafDetails" is set to false

## v0.1.2

* add / remove icons
* added import MDH Styles
* "save note to file" shows allways the filechooser dialog, so the user can change the target file if she/he wants to.
* Added "Save as MDH_clean mindmap" command
* MDH List node modified to accept also task items

## v0.1.1

* - Preview Panel format now is taken from the MarkdownHelperPreview Style node
* using devtools v0.9.31

## v0.1.0-alpha-07

* - added MDH preview panel

## v0.1.0-alpha-06

* added library WSE_redux
* added error message when a scripts needs a baseFolder node and it can't be found

## v0.1.0-alpha-05

* Optimized SVG icons
* corrected bug in button "path to MD root folder"
* don't show formulas content in nodes when building tables

## v0.1.0-alpha-04

* Added button to extract selected text in notepanel as a parmeter to be used with the textBlock node
* Improved 'to be linked' node and  linkToFile nodes to follow a chain of links to get to the actual link to a file
* When inserting a new 'to be linked' node, if the selected node has a link, then the new node gets automatically linked to that node
* Added new MDH nodes to be used when building a wiki (in github)
* Added a button to show/hide the panel with this new wiki buttons
* internal: changed the code for getting the buttons of the dialog when asigning the arrow moves, because it had conflicts with the scrollbars from scrollPanels
* Added externalObject images to "local file" nodes and "to be linked" nodes

## v0.1.0-alpha-03

* cleaning duplicated constants
* building iconActions from icons names
* Added special AddOns icons and a preference to activate them.
* Added defaults as preferences
* Added new parameters in MDH doc nodes and preferences
* Added dialog button that adds missing Attributes to MDH nodes (to easy update mindmaps created with previous AddOn versions)
The button is only visible when using command "rebuild Dialog"

## v0.1.0-alpha-02

* Adding icons

## v0.1.0-alpha

* alpha release
