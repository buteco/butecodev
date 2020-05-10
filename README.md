# ButecoDev

[![Netlify Status](https://api.netlify.com/api/v1/badges/1c3db743-9223-4583-b115-97892368a9ee/deploy-status)](https://app.netlify.com/sites/butecodev/deploys)

Repository for [ButecoDev website](https://buteco.dev).


## Development

* Python 3.7+ (older versions should work)
* pipenv


### Setup

* Install pipenv and create a virtualenv using your prefered method
* Install dependencies: `pipenv install --dev`
* Set environment variables as defined in `env.example`
* To build the project: `make build`
* To run the development server: `make serve`


### Deployment

All changes in `production` branch are deployed automatically.
