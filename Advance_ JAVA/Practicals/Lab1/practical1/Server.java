import java.io.*;
import java.net.*;
class Server
{
	public static void main(String args[]) throws Exception
	{
		ServerSocket ss=new ServerSocket(1234);
		Socket s=ss.accept();
		System.out.println("connected with Client");
		FileInputStream filein=new FileInputStream("sent_FILE.txt");
		DataOutputStream dataout=new DataOutputStream(s.getOutputStream());
		int r;
		while((r=filein.read())!=-1)
		{
			dataout.write(r);
			
		}
		System.out.println("\n FILE tranfer Completed");
		s.close();
		ss.close();
	}
}