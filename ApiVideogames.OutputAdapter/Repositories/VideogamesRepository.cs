using Dapper;
using MySql.Data.MySqlClient;
using ApiVideogames.DomainModel.Entities;
using System.Collections.Generic;
using System.Data;
using System.Configuration;


namespace ApiVideogames.OutputAdapter.Repositories
{
    public static class VideogamesRepository
    {
        static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["videogames_app"].ToString();

        static MySqlConnection CrearConexion()
        {
            return new MySqlConnection(ConnectionString);
        }

        public static List<Videogame> ConsultarVideojuegos()
        {
            using (var connection = CrearConexion())
            {
                return connection.Query<Videogame>("get_videogames", commandType: CommandType.StoredProcedure).AsList();
            }
        }

        public static List<Videogame> ConsultarVideojuegosPorFecha()
        {
            using (var connection = CrearConexion())
            {
                return connection.Query<Videogame>("get_videogamesByDate", commandType: CommandType.StoredProcedure).AsList();
            }
        }

    }
}
