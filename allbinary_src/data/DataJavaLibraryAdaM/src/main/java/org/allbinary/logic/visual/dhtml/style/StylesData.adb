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


package body org.allbinary.logic.visual.dhtml.style.StylesData_Package is

   procedure Initialize_Fields (This : in out StylesData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("STYLES_NAME");
   end Initialize_Fields;


   function getInstance return StylesData_Access is
   begin
        return StylesData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StylesData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StylesData_Access is
      This : constant StylesData_Access := new StylesData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant StylesData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StylesData_Package.Create;

end org.allbinary.logic.visual.dhtml.style.StylesData_Package;


