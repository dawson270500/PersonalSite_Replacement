using PersonalSite_Replacement;

Console.WriteLine("Building pages");
var builder = WebApplication.CreateBuilder(args);
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();

Console.WriteLine("Preparing application environment");
var app = builder.Build();

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");
Console.WriteLine("Starting application Environment");
FileLogger.WriteLine("=== APPLICATION START ===");
app.Run();
