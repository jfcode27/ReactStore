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
        [Route("date")]
        public HttpResponseMessage getVideogamesByDate()
        {
            var videogamesList = VideogamesRepository.ConsultarVideojuegosPorFecha();

            return Request.CreateResponse(HttpStatusCode.OK, videogamesList);
        }
    }
}