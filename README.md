# ERProgressHud
*Made with love and passion*

## Introduction
* A simple Progresshud written in Swift, compitable with Swift 5.0
* Five different kinds of ProgressHud is implemented to use.
* Easy to customize.
* ProgressHud With various options.
* Easy to add title.
* Blur Background View.
* Dark Background View.

## Demo
![Demo Video](/../master/demo.gif?raw=true)
## Requirements 
* Xcode 11.X +
* Swift 5.0

## Installation
1. Download the least source files.
2. Drag ERPogressHud folder to Xcode project. Make sure to select Copy items if needed.

## How To Use

// Show Simple ProgressHud without Title<br />
    ```
        ERProgressHud.sharedInstance.show()
    ```

// Show Blur Background View ProgressHud without Title<br />
        ```
        ERProgressHud.sharedInstance.showWithBlurView()
    ```

// Show Transparent Background View ProgressHud with Title<br />
        ```
        ERProgressHud.sharedInstance.show(withTitle: "Loading...")
    ```

// Show Blur Background View ProgressHud with Title<br />
        ```
        ERProgressHud.sharedInstance.showBlurView(withTitle: "Loading...")
    ```
    
// Show Dark Background View ProgressHud with Title<br />
        ```
        ERProgressHud.sharedInstance.showDarkBackgroundView(withTitle: "Loading...")
    ```
    
// Dismiss ProgressHud<br />
        ```
            ERProgressHud.sharedInstance.hide()
    ```
    
// Update current progress title in runtime<br />
        ```
        ERProgressHud.sharedInstance.updateProgressTitle("Show your progress here");
    ```
    
## License
ERProgressHud is released under the MIT license. See LICENSE for details.


