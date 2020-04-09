(function () {
  return {
    
    init: function() {
        debugger;

        if (this.state === "create") {
          this.form.setControlValue('Note', '123 321');
          this.form.setControlValue('StatusId',  { key: 4, value: "Не подтверждён" });
        }


    }
    
};
}());
