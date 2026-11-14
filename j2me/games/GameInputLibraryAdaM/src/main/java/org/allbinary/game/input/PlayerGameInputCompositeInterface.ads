--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
limited with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
package org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References is
   type PlayerGameInputCompositeInterface_Access is access all org.allbinary.game.input.PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class;
   type PlayerGameInputCompositeInterface_Access_Array is array (Natural range <>) of PlayerGameInputCompositeInterface_Access;
   type PlayerGameInputCompositeInterface_Access_Array_Access is access all PlayerGameInputCompositeInterface_Access_Array;
   type PlayerGameInputCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of PlayerGameInputCompositeInterface_Access_Array_Access;
   type PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is access all PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   type PlayerGameInputCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerGameInputCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerGameInputCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerGameInputCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerGameInputCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerGameInputCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in PlayerGameInputCompositeInterface_Access_Array_Object'Class then PlayerGameInputCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PlayerGameInputCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerGameInputCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerGameInputCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlayerGameInputCompositeInterface_Access_Array_Access_Array_Object'Class then PlayerGameInputCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References;

with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.GameInputInterface_Package; use org.allbinary.game.input.GameInputInterface_Package;
limited with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;

package org.allbinary.game.input.PlayerGameInputCompositeInterface_Package is

   package Reference_Types is
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   use type PlayerGameInput_Access;
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   use type PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   use type PlayerGameInput_Access_Array_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PlayerGameInputCompositeInterface is interface and GameInputInterface;
   subtype PlayerGameInputCompositeInterface_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   function Java_Box (Value : PlayerGameInputCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_PlayerGameInputCompositeInterface_Access_Array (Value : access Java_Object'Class) return PlayerGameInputCompositeInterface_Access_Array_Access renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.Java_Unbox_PlayerGameInputCompositeInterface_Access_Array;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   function Java_Box (Value : PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_PlayerGameInputCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.Java_Unbox_PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PlayerGameInputCompositeInterface (Value : PlayerGameInputCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPlayerGameInput (This : in out PlayerGameInputCompositeInterface) return PlayerGameInput_Access is abstract;

end org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;


