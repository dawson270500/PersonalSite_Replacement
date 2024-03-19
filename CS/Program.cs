using PersonalSite_Replacement;
using Microsoft.AspNetCore.Authentication.Certificate;

Console.WriteLine("Building pages");
var builder = WebApplication.CreateBuilder(args);
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();

 builder.Services.AddAuthentication(
        CertificateAuthenticationDefaults.AuthenticationScheme)
    .AddCertificate();

Console.WriteLine("Preparing application environment");
var app = builder.Build();

app.UseAuthentication();
app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");
Console.WriteLine("Starting application Environment");
FileLogger.WriteLine("=== APPLICATION START ===");
app.Run();

public static class DB_DETAILS
{
    public static string db_server = File.ReadAllText("db_server.txt");
    public static string db_user = File.ReadAllText("db_user.txt");
    public static string db_password = File.ReadAllText("db_password.txt");
}