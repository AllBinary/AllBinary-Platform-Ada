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
limited with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
package org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References is
   type GameNotificationEvent_Access is access all org.allbinary.game.layer.hud.event.GameNotificationEvent_Package.GameNotificationEvent'Class;
   type GameNotificationEvent_Access_Array is array (Natural range <>) of GameNotificationEvent_Access;
   type GameNotificationEvent_Access_Array_Access is access all GameNotificationEvent_Access_Array;
   type GameNotificationEvent_Access_Array_Access_Array is array (Natural range <>) of GameNotificationEvent_Access_Array_Access;
   type GameNotificationEvent_Access_Array_Access_Array_Access is access all GameNotificationEvent_Access_Array_Access_Array;
   type GameNotificationEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameNotificationEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : GameNotificationEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameNotificationEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameNotificationEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameNotificationEvent_Access_Array_Access is (if Value /= null and then Value.all in GameNotificationEvent_Access_Array_Object'Class then GameNotificationEvent_Access_Array_Object'Class (Value.all).Value else null);
   type GameNotificationEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameNotificationEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameNotificationEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameNotificationEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameNotificationEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameNotificationEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameNotificationEvent_Access_Array_Access_Array_Object'Class then GameNotificationEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References;

with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.layer.hud.event.GameNotificationEvent_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameNotificationEvent_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access;
   function "=" (Left, Right : GameNotificationEvent_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array;
   function "=" (Left, Right : GameNotificationEvent_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access;
   function "=" (Left, Right : GameNotificationEvent_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   function Java_Box (Value : GameNotificationEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.Java_Box;
   function Java_Unbox_GameNotificationEvent_Access_Array (Value : access Java_Object'Class) return GameNotificationEvent_Access_Array_Access renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.Java_Unbox_GameNotificationEvent_Access_Array;
   subtype GameNotificationEvent_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   function Java_Box (Value : GameNotificationEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.Java_Box;
   function Java_Unbox_GameNotificationEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return GameNotificationEvent_Access_Array_Access_Array_Access renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.Java_Unbox_GameNotificationEvent_Access_Array_Access_Array;

   type GameNotificationEvent is new AllBinaryEventObject with record
      string_Id : Unbounded_String;
      seconds : Integer;
      basicColor : BasicColor_Access;
      removeable : Boolean;
   end record;

   procedure Initialize (This : in out GameNotificationEvent'Class; anyType_Param : access Java_Object'Class; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; permanent : Boolean);
   function Create (anyType_Param : access Java_Object'Class; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; permanent : Boolean) return GameNotificationEvent_Access;
   function getString (This : in out GameNotificationEvent) return Unbounded_String;
   function getSeconds (This : in out GameNotificationEvent) return Integer;
   function getBasicColorP (This : in out GameNotificationEvent) return BasicColor_Access;
   function getPermanent (This : in out GameNotificationEvent) return Boolean;
   procedure setString (This : in out GameNotificationEvent; string_Id : Unbounded_String);
   procedure setBasicColorP (This : in out GameNotificationEvent; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;


