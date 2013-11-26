# pivotal-date.rb

Generate the list of stories of Pivotal Tracker on your terminal

##Usage

First, you must change a token on `pivotal-date.rb`.

```ruby
PivotalTracker::Client.token = 'Your pivotal tracker token here'
```

And just do below

```
$ ruby pivotal-date.rb -p [your project id]
```

```
$ pivotal-date keita% ruby pivotal-date.rb -h
Options:
  --project, -p <i>:   Project ID (default: 0)
      --tag, -t <s>:   Tag name
      --per, -e <i>:   Estimate per date (default: 3)
         --help, -h:   Show this message
```

##LICENSE

The MIT License

Copyright (c) 2013 Keita Mori

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.