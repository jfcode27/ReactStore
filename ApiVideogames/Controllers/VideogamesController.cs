using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace ApiVideogames.Controllers
{
    [RoutePrefix("api/videogames")]
    [EnableCors("*","*","*")]
    public class VideogamesController : ApiController
    {
        [HttpGet]
        [Route("")]
        public HttpResponseMessage getVideogames() { }
    }
}