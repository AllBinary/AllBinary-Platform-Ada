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


with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.ABStack_Package; use org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABStack_Package_References;
with org.allbinary.util.ABVector_Package; use org.allbinary.util.ABVector_Package;
with org.allbinary.util.ABVector_Package_References;

package body org.allbinary.logic.StdUtil_Package is

   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABStack_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access;
   function "=" (Left, Right : ABStack_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array;
   function "=" (Left, Right : ABStack_Access_Array) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access;
   function "=" (Left, Right : ABStack_Access_Array_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array;
   function "=" (Left, Right : ABStack_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABStack_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABVector_Access is org.allbinary.util.ABVector_Package_References.ABVector_Access;
   function "=" (Left, Right : ABVector_Access) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   subtype ABVector_Access_Array is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array;
   function "=" (Left, Right : ABVector_Access_Array) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   subtype ABVector_Access_Array_Access is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array_Access;
   function "=" (Left, Right : ABVector_Access_Array_Access) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   subtype ABVector_Access_Array_Access_Array is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array_Access_Array;
   function "=" (Left, Right : ABVector_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   subtype ABVector_Access_Array_Access_Array_Access is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABVector_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   procedure Initialize_Fields (This : in out StdUtil'Class) is
   begin
      null;
      This.EMPTY_VECTOR := StdUtil'Class (This).createVector;
      This.NULL_TABLE := StdUtil'Class (This).createHashtable;
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
        return StdUtil_Access (StdUtil_Package.instance);
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


