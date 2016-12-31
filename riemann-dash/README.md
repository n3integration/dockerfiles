# riemann-dash

riemann-dash is an HTTP dashboard for [Riemann](http://riemann.io/)

## Usage

```bash
docker run -d -p 4567:4567 riemann-dash/latest
```

## Configuration

An `/etc/riemann-dash/cfg` volume can be mounted to provide a custom configuration. For
more information refer to the [docs](https://github.com/riemann/riemann-dash). If a custom
configuration is provided, the value of the `RIEMANN_DASH_CONFIG` environment variable
should contain the absolute path to the configuration file.

### Example

```bash
docker run -d \
  -p 4567:4567 \
  -v /etc/riemann-dash/cfg:cfg \
  -e "RIEMANN_DASH_CONFIG=/etc/riemann-dash/cfg/config.rb" \
  riemann-dash/latest
```
