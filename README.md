# ButecoDev

Repository for [ButecoDev website](https://buteco.dev).

## Development

* Python 3.7+ (older versions should work)
* pip-tools


### Setup

* Create a virtualenv using your prefered method, and install pip-tools with `pip install pip-tools`.
* Install dependencies: `make install-dev`
* Set environment variables as defined in `env.example`
* To build the project: `make build`
* To run the development server: `make serve`


### Deployment

All changes in `production` branch are deployed automatically.

Production build runs on Python 3.11.5.

Reference:
 - https://developers.cloudflare.com/pages/platform/language-support-and-tools/
