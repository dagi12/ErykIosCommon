# ErykIosCommon

## Description

Common stuff shared across iOS projects in Swift.

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
