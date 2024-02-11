using PersonalSite_Replacement;

Console.WriteLine("Building pages");
var builder = WebApplication.CreateBuilder(args);
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();

Console.WriteLine("Preparing application enviroment");
var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    Console.WriteLine("In development mode");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");
Console.WriteLine("Starting application Environment");
FileLogger.WriteLine("=== APPLICATION START ===");
app.Run();
