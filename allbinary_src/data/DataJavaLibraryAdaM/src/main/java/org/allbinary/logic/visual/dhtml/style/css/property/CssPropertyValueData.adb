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


package body org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package is

   procedure Initialize_Fields (This : in out CssPropertyValueData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("CSS_PROPERTY_VALUE");
   end Initialize_Fields;


   function getInstance return CssPropertyValueData_Access is
   begin
        return CssPropertyValueData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CssPropertyValueData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CssPropertyValueData_Access is
      This : constant CssPropertyValueData_Access := new CssPropertyValueData;
   begin
      CssPropertyValueData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := CssPropertyValueData_Package.Create;

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValueData_Package;


