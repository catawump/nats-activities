using System.IO;
using Microsoft.AspNetCore.Hosting;
 
namespace YourNamespace
{
    public class DefaultProject
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