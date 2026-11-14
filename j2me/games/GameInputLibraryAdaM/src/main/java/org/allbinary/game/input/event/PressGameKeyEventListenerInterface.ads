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
limited with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;
package org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References is
   type PressGameKeyEventListenerInterface_Access is access all org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package.PressGameKeyEventListenerInterface'Class;
   type PressGameKeyEventListenerInterface_Access_Array is array (Natural range <>) of PressGameKeyEventListenerInterface_Access;
   type PressGameKeyEventListenerInterface_Access_Array_Access is access all PressGameKeyEventListenerInterface_Access_Array;
   type PressGameKeyEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of PressGameKeyEventListenerInterface_Access_Array_Access;
   type PressGameKeyEventListenerInterface_Access_Array_Access_Array_Access is access all PressGameKeyEventListenerInterface_Access_Array_Access_Array;
   type PressGameKeyEventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PressGameKeyEventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PressGameKeyEventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PressGameKeyEventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PressGameKeyEventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PressGameKeyEventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in PressGameKeyEventListenerInterface_Access_Array_Object'Class then PressGameKeyEventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PressGameKeyEventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PressGameKeyEventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PressGameKeyEventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PressGameKeyEventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PressGameKeyEventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PressGameKeyEventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PressGameKeyEventListenerInterface_Access_Array_Access_Array_Object'Class then PressGameKeyEventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References;

with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;

package org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PressGameKeyEventListenerInterface is interface and EventListenerInterface;
   subtype PressGameKeyEventListenerInterface_Access is org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References.PressGameKeyEventListenerInterface_Access;
   function "=" (Left, Right : PressGameKeyEventListenerInterface_Access) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References."=";
   subtype PressGameKeyEventListenerInterface_Access_Array is org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References.PressGameKeyEventListenerInterface_Access_Array;
   function "=" (Left, Right : PressGameKeyEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References."=";
   subtype PressGameKeyEventListenerInterface_Access_Array_Access is org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References.PressGameKeyEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : PressGameKeyEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References."=";
   function Java_Box (Value : PressGameKeyEventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_PressGameKeyEventListenerInterface_Access_Array (Value : access Java_Object'Class) return PressGameKeyEventListenerInterface_Access_Array_Access renames org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References.Java_Unbox_PressGameKeyEventListenerInterface_Access_Array;
   subtype PressGameKeyEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References.PressGameKeyEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PressGameKeyEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References."=";
   subtype PressGameKeyEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References.PressGameKeyEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PressGameKeyEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References."=";
   function Java_Box (Value : PressGameKeyEventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_PressGameKeyEventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PressGameKeyEventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package_References.Java_Unbox_PressGameKeyEventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PressGameKeyEventListenerInterface (Value : PressGameKeyEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onPressGameKeyEvent (This : in out PressGameKeyEventListenerInterface; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;

end org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;


