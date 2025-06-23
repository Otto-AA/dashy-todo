# Contributing

Any improvements and fixes are welcome! I will try to get back to you in a reasonable time, however it may take some days until I reply to you.

## Testing

We have some visual regression tests using [tytanic](https://typst-community.github.io/tytanic/). The purpose of them is to prevent unintentional visual changes. They do not necessarily represent what is "right" or "desired".

To run them:
- install tytanic
- `tt run`

This will create images in the "out" and "diff" folders of the tests.

If you want changed the design/position/etc. of the todo notes on purpose, then you can update the pictures in "ref" with:

- `tt update`