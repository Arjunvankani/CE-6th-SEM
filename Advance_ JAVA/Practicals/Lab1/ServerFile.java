import java.io.*;
import java.net.*;
class ServerFile
{
            public static void main(String args[]) throws Exception
            {
                        ServerSocket ss=new ServerSocket(1234);
                        Socket s=ss.accept();
                        System.out.println("Connected with server, We can sent data over server!!");
                        FileInputStream filein=new FileInputStream("Send.txt");
                        DataOutputStream dataout=new DataOutputStream(s.getOutputStream());
                        int r;
                        while((r=filein.read())!=-1)
                        {
                                    dataout.write(r);
                                   
                        }
                        System.out.println("\nFiletranfer Completed, Successfully");
                        s.close();
                        ss.close();
            }
}