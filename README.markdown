# Lipsum - A Lorem Ipsum Generator for Rails

When developing a new application, there's often a need to output sample
paragraphs or sentences of text. Lorem Ipsum has been the traditional
placeholder and now it's easy to use without relying on webservices.

## Usage

    Lipsum.paragraphs(3)
    Lipsum.sentences(3)
    Lipsum.words(3)

    # Wrap each paragraph in <p></p>:
    Lipsum.paragraphs(3, format: html)

## TODO
  tests

## Credits

Based on the Lorem Ipsum text from [Brad Fults][h3h].
Based on the Lorem Ipsum rails plugin from [lipsum.com][ls].

 [h3h]: http://h3h.net/
 [ls]: http://www.lipsum.com/

## Author

Created by [Brad Fults][h3h].
Gemified + removed view helper by [Markus Seeger][codegourmet].

 [h3h]: http://h3h.net/
 [codegourmet]: https://github.com/codegourmet/
