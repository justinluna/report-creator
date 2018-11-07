({
    fieldListChange: function (component, event, helper) {
        component.set("v.fieldSelectValue", event.getParam("value"));
    },
    executeQuery: function (component, event, helper) {
        helper.helperExecuteQuery(component);
        helper.helperGetRowNames(component);
        //component.set("v.individualFields", "{!fields.Name}");
    }
})