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



package body org.allbinary.util.ABHashSet_Package is

   procedure Initialize_Fields (This : in out ABHashSet'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABHashSet'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ABHashSet_Access is
      This : constant ABHashSet_Access := new ABHashSet;
   begin
      ABHashSet_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.util.ABHashSet_Package;


