package org.siemac.metamac.srm.registry.servlet;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;

public class DownloadWadl extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {

    static final long           serialVersionUID = 1L;
    private static final int    BUFSIZE          = 4096;
    private String              filePath;
    private static final String patttern         = "(/apis/registry/[^/\\?]+)/?.*";

    @Override
    public void init() {
        filePath = getServletContext().getRealPath("") + File.separator + "static" + File.separator + "wadl" + File.separator + "sdmx-rest.wadl";
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        File file = new File(filePath);
        int length = 0;
        ServletOutputStream outStream = response.getOutputStream();
        ServletContext context = getServletConfig().getServletContext();
        String mimetype = context.getMimeType(filePath);

        // Create a temp file with replace base api URL
        String content = IOUtils.toString(new FileInputStream(file), "UTF-8");
        StringBuilder replaceContent = replacebaseUrl(request);
        content = content.replaceFirst("base=\"http://www.sdmx.org/sdmxrestservice/\"", replaceContent.toString());

        File tempFile = File.createTempFile("down_", ".tmp");
        IOUtils.write(content, new FileOutputStream(tempFile), "UTF-8");
        file = tempFile;

        // sets response content type
        if (mimetype == null) {
            mimetype = "application/xml";
        }
        response.setContentType(mimetype);
        response.setContentLength((int) file.length());
        String fileName = (new File(filePath)).getName();

        // sets HTTP header
        response.setHeader("Content-Disposition", "inline; filename=\"" + fileName + "\"");

        byte[] byteBuffer = new byte[BUFSIZE];
        DataInputStream in = new DataInputStream(new FileInputStream(file));

        // reads the file's bytes and writes them to the response stream
        while ((in != null) && ((length = in.read(byteBuffer)) != -1)) {
            outStream.write(byteBuffer, 0, length);
        }

        in.close();

        outStream.close();
        tempFile.delete();
    }

    protected StringBuilder replacebaseUrl(HttpServletRequest request) {
        StringBuilder replaceContent = new StringBuilder("base=\"");
        replaceContent.append(request.getRequestURL());
        replaceContent.delete(replaceContent.length() - request.getServletPath().length(), replaceContent.length());
        replaceContent.append(request.getParameter("path").replaceFirst(patttern, "$1"));
        replaceContent.append("/\"");
        return replaceContent;
    }
}