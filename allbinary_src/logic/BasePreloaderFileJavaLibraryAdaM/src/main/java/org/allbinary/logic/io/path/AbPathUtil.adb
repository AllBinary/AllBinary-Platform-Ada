-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.logic.io.path.AbPathUtil_Package is

   procedure Initialize_Fields (This : in out AbPathUtil'Class) is
   begin
      null;
      This.NO_ABPATH := AbPath_Package.createAbPath;
   end Initialize_Fields;

   procedure Initialize (This : in out AbPathUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AbPathUtil_Access is
      This : constant AbPathUtil_Access := new AbPathUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbPathUtil_Access is
   begin
        return AbPathUtil_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant AbPathUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AbPathUtil_Package.Create;

end org.allbinary.logic.io.path.AbPathUtil_Package;


