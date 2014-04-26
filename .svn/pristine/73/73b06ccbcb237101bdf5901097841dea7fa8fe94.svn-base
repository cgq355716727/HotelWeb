var ValidatorHelper = {
    DefaultValidator: function (name, defaultVal, message) {
        var o = jQuery("#" + name);
        if (jQuery.trim(o.val()) == defaultVal) {
            //alert(message);
            o.focus();
            return false;
        }
        return true;
        //if (obj.value.trim() == "") Result = false;
    },
    FieldValidator: function (name, message) {
        return ValidatorHelper.DefaultValidator(name, '', message);
    },
    ValidatorReg: function (name, message, reg) {
        var o = jQuery("#" + name);
        if (!reg.test(jQuery.trim(o.val()))) {
            o.focus();
            return false;
        }
        return true;
    },
    ChineseValidator: function (name, message) {
        return this.ValidatorReg(name, message, /^[\u0391-\uFFE5]+$/); //只能中文
        //var re = new RegExp("[\\u4e00-\\u9fa5]", ""); re.test(val);//可函其他字符 /[\u4e00-\u9fa5]/;
    },
    EmailValidator: function (name, message) {
        //return this.ValidatorReg(name,message,/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/);
        return this.ValidatorReg(name, message, /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/);
    },
    PhoneValidator: function (name, message) {
        return this.ValidatorReg(name, message, /^((\(\d{3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/);
    },
    MobileValidator: function (name, message) {
        return this.ValidatorReg(name, message, /^((\(\d{3}\))|(\d{3}\-))?1(3|4|5|8)\d{9}$/);
    }
}