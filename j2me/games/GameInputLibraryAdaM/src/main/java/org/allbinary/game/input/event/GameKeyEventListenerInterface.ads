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
limited with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
package org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References is
   type GameKeyEventListenerInterface_Access is access all org.allbinary.game.input.event.GameKeyEventListenerInterface_Package.GameKeyEventListenerInterface'Class;
   type GameKeyEventListenerInterface_Access_Array is array (Natural range <>) of GameKeyEventListenerInterface_Access;
   type GameKeyEventListenerInterface_Access_Array_Access is access all GameKeyEventListenerInterface_Access_Array;
   type GameKeyEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of GameKeyEventListenerInterface_Access_Array_Access;
   type GameKeyEventListenerInterface_Access_Array_Access_Array_Access is access all GameKeyEventListenerInterface_Access_Array_Access_Array;
   type GameKeyEventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyEventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyEventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyEventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyEventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyEventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in GameKeyEventListenerInterface_Access_Array_Object'Class then GameKeyEventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GameKeyEventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyEventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyEventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyEventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyEventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyEventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameKeyEventListenerInterface_Access_Array_Access_Array_Object'Class then GameKeyEventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References;

with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;

package org.allbinary.game.input.event.GameKeyEventListenerInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type GameKeyEventListenerInterface is interface and DownGameKeyEventListenerInterface and UpGameKeyEventListenerInterface and PressGameKeyEventListenerInterface;
   subtype GameKeyEventListenerInterface_Access is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   subtype GameKeyEventListenerInterface_Access_Array is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access_Array;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   subtype GameKeyEventListenerInterface_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   function Java_Box (Value : GameKeyEventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_GameKeyEventListenerInterface_Access_Array (Value : access Java_Object'Class) return GameKeyEventListenerInterface_Access_Array_Access renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.Java_Unbox_GameKeyEventListenerInterface_Access_Array;
   subtype GameKeyEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   subtype GameKeyEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   function Java_Box (Value : GameKeyEventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_GameKeyEventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GameKeyEventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.Java_Unbox_GameKeyEventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GameKeyEventListenerInterface (Value : GameKeyEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;


