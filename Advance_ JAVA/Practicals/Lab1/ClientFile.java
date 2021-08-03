import java.io.*;
import java.net.*;
public class ClientFile {

            public static void main(String[] args) throws Exception
            {
                Socket s=new Socket("127.0.0.1",1234);
                                    if(s.isConnected())
                                    {
                                                System.out.println("Connected to server, Now you can send data!!");
                                    }
                                    FileOutputStream fileout= new FileOutputStream("received.txt");
                                    DataInputStream datain=new DataInputStream(s.getInputStream());
                                    int r;
                                    while((r=datain.read())!=-1)
                                    {
                                                fileout.write((char)r);
                                    }
                                    s.close();
            }

}