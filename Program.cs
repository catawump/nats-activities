using System.IO;
using Microsoft.AspNetCore.Hosting;
 
namespace DefaultProject
{
    public class Program
    {
        public static void Main(string[] args)
        {
            BuildWebHost(args).Run();
        }
        public static IWebHost BuildWebHost(string[] args) =>
            WebHost.CreateDefaultBuilder(args)
                .UseKestrel()
                .UseContentRoot(Directory.GetCurrentDirectory())
                .UseStartup<startup>()
                .UseIISIntegration()
                .Build();
    }
}