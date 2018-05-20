Lovely Print
==================================================

[![Gem Version](https://badge.fury.io/rb/lp.svg)](https://badge.fury.io/rb/lp)
[![Build Status](https://travis-ci.com/DannyBen/lp.svg?branch=master)](https://travis-ci.com/DannyBen/lp)


---

Because Awesome is Annoying, and Pretty is Not.

This is the tinyest gem possible. It lets you print anything as YAML with:

```ruby
lp your_object
```

---

Installation
--------------------------------------------------

    $ gem install lp



Usage
--------------------------------------------------

```ruby
require 'lp'

anything = { ace: 'ventura', like: ['a', 'glove'] }
lp anything
# => 
# ---
# :ace: ventura
# :like:
# - a
# - glove
```


Why?...
--------------------------------------------------

- `p` is messy
- `pp` is messy
- `ap` is colorful and messy
- why not

