({
    helperExecuteQuery: function (component, item, callback) {
        var action = component.get("c.getResults");

        var fieldSelect = "" + component.get("v.fieldSelectValue") + "";
        var objectField = component.get("v.objectValueString");

        action.setParams({
            "objectSearch": objectField,
            "fieldSearch": fieldSelect
        });
        action.setCallback(this, function (data) {
            var state = data.getState();
            if (state == "SUCCESS") {
                component.set("v.ListFields", data.getReturnValue());
            }
        });
        if (objectField != null && fieldSelect != "")
        {
            $A.enqueueAction(action);
        }
        console.log(component.get("v.ListFields"));
        console.log("field Select: " + fieldSelect);
        console.log("object Field: " + objectField);
    },

    helperGetRowNames: function (component, item, callback) {
        var fieldSelect = "" + component.get("v.fieldSelectValue") + "";
        var arrayOfFields = fieldSelect.split(",");

        component.set("v.FieldNames", arrayOfFields);
    }, 
    
    helperAddElement : function (component, item, callback) {
        
        var fields = component.get("v.FieldNames");

        /* if(document.getElementById("but").hasChildNodes()){
            document.getElementById("data").remove();
        }

        var para = document.createElement('p');
        var data = document.createTextNode(field);
        para.setAttribute("id", "data");
        para.appendChild(data);

        document.getElementById("but").appendChild(para); */


        console.log(fields);

        var records = component.get("v.ListFields");

        console.log(records);

        /* records.forEach(function(s) {
            var tableRow = document.createElement('tr');
            fields.forEach(function(field){ 
                console.log(field);
                var tableData = document.createElement('td');
                var tableDataNode = document.createTextNode(s[field]);
                tableData.appendChild(tableDataNode);
                tableRow.appendChild(tableData);
            });

        }); */

    }
})