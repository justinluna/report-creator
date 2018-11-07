({
	helperExecuteQuery : function(component, item, callback) {
		var action = component.get("c.getResults");

        var fieldSelect = ""+component.get("v.fieldSelectValue")+"";
        var objectField = component.get("v.objectValueString");
        
        action.setParams({
            "objectSearch" : objectField,
            "fieldSearch" : fieldSelect
        }); 
        action.setCallback(this, function(data) {
            var state = data.getState();
            if (state == "SUCCESS")
            {
                component.set("v.ListFields", data.getReturnValue());
            }
        });
        if(objectField != null && fieldSelect != "")
        	$A.enqueueAction(action);
	},

    helperGetRowNames : function(component, item, callback) {
		var fieldSelect = ""+component.get("v.fieldSelectValue")+"";
        var arrayOfFields = fieldSelect.split(",");
        
        component.set("v.FieldNames", arrayOfFields);
	}
})