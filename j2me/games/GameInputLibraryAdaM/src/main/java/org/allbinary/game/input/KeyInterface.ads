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

with AllBinary_Java;
limited with org.allbinary.game.input.KeyInterface_Package;
package org.allbinary.game.input.KeyInterface_Package_References is
   type KeyInterface_Access is access all org.allbinary.game.input.KeyInterface_Package.KeyInterface'Class;
   type KeyInterface_Access_Array is array (Natural range <>) of KeyInterface_Access;
   type KeyInterface_Access_Array_Access is access all KeyInterface_Access_Array;
   type KeyInterface_Access_Array_Access_Array is array (Natural range <>) of KeyInterface_Access_Array_Access;
   type KeyInterface_Access_Array_Access_Array_Access is access all KeyInterface_Access_Array_Access_Array;
   type KeyInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyInterface_Access_Array_Access is (if Value /= null and then Value.all in KeyInterface_Access_Array_Object'Class then KeyInterface_Access_Array_Object'Class (Value.all).Value else null);
   type KeyInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeyInterface_Access_Array_Access_Array_Object'Class then KeyInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.KeyInterface_Package_References;

with org.allbinary.game.input.KeyInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.input.KeyInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type KeyInterface is interface;
   subtype KeyInterface_Access is org.allbinary.game.input.KeyInterface_Package_References.KeyInterface_Access;
   function "=" (Left, Right : KeyInterface_Access) return Boolean renames org.allbinary.game.input.KeyInterface_Package_References."=";
   subtype KeyInterface_Access_Array is org.allbinary.game.input.KeyInterface_Package_References.KeyInterface_Access_Array;
   function "=" (Left, Right : KeyInterface_Access_Array) return Boolean renames org.allbinary.game.input.KeyInterface_Package_References."=";
   subtype KeyInterface_Access_Array_Access is org.allbinary.game.input.KeyInterface_Package_References.KeyInterface_Access_Array_Access;
   function "=" (Left, Right : KeyInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.KeyInterface_Package_References."=";
   function Java_Box (Value : KeyInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.KeyInterface_Package_References.Java_Box;
   function Java_Unbox_KeyInterface_Access_Array (Value : access Java_Object'Class) return KeyInterface_Access_Array_Access renames org.allbinary.game.input.KeyInterface_Package_References.Java_Unbox_KeyInterface_Access_Array;
   subtype KeyInterface_Access_Array_Access_Array is org.allbinary.game.input.KeyInterface_Package_References.KeyInterface_Access_Array_Access_Array;
   function "=" (Left, Right : KeyInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.KeyInterface_Package_References."=";
   subtype KeyInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.KeyInterface_Package_References.KeyInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.KeyInterface_Package_References."=";
   function Java_Box (Value : KeyInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.KeyInterface_Package_References.Java_Box;
   function Java_Unbox_KeyInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return KeyInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.KeyInterface_Package_References.Java_Unbox_KeyInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_KeyInterface (Value : KeyInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure keyPressed (This : in out KeyInterface; keyCode : Integer) is abstract;
   procedure keyReleased (This : in out KeyInterface; keyCode : Integer) is abstract;
   procedure keyPressedByDevice (This : in out KeyInterface; keyCode : Integer; deviceId : Integer) is abstract;
   procedure keyReleasedByDevice (This : in out KeyInterface; keyCode : Integer; deviceId : Integer) is abstract;

end org.allbinary.game.input.KeyInterface_Package;


