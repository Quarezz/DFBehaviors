# DFBehaviors

[![Version](https://img.shields.io/cocoapods/v/DFBehaviors.svg?style=flat)](http://cocoadocs.org/docsets/DFBehaviors)
[![License](https://img.shields.io/cocoapods/l/DFBehaviors.svg?style=flat)](http://cocoadocs.org/docsets/DFBehaviors)
[![Platform](https://img.shields.io/cocoapods/p/DFBehaviors.svg?style=flat)](http://cocoadocs.org/docsets/DFBehaviors)

## About

DFBehaviors is a collection of usable Behaviors. Inspired by my friend Krzysztof Zabłocki. His article about Behaviors can be found here: http://www.objc.io/issue-13/behaviors.html

## How does it works?

You simply drop NSObject to XIB, change its class to some of Behavior, and connect all needed IBOutlets and/or change settings in interface builder with IBInspectable properties. All behaviors inhertis from UIControl, so you can also observe value change notifications. Both solutions are shown in examples.

## DFContactPickerBehavior

With this behavior you can easily get all available info from phone contact, without messing with `ABPeoplePicker`. Drag and drop `DFContactPickerBehavior` to XIB, connect value changed handler, and get all needed information. This behavior is shown in example.

## DFCollectionViewDataSourceDelegateBehavior

When you need to use collection view, view controller can easily by clustered with logic from data source and delegate. Proper architecture separate this logic with use of composition or inheritance. You can set this behavior as data source and/or delegate and properly feed collection view from it. This behavior is show in example.

## DFImagePickerBehavior   

When you need to load photo from user photo library or camera, you need to ask user for permission, display proper alerts, show photo album etc. With this behavior you simply shows which button launch operation, and which UIImageView should load taken photo. Thats it. Alternatively you can load image to UIButton, or get UIImage itself by observing ValueDidChange. Everything is shown in the example.

## DFSoundPlayerBehavior

Another fast way to play a short sound. All you need is to type in existing sound file path and file type in inspector.

## DFTableViewDataSourceDelegateBehavior

Similiar to `DFTableViewDataSourceDelegateBehavior`, you can use this behavior as composition to pass table view data source and delegate.

## Incoming behaviors

What can be usefull? Let me know.

## Installation

DFBehaviors is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "DFBehaviors"

## Your feedback

I love to get feedback from you, fell free to post here or let me know through my email.

## Author

Cezary Bielecki, bieleckicezary@gmail.com

## License

DFBehaviors is available under the MIT license. See the LICENSE file for more info. Also it is always nice if you let me know that you are using my pod in commercial project :-)

