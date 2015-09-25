Vago
====

Lazy loading files acording NameError exceptions. When a Constant isn't ready
Vago autoload your file automatically.

How to use
==========

```ruby
begin
  # app
rescue NameError => e
  Vago::NameError.send(:exception, e)
  retry
end
```
