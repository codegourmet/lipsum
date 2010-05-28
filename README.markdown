# Lipsum - A Lorem Ipsum Generator Plugin for Rails

When developing a new application, there's often a need to output sample
paragraphs or sentences of text. Lorem Ipsum has been the traditional
placeholder and now it's easy to use from within any Rails controller or view.

## Install the Plugin

    ./script/plugin install git://github.com/h3h/lipsum.git

## Usage

In a controller or view, call the `lipsum` method, passing either a number of
words or an options hash.

    One paragraph:
    <%= lipsum %>

    Fifty words:
    <%= lipsum(50) %>

    Fancier options:
    <%= lipsum(:paragraphs => 3) %>
    <%= lipsum(:sentences => 5) %>
    <%= lipsum(:words => 324) %>

## Credits

Based on the Lorem Ipsum text from [lipsum.com][ls].

 [ls]: http://www.lipsum.com/

## Author

Created by [Brad Fults][h3h].

 [h3h]: http://h3h.net/
