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

limited with org.allbinary.logic.ABSystemWrapper_Package;
package org.allbinary.logic.ABSystemWrapper_Package_References is
   type ABSystemWrapper_Access is access all org.allbinary.logic.ABSystemWrapper_Package.ABSystemWrapper'Class;
   type ABSystemWrapper_Access_Array is array (Natural range <>) of ABSystemWrapper_Access;
   type ABSystemWrapper_Access_Array_Access is access all ABSystemWrapper_Access_Array;
   type ABSystemWrapper_Access_Array_Access_Array is array (Natural range <>) of ABSystemWrapper_Access_Array_Access;
   type ABSystemWrapper_Access_Array_Access_Array_Access is access all ABSystemWrapper_Access_Array_Access_Array;
end org.allbinary.logic.ABSystemWrapper_Package_References;

with org.allbinary.logic.ABSystemWrapper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.ABSystemWrapper_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABSystemWrapper_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access;
   function "=" (Left, Right : ABSystemWrapper_Access) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array;
   function "=" (Left, Right : ABSystemWrapper_Access_Array) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access;
   function "=" (Left, Right : ABSystemWrapper_Access_Array_Access) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array;
   function "=" (Left, Right : ABSystemWrapper_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABSystemWrapper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";

   type ABSystemWrapper is new Java_Object with null record;
   instance : ABSystemWrapper_Access;

   procedure Initialize (This : in out ABSystemWrapper'Class);
   function Create return ABSystemWrapper_Access;
   function getInstance return ABSystemWrapper_Access;
   procedure arraycopy (This : in out ABSystemWrapper; src_Param : access Java_Object'Class; srcPos : Integer; dest_Param : access Java_Object'Class; destPos : Integer; length : Integer);
   function currentTimeMillis (This : in out ABSystemWrapper) return Long_Long_Integer;

end org.allbinary.logic.ABSystemWrapper_Package;


