package com.surelution.medical

import com.surelution.whistle.core.Attribute;

class ConmentAction extends SurelutionBaseAction{

		println keyWord
		println title
		if(title){
			 put(new Attribute(Attribute.KEY_Content, "${title.message}"))
		}else{
	         def message=Message.findByKeyWord("unified-response").message
		   }
}