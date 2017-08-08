README
======

Add Google Tag Manager to nesta pages

Installation
------------

To use this plugin just add it to your Nesta project's `Gemfile` and
then install it with Bundler:

```
    $ echo 'gem "nesta-plugin-gtm"' >> Gemfile
    $ bundle
    $ cp [nesta_path]/views ./
    $ cp [nesta-plugin-gtm_path]/views/*.* ./views/

```

insert partial code to ./views/layout.haml:

```
= haml :gtmheader, :layout => false
= haml :gtmbody, :layout => false
```
at proper lines like:

    = haml :analytics, :layout => false
    = haml :gtmheader, :layout => false
  %body
    = haml :gtmbody, :layout => false
    #container


    
