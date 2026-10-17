-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.graphics.threed.GLHolder_Package is

   procedure Initialize_Fields (This : in out GLHolder'Class) is
   begin
      null;
      This.isCreated := True;
   end Initialize_Fields;


   procedure Initialize (This : in out GLHolder'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GLHolder_Access is
      This : constant GLHolder_Access := new GLHolder;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure runOnSurfaceCreated (This : in out GLHolder; renderer : Java_Object_Access) is
   begin
        null;
   end runOnSurfaceCreated;

   procedure runOnSurfaceChanged (This : in out GLHolder; renderer : Java_Object_Access; width : Integer; height : Integer) is
   begin
        null;
   end runOnSurfaceChanged;

   procedure run (This : in out GLHolder; renderer : Java_Object_Access) is
   begin
        null;
   end run;

end org.allbinary.graphics.threed.GLHolder_Package;


