# blog_app

## Versions
**Docker: 20.10.7**
**docker-compose: 1.29.2**

**Ruby: 2.6.5**
**Rails: 6.0.4**

**Postgres: 12.6**

**Node: 14.12.0**
**npm: 6.14.8**

**Nginx: 1.19.2**

## Initial Setup
```
$ docker-compose build

$ docker-compose up -d

$ docker-compose exec api bundle exec rails db:create

$ docker-compose exec api bundle exec rails db:migrate

$ docker-compose exec api bundle exec rails db:seed

$ open http://127.0.0.1:8080/
```

## Shutdown

```
$ docker-compose down
```
