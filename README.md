Take a selfie using Apple's built-in camera every minute and turn all the pictures into a `GIF`
each night.

`setup.sh` has a lot of assumptions about how your $PATH is configured.

### Prerequisites
Follow the instructions [here](https://gist.github.com/beng/806b8420cc16bcf8a07a)
for installing `imagesnap` and `impbcopy`. Make sure that they are in your `$PATH`.

### Installation
* `./scripts/selfie.sh` and `./scripts/selfie-to-gif.sh` need to be in your `$PATH`.
* `setup.sh <selfie-archive-path>`

### Selfie GIFS API
* `/selfies/` - List of GIF ids
* `/selfies/:id` - Serve the GIF
