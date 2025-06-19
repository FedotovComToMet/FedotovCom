# build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY SmartShopApi/ SmartShopApi/
WORKDIR /src/SmartShopApi
RUN dotnet publish -c Release -o /app

# runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
COPY --from=build /app ./
ENTRYPOINT ["dotnet", "SmartShopApi.dll"]
