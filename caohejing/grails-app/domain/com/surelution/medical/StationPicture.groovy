package com.surelution.medical

class StationPicture {

    static constraints = {
		station nullable:true
    }
	
	def beforeValidate() {
		if(!file) {
			file = UUID.randomUUID().toString()
		}
	}
	
	Station station
	String file
	Boolean enabled
}
