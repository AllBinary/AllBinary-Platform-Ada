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


package body org.allbinary.thread.ARunnable_Package is

   procedure Initialize_Fields (This : in out ARunnable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ARunnable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ARunnable_Access is
      This : constant ARunnable_Access := new ARunnable;
   begin
      ARunnable_Package.Initialize (This.all);
      return This;
   end Create;


   procedure run (This : in out ARunnable) is
   begin
        null;
   end run;

end org.allbinary.thread.ARunnable_Package;


