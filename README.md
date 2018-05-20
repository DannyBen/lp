Lovely Print
==================================================

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

