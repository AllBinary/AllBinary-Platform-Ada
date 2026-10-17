-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.util.ABStack_Package is

   procedure Initialize_Fields (This : in out ABStack'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABStack'Class) is
   begin
      Stack_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ABStack_Access is
      This : constant ABStack_Access := new ABStack;
   begin
      ABStack_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.util.ABStack_Package;


