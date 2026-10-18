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



package body org.allbinary.util.ABHashtable_Package is

   procedure Initialize_Fields (This : in out ABHashtable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ABHashtable'Class; initialCapacity : Integer) is
   begin
        Hashtable_Package.Initialize (This, initialCapacity);
   end Initialize;

   function Create (initialCapacity : Integer) return ABHashtable_Access is
      This : constant ABHashtable_Access := new ABHashtable;
   begin
      ABHashtable_Package.Initialize (This.all, initialCapacity);
      return This;
   end Create;

   procedure Initialize (This : in out ABHashtable'Class) is
   begin
        Hashtable_Package.Initialize (This);
   end Initialize;

   function Create return ABHashtable_Access is
      This : constant ABHashtable_Access := new ABHashtable;
   begin
      ABHashtable_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.util.ABHashtable_Package;


