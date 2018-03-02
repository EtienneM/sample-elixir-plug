# Sample Elixir Plug application

## Running Locally

### Install dependencies

```bash
docker-compose run sample-elixir-plug mix deps.get
```

### Compile project

```bash
docker-compose run sample-elixir-plug mix compile
```

### Execute

```bash
docker-compose up
```

## Deploying on Scalingo

Create an application on https://scalingo.com, then:

```
git remote add scalingo git@scalingo.com:<name_of_your_app>.git
```

Set the `BUILDPACK_URL` environment variable to `https://github.com/HashNuke/heroku-buildpack-elixir.git`.

You can do it using the web dashboard, select your application, go to the `Environment` tab and add :
```
BUILDPACK_URL=https://github.com/HashNuke/heroku-buildpack-elixir.git
```

If you want to do it using the Scalingo CLI interface just type :

```sh
scalingo -a <name_of_your_app> env-set BUILDPACK_URL=https://github.com/HashNuke/heroku-buildpack-elixir.git
```

Next you'll need to push it to Scalingo :

```sh
git push scalingo master
```

And that's it!

The application is running at this URL: https://sample-elixir-plug.scalingo.io

## Deploy in one click

[![Deploy to Scalingo](https://cdn.scalingo.com/deploy/button.svg)](https://my.scalingo.com/deploy)

## Links

http://elixir-lang.org/
https://github.com/elixir-lang/plug
