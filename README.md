# Pre-work - Smart Tipper

**Smart Tipper** is a tip calculator application for iOS.

Submitted by: **Drew Beckmen**

Time spent: **4.5** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Dark Mode
- [x] Rounding Total to Nearest Dollar 

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<blockquote class="imgur-embed-pub" lang="en" data-id="a/EQH8whk"  ><a href="//imgur.com/a/EQH8whk">CodePath Demo</a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Although I have experience in developing web applications with JavaScript, this was my first attempt at creating an iOS app, and it felt quite foreign. At first I was very lost, but I slowly became more comfortable as I had more time to explore Xcode. Once I figured out Swift's was of handing events/changes, I felt more capable of implmenting features that I want to see. One feature I added in particular was the ability to increase the tip so that the total rounded up to the nearest dollar. As someone who likes to have  $_.00 at the end of every check, this feature felt relevant for me. It also allowed me to further explore control flow statements in Swift and the UserDefaults feature. 

I am also an avid user of dark mode on all my devices, so the dark mode feature was another priority. I enjoyed building the settings page as it gave me a better sense of how I could create a state for my application across views and controllers. 

I also had trouble remembering that each element like a label or segment controller is considered a separate view. In the web development I have learned, the views are entire HTML pages while controllers handle HTTP requests from the server. I had to shift my frame of mind when working with Swift to develop this iOS. 

## License

    Copyright [2020] [Drew Beckmen]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
