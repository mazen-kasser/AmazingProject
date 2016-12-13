# AmazingProject
This is a sample project to convert the Stringly typed to Strongly typed in Swift.

`UIView+Extension.swift`: Extending the UIView, writing a helper to extract a UIView from a Nib file.

`UIViewController+Exntension.swift`: Instantiate a view controller from within a storyboard where the nib name is the same as the custom view controller class name.

`UIStoryboard+Extension.swift`: Instantiate a storyboard from enum case.

## Stringly typed
```
let view = Bundle.main.loadNibNamed("AmazingView", owner: nil, options: nil)!.first as! AmazingView
let storyboard = UIStoryboard(name: "AmazingStoryboard", bundle: nil)
let viewController = storyboard.instantiateViewController(withIdentifier: "AmazingViewController") as! AmazingViewController
```
## Strongly typed
```
let view = AmazingView.instantiateFromNib()
let storyboard = UIStoryboard(name: .amazingStoryboard)
let viewController = AmazingViewController.instantiate(from: storyboard)
```
