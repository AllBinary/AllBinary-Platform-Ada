--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.validation.PasswordValidator_Package is

   procedure Initialize_Fields (This : in out PasswordValidator'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PasswordValidator'Class; textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean) is
      textFieldItem : constant ABTextFieldItem_Access := ABTextFieldItem_Access (textFieldItem_Param);
   begin
        TextFieldItemValidator_Package.Initialize (This, textFieldItem, min, max, allowOnEmpty);
   end Initialize;

   function Create (textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean) return PasswordValidator_Access is
      This : constant PasswordValidator_Access := new PasswordValidator;
   begin
      PasswordValidator_Package.Initialize (This.all, textFieldItem_Param, min, max, allowOnEmpty);
      return This;
   end Create;

end org.allbinary.graphics.form.item.validation.PasswordValidator_Package;


