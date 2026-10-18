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



package body org.allbinary.logic.visual.dhtml.style.color.ColorData_Package is

   procedure Initialize_Fields (This : in out ColorData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("COLOR_NAME");
   end Initialize_Fields;


   function getInstance return ColorData_Access is
   begin
        return ColorData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ColorData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorData_Access is
      This : constant ColorData_Access := new ColorData;
   begin
      ColorData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := ColorData_Package.Create;

end org.allbinary.logic.visual.dhtml.style.color.ColorData_Package;


