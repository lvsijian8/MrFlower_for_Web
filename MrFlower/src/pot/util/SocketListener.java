package pot.util;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * Created by lvsijian8 on 2017/4/11.
 */
public class SocketListener extends Thread {
    public void run() {
        ServerSocket ss = null;
        try {
            ss = new ServerSocket(2345);
            while (true) {
                Socket s = ss.accept();
                new Thread(new SocketReader(s)).start();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
