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


package body org.allbinary.logic.StdUtil_Package is

   procedure Initialize_Fields (This : in out StdUtil'Class) is
   begin
      null;
      This.EMPTY_VECTOR := This.createVector;
      This.NULL_TABLE := This.createHashtable;
   end Initialize_Fields;

   procedure Initialize (This : in out StdUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return StdUtil_Access is
      This : constant StdUtil_Access := new StdUtil;
   begin
      StdUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return StdUtil_Access is
   begin
        return StdUtil_Package.instance;
   end getInstance;

   function createStack (This : in out StdUtil) return ABStack_Access is
   begin
        return ABStack_Package.Create;
   end createStack;

   function createVector (This : in out StdUtil) return ABVector_Access is
   begin
        return ABVector_Package.Create;
   end createVector;

   function createHashtable (This : in out StdUtil) return ABHashtable_Access is
   begin
        return ABHashtable_Package.Create;
   end createHashtable;

begin
   null;
   instance := StdUtil_Package.Create;

end org.allbinary.logic.StdUtil_Package;


