namespace PersonalSite_Replacement
{
	public class FileLogger
	{
		const string LOG_FILE = "C://logs//log.txt";

		public static void WriteLine(string line)
		{
			string add = DateTime.Now.ToString("MM/dd/yyyy h:mm tt  - ");
			File.AppendAllText(LOG_FILE, add + line);
		}

	}
}
