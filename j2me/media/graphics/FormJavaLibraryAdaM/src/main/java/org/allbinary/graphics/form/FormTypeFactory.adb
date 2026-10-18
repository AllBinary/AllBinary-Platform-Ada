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


with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.graphics.form.FormTypeFactory_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out FormTypeFactory'Class) is
   begin
      null;
      This.UNK := To_Unbounded_String ("Unknown FormType");
      This.NULL_FORM_TYPE := FormType_Package.Create (StringUtil_Package.getInstance.NULL_STRING);
      This.TEMP_HORIZONTAL_FORM := FormType_Package.Create (To_Unbounded_String ("TempHorizontal"));
      This.HORIZONTAL_FORM := FormType_Package.Create (To_Unbounded_String ("Horizontal"));
      This.VERTICAL_CENTER_FORM := FormType_Package.Create (To_Unbounded_String ("Vertical"));
   end Initialize_Fields;

   procedure Initialize (This : in out FormTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FormTypeFactory_Access is
      This : constant FormTypeFactory_Access := new FormTypeFactory;
   begin
      FormTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FormTypeFactory_Access is
   begin
        return FormTypeFactory_Package.instance;
   end getInstance;

   function getFormType (This : in out FormTypeFactory) return FormType_Access is
      displayInfo : DisplayInfoSingleton_Access;
      formType : FormType_Access;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        formType := null;
        if displayInfo.isPortrait then
            formType := This.VERTICAL_CENTER_FORM;
        else
            formType := This.HORIZONTAL_FORM;
        end if;
        return formType;
   end getFormType;

begin
   null;
   instance := FormTypeFactory_Package.Create;

end org.allbinary.graphics.form.FormTypeFactory_Package;


