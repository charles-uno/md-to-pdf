---
title: Example Document
author: Charles Fyfe
geometry: margin=1in
---

Lorem ipsum[^1] dolor sit amet, consectetur adipiscing elit. In sit amet mi nec eros rutrum aliquam id et tortor. Quisque aliquam orci a leo euismod, quis egestas dolor imperdiet. Quisque laoreet sagittis sollicitudin. Sed sit amet odio maximus, ornare odio vel, laoreet odio. Duis tristique lobortis laoreet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur fermentum sem nec facilisis tempor. Nam luctus rhoncus molestie.

[^1]: Filler text courtesy of [lipsum.com](https://www.lipsum.com/feed/html)

- Foo
- Bar
- Baz

Etiam euismod porttitor nibh vel commodo. Donec ornare bibendum tincidunt. In malesuada porttitor quam, imperdiet egestas dui gravida et. Fusce tincidunt quam ut consectetur semper. Nullam tristique sed ex nec finibus. Etiam commodo, eros vel interdum feugiat, risus mi lacinia enim, vitae consectetur ligula lectus sed tellus. Aliquam a tortor vestibulum dui aliquet dignissim. Cras vel condimentum nunc, vel bibendum purus. Proin vitae metus pharetra justo dictum blandit et nec leo.

![example figure](incl/fig.jpg)

Praesent cursus purus ex, sed gravida nisi luctus eget. Suspendisse laoreet lacus sit amet felis commodo, rutrum lobortis dui congue. Donec non nunc non tortor luctus rutrum. Maecenas ac odio velit. Cras ut ultricies lacus. Duis rutrum at orci ut laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam elit neque, suscipit eu mauris semper, bibendum fermentum massa. Integer metus diam, fringilla ut auctor lobortis, imperdiet ac nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt laoreet orci, non commodo nunc hendrerit in.

```python
def is_prime(n):
    if not isinstance(n, int) or n < 1:
        raise ValueError(repr(n) + " is not a positive integer")
    else:
        return n > 1 and all( n % i for i in range(2, n) )
```

Etiam eget viverra diam, at sodales nibh. Quisque et pharetra ligula, ac malesuada elit. Donec nec nisl quis risus vehicula dapibus non sit amet nibh. Donec est nisl, iaculis in blandit quis, interdum tincidunt tellus. Duis id urna nulla. Sed convallis faucibus mauris, eu sollicitudin purus dapibus ac. Ut ultricies, augue vel pretium eleifend, dui diam vehicula elit, quis tristique sapien eros in enim. In et ipsum vitae nisi porta tincidunt at nec ante.

$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

Aliquam non justo nec massa accumsan dignissim. Nunc suscipit ex in metus sagittis consectetur. Maecenas a arcu vitae justo tempus aliquet. Cras aliquam ex varius diam suscipit, eu consequat nibh sollicitudin. Fusce sollicitudin rhoncus purus, nec pulvinar purus porta at. Ut ultricies odio dignissim turpis posuere mollis. Phasellus pretium tortor vel tristique tincidunt. Pellentesque ornare risus non mi mattis, ac vulputate ante pellentesque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum dui arcu, varius lacinia erat nec, tristique finibus orci.
