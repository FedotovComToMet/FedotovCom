using Microsoft.AspNetCore.Mvc;
using SmartShopApi.Models;

namespace SmartShopApi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class OrderController : ControllerBase
{
    [HttpPost]
    public ActionResult<Order> CreateOrder([FromBody] Order order)
    {
        order.Id = DataStore.Orders.Count + 1;
        DataStore.Orders.Add(order);
        return CreatedAtAction(nameof(CreateOrder), new { id = order.Id }, order);
    }
}
