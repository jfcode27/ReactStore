namespace ApiVideogames.DomainModel.Entities
{
    public class Videogame
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Image { get; set; }
        public string Cover { get; set; }
        public string Description { get; set; }
        public string Publisher { get; set; }
        public string Date { get; set; }
        public string Platform { get; set; }
        public double Price { get; set; }

        public Videogame(int id, string title, string image, string cover, string description, string publisher, string date, string platform, double price)
        {
            Id = id;
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
