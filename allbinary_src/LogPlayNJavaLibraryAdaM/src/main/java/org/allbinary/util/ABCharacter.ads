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

limited with org.allbinary.util.ABCharacter_Package;
package org.allbinary.util.ABCharacter_Package_References is
   type ABCharacter_Access is access all org.allbinary.util.ABCharacter_Package.ABCharacter'Class;
   type ABCharacter_Access_Array is array (Natural range <>) of ABCharacter_Access;
   type ABCharacter_Access_Array_Access is access all ABCharacter_Access_Array;
   type ABCharacter_Access_Array_Access_Array is array (Natural range <>) of ABCharacter_Access_Array_Access;
   type ABCharacter_Access_Array_Access_Array_Access is access all ABCharacter_Access_Array_Access_Array;
end org.allbinary.util.ABCharacter_Package_References;

with org.allbinary.util.ABCharacter_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.util.ABCharacter_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABCharacter_Access is org.allbinary.util.ABCharacter_Package_References.ABCharacter_Access;
   function "=" (Left, Right : ABCharacter_Access) return Boolean renames org.allbinary.util.ABCharacter_Package_References."=";
   subtype ABCharacter_Access_Array is org.allbinary.util.ABCharacter_Package_References.ABCharacter_Access_Array;
   function "=" (Left, Right : ABCharacter_Access_Array) return Boolean renames org.allbinary.util.ABCharacter_Package_References."=";
   subtype ABCharacter_Access_Array_Access is org.allbinary.util.ABCharacter_Package_References.ABCharacter_Access_Array_Access;
   function "=" (Left, Right : ABCharacter_Access_Array_Access) return Boolean renames org.allbinary.util.ABCharacter_Package_References."=";
   subtype ABCharacter_Access_Array_Access_Array is org.allbinary.util.ABCharacter_Package_References.ABCharacter_Access_Array_Access_Array;
   function "=" (Left, Right : ABCharacter_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABCharacter_Package_References."=";
   subtype ABCharacter_Access_Array_Access_Array_Access is org.allbinary.util.ABCharacter_Package_References.ABCharacter_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCharacter_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABCharacter_Package_References."=";

   type ABCharacter is new Java_Object with null record;

   procedure Initialize (This : in out ABCharacter'Class);
   function Create return ABCharacter_Access;
   function toString (ch : Character) return Unbounded_String;
   procedure toString (ch : Character);

end org.allbinary.util.ABCharacter_Package;


