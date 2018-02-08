# ErykIosCommon

[![CI Status](http://img.shields.io/travis/dagi12@o2.pl/ErykIosCommon.svg?style=flat)](https://travis-ci.org/dagi12@o2.pl/ErykIosCommon)
[![Version](https://img.shields.io/cocoapods/v/ErykIosCommon.svg?style=flat)](http://cocoapods.org/pods/ErykIosCommon)
[![License](https://img.shields.io/cocoapods/l/ErykIosCommon.svg?style=flat)](http://cocoapods.org/pods/ErykIosCommon)
[![Platform](https://img.shields.io/cocoapods/p/ErykIosCommon.svg?style=flat)](http://cocoapods.org/pods/ErykIosCommon)

## Example

Common stuff shared across iOS projects in Swift.


```

## Author

dagi12@o2.pl

## License

ErykIosCommon is available under the MIT license. See the LICENSE file for more info.

## Handful scripts

```bash
find . -mindepth 1 -name '.kt' -printf '%h %f\n' | sort -t ' ' -k 2,2 | uniq -f 1 --all-repeated=separate | tr ' ' '/'
```

### Find file deleted in git
```bash
git log --all --full-history -- */xxxx.java
```
### Strip comments
```bash
awk '!/^ *#/ && NF' file
```
### Restart xCode
```bash
kill $(ps aux | grep 'Xcode' | awk '{print $2}')
open -a Xcode *.xcworkspace
```
### Autocorrect
```bash
cd ../erent-ceo-ios && ../Pods/SwiftLint/swiftlint autocorrect
```
