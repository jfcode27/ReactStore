

namespace ApiVideogames.DomainModel.Entities
{
    public class Videogame
    {
        public string Title { get; set; }
        public string Image { get; set; }
        public string Cover { get; set; }
        public string Description { get; set; }
        public string Publisher { get; set; }
        public int Date { get; set; }
        public string Platform { get; set; }
        public int Price { get; set; }

        public Videogame(string title, string image, string cover, string description, string publisher, int date, string platform, int price)
        {
            Title = title;
            Image = image;
            Cover = cover;
            Description = description;
            Publisher = publisher;
            Date = date;
            Platform = platform;
            Price = price;
        }
    }
}
