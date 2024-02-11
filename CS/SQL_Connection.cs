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
				Console.WriteLine("=== FATAL ===\nCould not connect to SQL DB");
				FileLogger.WriteLine("=== FATAL ===\nCould not connect to SQL DB");
				switch (ex.Number)
				{
					case 0:
						FileLogger.WriteLine("FATAL - SQL_Connection = SQL server error: " + ex.Message);
						Console.WriteLine("FATAL = SQL server error: " + ex.Message);
						break;

					case 1045:
						FileLogger.WriteLine("FATAL - SQL_Connection = Invalid username or password: " + ex.Message);
						Console.WriteLine("FATAL = Invalid username or password: " + ex.Message);
						break;

					default:
						FileLogger.WriteLine("FATAL - SQL_Connection = Unknown error: " + ex.Message);
						Console.WriteLine("FATAL = Unknown error: " + ex.Message);
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
				FileLogger.WriteLine("Error - SQL_Connection = Connection is invalid");
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
				Console.WriteLine("ERROR = SQL select failed: " + ex.Message);
				FileLogger.WriteLine("Error - SQL_Connection = SQL select failed " + ex.Message);
				return null;
			}
		}
		
	}
}
