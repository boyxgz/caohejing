package com.surelution.medical

import grails.util.Holders;

class DbMaintainController {	
	//path:文件名
	//rootPath:磁盘存储地址
    def index() {
		if(params.sub) {
			def file = request.getFile('dbFile')
			def descrition = params.description
			if(file && !file.empty) {
				def dbFile = new DbFile()
				DbFile.findByEnabled(true).each {fl->fl.enabled = false}
				dbFile.enabled = true
				dbFile.origName = file.originalFilename
				dbFile.description = descrition
				dbFile.save(flush:true)
				def path = dbFile.path
				file.transferTo(new File("${Holders.config.grails.dbFile.rootPath}${path}"))	
				com.surelution.query.Constants.DB_FILE_PATH = "${Holders.config.grails.dbFile.rootPath}"+path
				flash.message = "数据库文件上传成功！"
				}
		}
	}
	
	
	//更新数据库文件
	    def selectDbFile(){
	      def fileId = params.selectFile
		  DbFile.findByEnabled(true).each {fl->fl.enabled = false}
		  def dbFile = DbFile.get(fileId)
		  dbFile.enabled = true
		  dbFile.save(flush:true)
		  
		  com.surelution.query.Constants.DB_FILE_PATH = "${Holders.config.grails.dbFile.rootPath}"+dbFile.path
		  flash.message="数据库文件修改成功"
		  redirect(action:'index')
		  }
	
		
	//下载数据库文件
        def downLoad(Long id){
			def dbFile = DbFile.get(id) 
			def file = new File("${Holders.config.grails.dbFile.rootPath}"+dbFile.path)
			response.reset()
			/*response.reset();
			def fileName =(dbFile.origName, "UTF-8");*/
			def fileName = new String(dbFile.origName.getBytes("UTF-8"),"ISO8859-1");
			if (file.exists()) {
			   response.setContentType("application/octet-stream")
			   response.addHeader("Content-disposition", "attachment;filename="+fileName);
			   response.setHeader("Content-disposition", "attachment;filename="+fileName)
			   response.outputStream << file.bytes
			   return
			}
		}	
		
        }
	
	

