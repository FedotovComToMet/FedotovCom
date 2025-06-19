using System.Collections.Generic;

namespace SmartShopApi.Models;

public static class DataStore
{
    public static List<Product> Products { get; } = new()
    {
        new Product { Id = 1, Name = "Laptop", Price = 1200m },
        new Product { Id = 2, Name = "Smartphone", Price = 800m },
        new Product { Id = 3, Name = "Tablet", Price = 500m }
    };

    public static List<Order> Orders { get; } = new();
}
