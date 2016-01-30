package com.surelution.medical

class DbFile {

    static constraints = {	
    }
	
	static mapping = {
		path column:'_path'
		enabled column:'_enabled'
		origName nullable:true
	}
	
	def beforeValidate() {
		if(!path) {
			path = UUID.randomUUID().toString()
		}
	}
	
	String path
	String origName  //文件原始名称
	String description //上传文件描述
	Date dateCreated
	Boolean enabled
}
