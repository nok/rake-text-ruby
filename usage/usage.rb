require 'rake_text'


text = "Compatibility of systems of linear constraints over the set of natural numbers. Criteria of compatibility of a system of linear Diophantine equations, strict inequations, and nonstrict inequations are considered. Upper bounds for components of a minimal set of solutions and algorithms of construction of minimal generating sets of solutions for all types of systems are given. These criteria and the corresponding algorithms for constructing a minimal supporting set of solutions can be used in solving all the considered types of systems and systems of mixed types."


rake = RakeText.new


# USE SMART STOPLIST
rake.analyse text, RakeText.SMART
# → {"compatibility"=>1.0, "systems"=>1.0, "linear constraints"=>4.5, "set"=>2.0, "natural numbers"=>4.0, "criteria"=>1.0, "system"=>1.0, "linear diophantine equations"=>8.5, "strict inequations"=>4.0, "nonstrict inequations"=>4.0, "considered"=>1.5, "upper bounds"=>4.0, "components"=>1.0, "minimal set"=>4.666666666666666, "solutions"=>1.0, "algorithms"=>1.0, "construction"=>1.0, "minimal generating sets"=>8.666666666666666, "types"=>1.6666666666666667, "constructing"=>1.0, "minimal supporting set"=>7.666666666666666, "solving"=>1.0, "considered types"=>3.166666666666667, "mixed types"=>3.666666666666667}

# USE FOX STOPLIST
rake.analyse text, RakeText.FOX
# → {"compatibility"=>1.0, "systems"=>1.0, "linear constraints"=>4.5, "set"=>2.0, "natural"=>1.0, "criteria"=>1.0, "system"=>1.0, "linear diophantine equations"=>8.5, "strict inequations"=>4.0, "nonstrict inequations"=>4.0, "considered"=>1.5, "upper bounds"=>4.0, "components"=>1.0, "minimal set"=>4.666666666666666, "solutions"=>1.0, "algorithms"=>1.5, "construction"=>1.0, "minimal generating sets"=>8.666666666666666, "types"=>1.6666666666666667, "corresponding algorithms"=>3.5, "constructing"=>1.0, "minimal supporting set"=>7.666666666666666, "solving"=>1.0, "considered types"=>3.166666666666667, "mixed types"=>3.666666666666667}

# ACTIVATE VERBOSE
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

# USE CUSTOM STOPLIST
rake.analyse text, ["custom","stopword","list"]