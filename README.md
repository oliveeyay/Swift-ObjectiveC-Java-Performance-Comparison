Swift-ObjectiveC-Java-Performance-Comparison
======================

Sample android and iOS projects using Android Studio 0.8.0 and XCode 6 Beta 2

It is meant to compare performance on both platform, and comparing the performance between languages.

Tests realized on iPhone 4S (800Mhz) and Galaxy S2 (1.2Ghz), which are pretty much the same generation (trying to compare at similar generation).
* iOS:
 - Swift:
	_ Fibonacci (index 30): 1.50sec
	_ Bubble Sort (100 elements): can't show result, take too much time :(
 - Objective-C:
	_ Fibonacci (index 30): 0.15sec
	_ Bubble Sort (1000 elements): 1.40sec
* Android:
 - Fibonacci (index 30): 0.35sec
 - Bubble sort (1000 elements): 0.064sec
 
 Please note that these results are for Swift Beta 2, which is not a release yet, and may suffer from some bugs and problems. Moreover, for now, Apple presented Swift with games performance, and not related to algorithm and UI performance.
======================

Quality for Android
-------
You will find under the directory /config the base configuration to run quality test on the project.
The followings tools are used:
 - Checkstyle.
 - Findbugs.
 - PMD.
 - Lint.
By default, all the reports will be generated in the folder app/build/reports.

Testing for Android
-------
This project uses Robotium 5.0.1 to run instrumentation and unit testing.
It is only a sample, no real tests are done here. It is only configuration related, with gradle compilation and a Robotium target.
 
======================

License

    Copyright 2013 Olivier Goutay.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.