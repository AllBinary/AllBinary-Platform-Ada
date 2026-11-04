-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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

limited with org.allbinary.game.layer.LayerUtil_Package;
package org.allbinary.game.layer.LayerUtil_Package_References is
   type LayerUtil_Access is access all org.allbinary.game.layer.LayerUtil_Package.LayerUtil'Class;
   type LayerUtil_Access_Array is array (Natural range <>) of LayerUtil_Access;
   type LayerUtil_Access_Array_Access is access all LayerUtil_Access_Array;
   type LayerUtil_Access_Array_Access_Array is array (Natural range <>) of LayerUtil_Access_Array_Access;
   type LayerUtil_Access_Array_Access_Array_Access is access all LayerUtil_Access_Array_Access_Array;
end org.allbinary.game.layer.LayerUtil_Package_References;

with org.allbinary.game.layer.LayerUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.layer.LayerUtil_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerUtil_Access is org.allbinary.game.layer.LayerUtil_Package_References.LayerUtil_Access;
   function "=" (Left, Right : LayerUtil_Access) return Boolean renames org.allbinary.game.layer.LayerUtil_Package_References."=";
   subtype LayerUtil_Access_Array is org.allbinary.game.layer.LayerUtil_Package_References.LayerUtil_Access_Array;
   function "=" (Left, Right : LayerUtil_Access_Array) return Boolean renames org.allbinary.game.layer.LayerUtil_Package_References."=";
   subtype LayerUtil_Access_Array_Access is org.allbinary.game.layer.LayerUtil_Package_References.LayerUtil_Access_Array_Access;
   function "=" (Left, Right : LayerUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerUtil_Package_References."=";
   subtype LayerUtil_Access_Array_Access_Array is org.allbinary.game.layer.LayerUtil_Package_References.LayerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LayerUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.LayerUtil_Package_References."=";
   subtype LayerUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerUtil_Package_References.LayerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerUtil_Package_References."=";

   type LayerUtil is new Java_Object with null record;
   HASHTABLE : Unbounded_String;

   procedure Initialize (This : in out LayerUtil'Class);
   function Create return LayerUtil_Access;
   function toString (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return Unbounded_String;
   procedure toString (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.game.layer.LayerUtil_Package;


