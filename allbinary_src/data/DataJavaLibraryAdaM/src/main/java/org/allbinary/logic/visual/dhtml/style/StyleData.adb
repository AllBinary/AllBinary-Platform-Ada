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


package body org.allbinary.logic.visual.dhtml.style.StyleData_Package is

   procedure Initialize_Fields (This : in out StyleData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("STYLE_NAME");
      This.NAMEMAXLEN := 255;
   end Initialize_Fields;


   function getInstance return StyleData_Access is
   begin
        return StyleData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StyleData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StyleData_Access is
      This : constant StyleData_Access := new StyleData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant StyleData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StyleData_Package.Create;

end org.allbinary.logic.visual.dhtml.style.StyleData_Package;


