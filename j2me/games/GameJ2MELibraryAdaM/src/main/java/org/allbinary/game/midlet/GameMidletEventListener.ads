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
limited with org.allbinary.game.midlet.GameMidletEventListener_Package;
package org.allbinary.game.midlet.GameMidletEventListener_Package_References is
   type GameMidletEventListener_Access is access all org.allbinary.game.midlet.GameMidletEventListener_Package.GameMidletEventListener'Class;
   type GameMidletEventListener_Access_Array is array (Natural range <>) of GameMidletEventListener_Access;
   type GameMidletEventListener_Access_Array_Access is access all GameMidletEventListener_Access_Array;
   type GameMidletEventListener_Access_Array_Access_Array is array (Natural range <>) of GameMidletEventListener_Access_Array_Access;
   type GameMidletEventListener_Access_Array_Access_Array_Access is access all GameMidletEventListener_Access_Array_Access_Array;
   type GameMidletEventListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameMidletEventListener_Access_Array_Access;
   end record;
   function Java_Box (Value : GameMidletEventListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameMidletEventListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameMidletEventListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameMidletEventListener_Access_Array_Access is (if Value /= null and then Value.all in GameMidletEventListener_Access_Array_Object'Class then GameMidletEventListener_Access_Array_Object'Class (Value.all).Value else null);
   type GameMidletEventListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameMidletEventListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameMidletEventListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameMidletEventListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameMidletEventListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameMidletEventListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameMidletEventListener_Access_Array_Access_Array_Object'Class then GameMidletEventListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.midlet.GameMidletEventListener_Package_References;

with org.allbinary.game.midlet.GameMidletEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.game.midlet.GameMidletEventListener_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GameMidletEventListener is interface and EventListenerInterface;
   subtype GameMidletEventListener_Access is org.allbinary.game.midlet.GameMidletEventListener_Package_References.GameMidletEventListener_Access;
   function "=" (Left, Right : GameMidletEventListener_Access) return Boolean renames org.allbinary.game.midlet.GameMidletEventListener_Package_References."=";
   subtype GameMidletEventListener_Access_Array is org.allbinary.game.midlet.GameMidletEventListener_Package_References.GameMidletEventListener_Access_Array;
   function "=" (Left, Right : GameMidletEventListener_Access_Array) return Boolean renames org.allbinary.game.midlet.GameMidletEventListener_Package_References."=";
   subtype GameMidletEventListener_Access_Array_Access is org.allbinary.game.midlet.GameMidletEventListener_Package_References.GameMidletEventListener_Access_Array_Access;
   function "=" (Left, Right : GameMidletEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.GameMidletEventListener_Package_References."=";
   function Java_Box (Value : GameMidletEventListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.GameMidletEventListener_Package_References.Java_Box;
   function Java_Unbox_GameMidletEventListener_Access_Array (Value : access Java_Object'Class) return GameMidletEventListener_Access_Array_Access renames org.allbinary.game.midlet.GameMidletEventListener_Package_References.Java_Unbox_GameMidletEventListener_Access_Array;
   subtype GameMidletEventListener_Access_Array_Access_Array is org.allbinary.game.midlet.GameMidletEventListener_Package_References.GameMidletEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : GameMidletEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.GameMidletEventListener_Package_References."=";
   subtype GameMidletEventListener_Access_Array_Access_Array_Access is org.allbinary.game.midlet.GameMidletEventListener_Package_References.GameMidletEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameMidletEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.GameMidletEventListener_Package_References."=";
   function Java_Box (Value : GameMidletEventListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.GameMidletEventListener_Package_References.Java_Box;
   function Java_Unbox_GameMidletEventListener_Access_Array_Access_Array (Value : access Java_Object'Class) return GameMidletEventListener_Access_Array_Access_Array_Access renames org.allbinary.game.midlet.GameMidletEventListener_Package_References.Java_Unbox_GameMidletEventListener_Access_Array_Access_Array;
   function Java_Object_Access_From_GameMidletEventListener (Value : GameMidletEventListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onGameEnd (This : in out GameMidletEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is abstract;

end org.allbinary.game.midlet.GameMidletEventListener_Package;


