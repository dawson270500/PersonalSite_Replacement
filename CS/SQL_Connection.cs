using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Numerics;
using MySql.Data.MySqlClient;

namespace PersonalSite_Replacement
{
	public class SQL_Connection
	{

		private MySqlConnection? conn;

		public SQL_Connection(string server, string user, string password, string database)
		{
			Console.WriteLine("Attempting to connect to SQL DB");
			string myConnectionString;

			myConnectionString = "server="+ server + "; uid="+ user + ";" +
				"pwd="+ password + "; database="+ database + ";";

			try
			{
				conn = new MySql.Data.MySqlClient.MySqlConnection();
				conn.ConnectionString = myConnectionString;
			}
			catch (MySqlException ex)
			{
				conn = null;
				Console.WriteLine("=== Error ===\nCould not connect to SQL DB");
				switch (ex.Number)
				{
					case 0:
						Console.WriteLine("Error = SQL server error: " + ex.Message);
						break;

					case 1045:
						Console.WriteLine("Error = Invalid username or password: " + ex.Message);
						break;

					default:
						Console.WriteLine("Error = Unknown error: " + ex.Message);
						break;
				}

				return;
			}
			Console.WriteLine("Successfully logged into SQL DB");
		}

		public void CloseConn()
		{
			conn.Close();
		}

		public MySqlDataReader? RunSelectQuery(string query)
		{
			if (conn == null)
			{
				Console.WriteLine("Error = Connection is invalid");
				return null;
			}

			try
			{
				conn.Open();
				MySqlCommand cmd = new()
				{
					CommandText = query,
					Connection = conn
				};

				MySqlDataReader reader = cmd.ExecuteReader();
				return reader;
			}
			catch (Exception ex)
			{
				Console.WriteLine("ERROR = SQL get name failed: " + ex.Message);
				return null;
			}
		}
		
	}
}
