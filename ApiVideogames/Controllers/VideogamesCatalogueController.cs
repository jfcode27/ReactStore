using ApiVideogames.OutputAdapter.Repositories;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace ApiVideogames.Controllers
{
    [RoutePrefix("api/videogames")]
    [EnableCors("*", "*", "*")]
    public class VideogamesCatalogueController : ApiController
    {
        [HttpGet]
        [Route("")]
        public HttpResponseMessage getVideogames()
        {
            var videogamesList = VideogamesRepository.ConsultarVideojuegos();

            return Request.CreateResponse(HttpStatusCode.OK, videogamesList);
        }
    }
}