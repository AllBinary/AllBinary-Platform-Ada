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

limited with org.allbinary.game.input.event.DownKeyEventListenerInterface_Package;
package org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References is
   type DownKeyEventListenerInterface_Access is access all org.allbinary.game.input.event.DownKeyEventListenerInterface_Package.DownKeyEventListenerInterface'Class;
   type DownKeyEventListenerInterface_Access_Array is array (Natural range <>) of DownKeyEventListenerInterface_Access;
   type DownKeyEventListenerInterface_Access_Array_Access is access all DownKeyEventListenerInterface_Access_Array;
   type DownKeyEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of DownKeyEventListenerInterface_Access_Array_Access;
   type DownKeyEventListenerInterface_Access_Array_Access_Array_Access is access all DownKeyEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References;

with org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References;
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

package org.allbinary.game.input.event.DownKeyEventListenerInterface_Package is

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


   type DownKeyEventListenerInterface is interface and EventListenerInterface;
   subtype DownKeyEventListenerInterface_Access is org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References.DownKeyEventListenerInterface_Access;
   function "=" (Left, Right : DownKeyEventListenerInterface_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References."=";
   subtype DownKeyEventListenerInterface_Access_Array is org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References.DownKeyEventListenerInterface_Access_Array;
   function "=" (Left, Right : DownKeyEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References."=";
   subtype DownKeyEventListenerInterface_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References.DownKeyEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : DownKeyEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References."=";
   subtype DownKeyEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References.DownKeyEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DownKeyEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References."=";
   subtype DownKeyEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References.DownKeyEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownKeyEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_DownKeyEventListenerInterface (Value : DownKeyEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onDownKeyEvent (This : in out DownKeyEventListenerInterface; keyInteger_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure onDownKey (This : in out DownKeyEventListenerInterface; keyInteger : Integer) is abstract;

end org.allbinary.game.input.event.DownKeyEventListenerInterface_Package;


