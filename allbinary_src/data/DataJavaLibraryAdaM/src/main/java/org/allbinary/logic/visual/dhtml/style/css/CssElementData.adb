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



package body org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package is

   procedure Initialize_Fields (This : in out CssElementData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("CSS_ELEMENT_NAME");
   end Initialize_Fields;


   function getInstance return CssElementData_Access is
   begin
        return CssElementData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CssElementData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CssElementData_Access is
      This : constant CssElementData_Access := new CssElementData;
   begin
      CssElementData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := CssElementData_Package.Create;

end org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package;


