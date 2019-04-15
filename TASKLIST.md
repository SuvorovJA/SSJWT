- [x] dockerize микросервиса
  -[x] включить security debug 
  
USING:
```bash
cd docker/
./build_ssjwt_image.sh
./start_app.sh
curl -u clientId:secret -X POST ssjwt.docker:9000/oauth/token\?grant_type=password\&username=faro\&password=faro-password
...
$ curl localhost:9000/users/me -H "Authorization: bearer ..."
...
```

- [ ] покрытие тестами

- [ ] документирование классов и методов