# RAKE

Implementation of the Rapid Automatic Keyword Extraction (RAKE) algorithm in Ruby, a multi-word keywords extraction.

> Rose, S., Engel, D., Cramer, N., & Cowley, W. (2010). Automatic Keyword Extraction from Individual Documents. In M. W. Berry & J. Kogan (Eds.), [Text Mining: Theory and Applications: John Wiley & Sons](http://books.google.de/books?id=u-SrKyUrafsC&lpg=PP1&hl=de&pg=PA1#v=onepage&q&f=false). 



## Installation

Install [RAKE](https://rubygems.org/gems/rake_text) via RubyGem:

```
gem install rake_text
```


## Usage

Import the library and create an instance:

```
require 'rake_text'
rake = RakeText.new
```

Use the Smart Stoplist:

```
rake.analyse text, RakeText.SMART
# → {"compatibility"=>1.0, "systems"=>1.0, "linear constraints"=>4.5, "set"=>2.0, "natural numbers"=>4.0, "criteria"=>1.0, "system"=>1.0, "linear diophantine equations"=>8.5, "strict inequations"=>4.0, "nonstrict inequations"=>4.0, "considered"=>1.5, "upper bounds"=>4.0, "components"=>1.0, "minimal set"=>4.666666666666666, "solutions"=>1.0, "algorithms"=>1.0, "construction"=>1.0, "minimal generating sets"=>8.666666666666666, "types"=>1.6666666666666667, "constructing"=>1.0, "minimal supporting set"=>7.666666666666666, "solving"=>1.0, "considered types"=>3.166666666666667, "mixed types"=>3.666666666666667}
```

Use the Fox Stoplist:

```
rake.analyse text, RakeText.FOX
# → {"compatibility"=>1.0, "systems"=>1.0, "linear constraints"=>4.5, "set"=>2.0, "natural"=>1.0, "criteria"=>1.0, "system"=>1.0, "linear diophantine equations"=>8.5, "strict inequations"=>4.0, "nonstrict inequations"=>4.0, "considered"=>1.5, "upper bounds"=>4.0, "components"=>1.0, "minimal set"=>4.666666666666666, "solutions"=>1.0, "algorithms"=>1.5, "construction"=>1.0, "minimal generating sets"=>8.666666666666666, "types"=>1.6666666666666667, "corresponding algorithms"=>3.5, "constructing"=>1.0, "minimal supporting set"=>7.666666666666666, "solving"=>1.0, "considered types"=>3.166666666666667, "mixed types"=>3.666666666666667}
```

Use a custom stopword list:

```
rake.analyse text, ["custom","stopword","list"]
```

Show sorted results:

```
rake.analyse text, RakeText.SMART, true
# 8.67 - minimal generating sets
# 8.50 - linear diophantine equations
# 7.67 - minimal supporting set
# 4.67 - minimal set
# 4.50 - linear constraints
# 4.00 - upper bounds
# 4.00 - strict inequations
# [...]
# → {"compatibility"=>1.0, "systems"=>1.0, "linear constraints"=>4.5, "set"=>2.0, "natural numbers"=>4.0, "criteria"=>1.0, "system"=>1.0, "linear diophantine equations"=>8.5, "strict inequations"=>4.0, "nonstrict inequations"=>4.0, "considered"=>1.5, "upper bounds"=>4.0, "components"=>1.0, "minimal set"=>4.666666666666666, "solutions"=>1.0, "algorithms"=>1.0, "construction"=>1.0, "minimal generating sets"=>8.666666666666666, "types"=>1.6666666666666667, "constructing"=>1.0, "minimal supporting set"=>7.666666666666666, "solving"=>1.0, "considered types"=>3.166666666666667, "mixed types"=>3.666666666666667}
```


## License

The package is Open Source Software released under the [License](https://raw.github.com/voidplus/rake-text-ruby/master/LICENSE.txt).