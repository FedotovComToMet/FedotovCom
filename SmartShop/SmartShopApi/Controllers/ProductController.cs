using Microsoft.AspNetCore.Mvc;
using SmartShopApi.Models;

namespace SmartShopApi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductController : ControllerBase
{
    [HttpGet]
    public ActionResult<IEnumerable<Product>> GetProducts()
    {
        return Ok(DataStore.Products);
    }
}
