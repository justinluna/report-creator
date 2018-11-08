({
    fieldListChange: function (component, event, helper) {
        component.set("v.fieldSelectValue", event.getParam("value"));
        console.log(component.get("v.fieldSelectValue"));
    },
    executeQuery: function (component, event, helper) {
        console.log("hello");
        helper.helperExecuteQuery(component);
        helper.helperGetRowNames(component);
        helper.helperAddElement(component);
    }
})