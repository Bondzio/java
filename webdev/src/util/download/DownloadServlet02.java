package util.download;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/download02.do")
public class DownloadServlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String savePath = "upload";
			ServletContext context = getServletContext();
			
			String uploadPath = "c:/dev/upload";
			//String uploadPath = context.getRealPath(savePath);
			String fileName=request.getParameter("fileName");		
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition","attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
			byte[] data = new byte[1024*100];
			
			InputStream is = new BufferedInputStream(new FileInputStream(uploadPath + "/" + fileName));
			
			OutputStream os = new BufferedOutputStream(response.getOutputStream());
			
			while(is.read(data)!= -1) {
				os.write(data);
			}
			if (os!=null) try {os.flush(); os.close();} catch (Exception e){}
			if (is!=null) try {is.close();} catch (Exception e){}
	}
}

