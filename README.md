# HelloPlug

Tinkering with Elixir [Plug](https://github.com/elixir-lang/plug).

### Development:
```
$ mix deps.get
$ PORT=4000 mix run --no-halt
$ open http://localhost:4000/hello
```

### Deploy to Heroku:
```
$ heroku buildpacks:set https://github.com/HashNuke/heroku-buildpack-elixir.git
$ git push heroku master
```
