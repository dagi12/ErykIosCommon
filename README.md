# ErykIosCommon

## Description

Common stuff shared across iOS projects in Swift.

## Author

dagi12@o2.pl

## License

ErykIosCommon is available under the MIT license. See the LICENSE file for more info.

## Common errors
- Object not mapped
    - (required initializer) required public init?(map: Map) {
    - (optional variable) var data: T?
    - (generic conforms to mappable) ApiResponse<T: Mappable>

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
cd ../softraiostemplate && ../Pods/SwiftLint/swiftlint autocorrect
```

### xCode version
```bash
/usr/bin/xcodebuild -version
```

### Find duplicates
```bash
fdupes -r esoftra ErykIosCommon/ErykIosCommon SoftraIosCommon/SoftraIosCommon
find ErykIosCommon/ErykIosCommon SoftraIosCommon/SoftraIosCommon -type f -exec basename {} \; | sort | uniq -d
```

## Handful urls
makeappicon.com/
objectivec2swift.com/#/converter/code/

## Handful snippets
#### Generic array static func
```swift
public static func getByType<T: Sequence, Element: AnyObject>(from arr: T, withType type: Element.Type) -> Element? where T.Element == Element {
    for elem in arr {
        if elem is Element {
            return elem
        }
    }
    return nil
}
```
#### Generic array extension
```swift
extension Sequence {
    func callAll<T>(t: T) where Element == Listener<T> {
        self.forEach { $0(t) }
    }
}
```
