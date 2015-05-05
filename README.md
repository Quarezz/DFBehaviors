# DFBehaviors

[![Version](https://img.shields.io/cocoapods/v/DFBehaviors.svg?style=flat)](http://cocoadocs.org/docsets/DFBehaviors)
[![License](https://img.shields.io/cocoapods/l/DFBehaviors.svg?style=flat)](http://cocoadocs.org/docsets/DFBehaviors)
[![Platform](https://img.shields.io/cocoapods/p/DFBehaviors.svg?style=flat)](http://cocoadocs.org/docsets/DFBehaviors)

## About

DFBehaviors is a collection of usable Behaviors. Inspiried by my friend Krzysztof Zabłocki. His article about Behaviors can be found here: http://www.objc.io/issue-13/behaviors.html

## How this works?

You simply drop NSObject to XIB, change its class to some of Behavior, and connect all needed IBOutlets and/or change settings in interface builder with IBInspectable properties. All behaviors inhertis from UIControl, so you can also observe value change notifications. Both solutions are shown in examples.

## Will be implemented soon

DFTableViewDataSourceBehavior
DFCollectionViewDataSourceBehavior
DFSoundPlayerBehavior

## Installation

DFBehaviors is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "DFBehaviors"

## Author

Cezary Bielecki, bieleckicezary@gmail.com

## License

DFBehaviors is available under the MIT license. See the LICENSE file for more info. Also it is always nice if you let me know that you are using my pod in commercial project :-)

