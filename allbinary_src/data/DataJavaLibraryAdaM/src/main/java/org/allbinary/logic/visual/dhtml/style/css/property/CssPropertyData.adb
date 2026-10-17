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


package body org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyData_Package is

   procedure Initialize_Fields (This : in out CssPropertyData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("CSS_PROPERTY_NAME");
      This.VALUES := To_Unbounded_String ("CSS_PROPERTY_VALUES");
   end Initialize_Fields;


   function getInstance return CssPropertyData_Access is
   begin
        return CssPropertyData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CssPropertyData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CssPropertyData_Access is
      This : constant CssPropertyData_Access := new CssPropertyData;
   begin
      CssPropertyData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := CssPropertyData_Package.Create;

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyData_Package;


