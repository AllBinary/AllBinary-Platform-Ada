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
limited with org.allbinary.game.input.GameInput_Package;
package org.allbinary.game.input.GameInput_Package_References is
   type GameInput_Access is access all org.allbinary.game.input.GameInput_Package.GameInput'Class;
   type GameInput_Access_Array is array (Natural range <>) of GameInput_Access;
   type GameInput_Access_Array_Access is access all GameInput_Access_Array;
   type GameInput_Access_Array_Access_Array is array (Natural range <>) of GameInput_Access_Array_Access;
   type GameInput_Access_Array_Access_Array_Access is access all GameInput_Access_Array_Access_Array;
   type GameInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInput_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInput_Access_Array_Access is (if Value /= null and then Value.all in GameInput_Access_Array_Object'Class then GameInput_Access_Array_Object'Class (Value.all).Value else null);
   type GameInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInput_Access_Array_Access_Array_Object'Class then GameInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.GameInput_Package_References;

with org.allbinary.game.input.GameInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.input.GameInput_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   function "=" (Left, Right : GameInput_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   function Java_Box (Value : GameInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameInput_Package_References.Java_Box;
   function Java_Unbox_GameInput_Access_Array (Value : access Java_Object'Class) return GameInput_Access_Array_Access renames org.allbinary.game.input.GameInput_Package_References.Java_Unbox_GameInput_Access_Array;
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   function Java_Box (Value : GameInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameInput_Package_References.Java_Box;
   function Java_Unbox_GameInput_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInput_Access_Array_Access_Array_Access renames org.allbinary.game.input.GameInput_Package_References.Java_Unbox_GameInput_Access_Array_Access_Array;

   type GameInput is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      gameKeyEventList : BasicArrayList_Access;
      removalGameKeyEventList : BasicArrayList_Access;
      isRemoveDuplicateKeyPresses : Boolean;
   end record;

   procedure Initialize (This : in out GameInput'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; removalGameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; removalGameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class) return GameInput_Access;
   procedure add (This : in out GameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure addForRemoval (This : in out GameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   function isForRemoval (This : in out GameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) return Boolean;
   procedure isForRemoval (This : in out GameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure clear (This : in out GameInput);
   procedure removeNonAIInputGameKeyEvents (This : in out GameInput);
   procedure update (This : in out GameInput);
   function getRemovalGameKeyEventList (This : in out GameInput) return BasicArrayList_Access;
   function getGameKeyEventList (This : in out GameInput) return BasicArrayList_Access;

end org.allbinary.game.input.GameInput_Package;


