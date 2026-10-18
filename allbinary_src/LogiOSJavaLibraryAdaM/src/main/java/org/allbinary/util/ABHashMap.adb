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



package body org.allbinary.util.ABHashMap_Package is

   procedure Initialize_Fields (This : in out ABHashMap'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABHashMap'Class) is
   begin
      HashMap_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ABHashMap_Access is
      This : constant ABHashMap_Access := new ABHashMap;
   begin
      ABHashMap_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.util.ABHashMap_Package;


