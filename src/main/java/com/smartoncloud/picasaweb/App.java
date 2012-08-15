package com.smartoncloud.picasaweb;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.WebAppContext;

public class App {
    
    public static void main(String[] args) throws Exception {
	String webappFolder = App.class.getClassLoader().getResource("webapp").toExternalForm();
	String contextPath = "/";
	WebAppContext webappHandler = new WebAppContext(webappFolder, contextPath);
	
	Server server = new Server(getPort());
	server.setHandler(webappHandler);
	server.start();
	server.join();
    }

    private static Integer getPort() {
	String port = System.getenv("VCAP_APP_PORT");
	if (port == null || port.isEmpty())
	    port = "8080";
	return Integer.valueOf(port);
    }

}