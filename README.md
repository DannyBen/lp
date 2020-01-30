Lovely Print
==================================================

[![Gem Version](https://badge.fury.io/rb/lp.svg)](https://badge.fury.io/rb/lp)
[![Build Status](https://github.com/DannyBen/lp/workflows/Test/badge.svg)](https://github.com/DannyBen/lp/actions?query=workflow%3ATest)


---

Colorful YAML dump for debug purposes.

Print a colorful YAML output:

```ruby
lp your_object
```

Print a plain YAML output:

```ruby
lp! your_object
# same as: puts your_object.to_yaml
```

Show the object's methods and instance variables:

```ruby
lp? your_object
# similar to: puts (your_object.methods - Object.methods).to_yaml
```

---

Installation
--------------------------------------------------

    $ gem install lp

