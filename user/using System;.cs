using System;
using Oracle.ManagedDataAccess.Client;

class Program
{
    static void Main()
    {
        string conStr = "User Id=system;Password=oracle;Data Source=localhost:1521/XEPDB1";

        using (OracleConnection con = new OracleConnection(conStr))
        {
            try
            {
                con.Open();
                Console.WriteLine("Connected to Oracle Database");

                string query = "SELECT employee_id, employee_name FROM employees";

                using (OracleCommand cmd = new OracleCommand(query, con))
                {
                    using (OracleDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Console.WriteLine(
                                "ID: " + reader["employee_id"] +
                                " Name: " + reader["employee_name"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
        }
    }
}