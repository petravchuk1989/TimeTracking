(function () {
  return { 
      init: function() {
       // debugger;      

        if (this.state === "create") {
          this.form.setControlValue('RoleId',  { key: 3, value: "Менеджер" });  
        }
        if (this.state === "update") { 
          this.form.disableControl('RoleId');
          this.form.disableControl('UsersId');      
          const myForm = {
            title: 'Редактирование записи',
            text: 'Вы действительно хотите изменить запись?',
            acceptBtnText: 'Ok',
            cancelBtnText: 'Cancel'
          };
          const perem = (values) => {
            if (values === true) {
              this.form.enableControl('RoleId');
              this.form.enableControl('UsersId');             
            }
          }
          this.openModalForm(myForm, perem);
        }
    }
  };
}());
