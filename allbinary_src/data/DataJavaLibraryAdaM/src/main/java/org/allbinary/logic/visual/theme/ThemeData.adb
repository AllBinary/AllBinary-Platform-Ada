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



package body org.allbinary.logic.visual.theme.ThemeData_Package is

   procedure Initialize_Fields (This : in out ThemeData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("THEME_NAME");
      This.PATH := To_Unbounded_String ("THEME_PATH");
      This.PREVIEW_IMAGE_NAME := To_Unbounded_String ("THEME_PREVIEW_IMAGE_NAME");
      This.PREVIEW_IMAGE_PATH := To_Unbounded_String ("THEME_PREVIEW_IMAGE_PATH");
   end Initialize_Fields;


   function getInstance return ThemeData_Access is
   begin
        return ThemeData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ThemeData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ThemeData_Access is
      This : constant ThemeData_Access := new ThemeData;
   begin
      ThemeData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := ThemeData_Package.Create;

end org.allbinary.logic.visual.theme.ThemeData_Package;


