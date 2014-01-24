# Motion Giphy
> A wrapper around http://giphy.com

![](http://media1.giphy.com/media/r2BtghAUTmpP2/200.gif)

## Installation

Add this to your Gemfile:
```ruby
gem "motion-giphy"
```

Then execute:

```
$ bundle
```

MotionGiphy relies on [AFMotion](https://github.com/usepropeller/afmotion) to run so you'll need to install the neccessary pods.

```
# First get Cocoapods up and running.
$ pod setup

# Now install the needed pods.
$ rake pod:install
```

## Usage

First you'll need to set your API. You can do this in the `app_delegate.rb` file.

```ruby
MotionGiphy::Configuration.configure do |config|
  config.api_key = "API_KEY"
end
```

[Giphy](http://giphy.com/api) provide a development API key that you can use. If you're moving to production you'll need to contact them.

With the gem you can retrieve the Top 100 Gifs, search and get a specific Gif via it's ID.

```ruby
MotionGiphy::Client.trending do |response|
end
```

```ruby
MotionGiphy::Client.search("dancing") do |response|
end
```

```ruby
MotionGiphy::Client.gif(gif_id) do |response|
end
```

All three methods will return a `MotionGiphy::Response` object. From here you can determine the state of the request, pagination details and either an array of Gifs (`#search`, `#trending`) or a single Gif (`#id`).

```ruby
MotionGiphy::Client.search("dancing") do |response|
  if response.success?
    gif = response.data.first

    puts gif.id
    puts gif.giphy_url

    # Returns a MotionGiphy::Image
    puts gif.fixed_width.url
  else
    puts response.error.message
  end
end
```

To see all the methods you have access to I would recommend having a read through the `MotionGiphy::Gif` class and the `MotionGiphy::Image` class.

