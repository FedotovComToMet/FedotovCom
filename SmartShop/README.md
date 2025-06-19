# SmartShop

Учебный проект интернет-магазина электроники без базы данных.

## Запуск API

```bash
cd SmartShopApi
 dotnet run
```

API будет доступен по адресу `http://localhost:5000` (Swagger по `http://localhost:5000/swagger`).

## Запуск фронтенда

Откройте файл `Frontend/index.html` в браузере или запустите простой сервер:

```bash
cd Frontend
python3 -m http.server 8080
```

## Docker

При наличии Docker можно собрать образ:

```bash
docker build -t smartshop -f Dockerfile .
docker run -p 5000:8080 smartshop
```
