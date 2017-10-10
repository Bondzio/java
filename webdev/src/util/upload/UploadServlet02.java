package util.upload;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.renderable.ParameterBlock;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload02.do")
public class UploadServlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		boolean isImage = false; 
		String savePath = "upload";
		int uploadFileSizeLimit = 10* 1024 * 1024;
		String encType = "UTF-8";
		
		ServletContext context = getServletContext();
		String uploadFilePath = "c:/dev/upload";// 항상 특정 경로로 주는 것이 좋다.  context.getRealPath(savePath); //
		
		System.out.println("서버상의 실제 디렉토리 : ");
		System.out.println(uploadFilePath);
		
		File dir = new File(uploadFilePath);
		if (!dir.exists()) {
			dir.mkdir();
		}
		
		try	{
			MultipartRequest multi = new MultipartRequest(
					request,
					uploadFilePath,
					uploadFileSizeLimit,
					encType,
					new DefaultFileRenamePolicy());
			
			
			
			Enumeration files = multi.getFileNames();
			int no=1;
			while(files.hasMoreElements()){
					String file = (String) files.nextElement();
					String fileName = multi.getFilesystemName(file);
					String uploadFile = "uploadFile0" + no; 
					System.out.println(uploadFile);
					
					isImage = multi.getContentType(uploadFile)
									.substring(0,6)
									.toLowerCase()
									.equals("image/");
					
					String ext = multi.getContentType(uploadFile)
										.substring(6).toLowerCase();
					
					if(isImage) {
						ParameterBlock pb = new ParameterBlock();
						pb.add(uploadFilePath + "/" + fileName);
						RenderedOp rOp= JAI.create("fileload", pb);
						BufferedImage bi = rOp.getAsBufferedImage();
						BufferedImage thumb= new BufferedImage(100,100,BufferedImage.TYPE_INT_RGB);
						Graphics2D g= thumb.createGraphics();
						g.drawImage(bi, 0, 0, 100, 100, null);
						
						File f= new File(uploadFilePath + "/thumb_" + fileName);
						ImageIO.write(thumb,ext,f);
					}
					
					if (fileName == null) {
						System.out.println("파일업로드 되지 않았음");
					} else {
						out.println("<br> 글쓴이 : " + multi.getParameter("name"));
						out.println("<br> 제 &nbsp; 목 : " + multi.getParameter("title"));
						out.println("<br> 파일명 : <a href='download02.do?fileName=" + 
								fileName + "'>" + fileName + "</a>");
						
						if (isImage) {
							out.println("<hr/>");
							out.println(
									"<br/><img src='download.do?fileName=" + 
									"/thumb_" + fileName + "' />");
							out.println("<br/><img src='download.do?fileName=" + 
									fileName + "' />");				}
					} 
					
					if (multi.getContentType(uploadFile).equals("audio/mp3")) {
						out.println("</br/>AUDIO</br/>");
						out.println("<audio src='download.do?fileName=" + 
									fileName + "' !autoplay controls />");
					}
					no++;
			}
		} catch (Exception e) { 
			System.out.println("예외발생:" + e);
		}  
	}
}