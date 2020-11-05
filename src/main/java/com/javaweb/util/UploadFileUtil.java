package com.javaweb.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

public class UploadFileUtil {

	public static List<String> uploadFile(HttpServletRequest req, Long postId) {
		List<String> fileNames = new ArrayList<String>();
		try {
			List<Part> parts = (List<Part>) req.getParts();
			for (Part part : parts) {
				if (part.getName().equalsIgnoreCase("thumbnail") || part.getName().equalsIgnoreCase("photo1") || part.getName().equalsIgnoreCase("photo2") || part.getName().equalsIgnoreCase("photo3") || part.getName().equalsIgnoreCase("photo4") || part.getName().equalsIgnoreCase("photo5")) {
					String fileName = getFileName(part);
					fileNames.add(fileName);
					//String applicationPath = req.getServletContext().getRealPath("");
					String basePath = "E:\\QuanLiDuAn\\Tronhatrang\\src\\main\\webapp\\templates\\images\\" + postId +"\\";
					//String basePath = applicationPath + File.separator + UPLOAD_DIR + File.separator;
					File path = new File(basePath);
					if (!path.exists()) {
						path.mkdirs();
					}
					InputStream inputStream = null;
					OutputStream outputStream = null;
					try {
						File outputFilePath = new File(basePath + fileName);
						inputStream = part.getInputStream();
						outputStream = new FileOutputStream(outputFilePath);
						int read = 0;
						final byte[] bytes = new byte[1024];
						while ((read = inputStream.read(bytes)) != -1) {
							outputStream.write(bytes, 0, read);
						}
					} catch (Exception e) {
						fileName = null;
					} finally {
						if (outputStream != null) {
							outputStream.close();
						}
						if (inputStream != null) {
							inputStream.close();
						}
					}
				}
			}
		} catch (Exception e) {
			fileNames = null;
		}
		return fileNames;
	}
	
	private static String getFileName(Part part) {
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}
}
