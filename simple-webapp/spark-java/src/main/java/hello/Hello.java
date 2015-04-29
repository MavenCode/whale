package hello;

import java.net.InetAddress;
import java.net.UnknownHostException;

import spark.Spark;

public class Hello {

	public static void main(String[] args) throws UnknownHostException {
		final String hostname = InetAddress.getLocalHost().getHostName();
		Spark.get("/", (req, res) -> "Hello from " + hostname + ".\n");
	}

}
