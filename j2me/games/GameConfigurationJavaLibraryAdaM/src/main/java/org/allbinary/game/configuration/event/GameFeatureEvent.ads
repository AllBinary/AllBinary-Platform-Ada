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
limited with org.allbinary.game.configuration.event.GameFeatureEvent_Package;
package org.allbinary.game.configuration.event.GameFeatureEvent_Package_References is
   type GameFeatureEvent_Access is access all org.allbinary.game.configuration.event.GameFeatureEvent_Package.GameFeatureEvent'Class;
   type GameFeatureEvent_Access_Array is array (Natural range <>) of GameFeatureEvent_Access;
   type GameFeatureEvent_Access_Array_Access is access all GameFeatureEvent_Access_Array;
   type GameFeatureEvent_Access_Array_Access_Array is array (Natural range <>) of GameFeatureEvent_Access_Array_Access;
   type GameFeatureEvent_Access_Array_Access_Array_Access is access all GameFeatureEvent_Access_Array_Access_Array;
   type GameFeatureEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureEvent_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureEvent_Access_Array_Object'Class then GameFeatureEvent_Access_Array_Object'Class (Value.all).Value else null);
   type GameFeatureEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureEvent_Access_Array_Access_Array_Object'Class then GameFeatureEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.event.GameFeatureEvent_Package_References;

with org.allbinary.game.configuration.event.GameFeatureEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.configuration.event.GameFeatureEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameFeatureEvent_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access;
   function "=" (Left, Right : GameFeatureEvent_Access) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   subtype GameFeatureEvent_Access_Array is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array;
   function "=" (Left, Right : GameFeatureEvent_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   subtype GameFeatureEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access;
   function "=" (Left, Right : GameFeatureEvent_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   function Java_Box (Value : GameFeatureEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.Java_Box;
   function Java_Unbox_GameFeatureEvent_Access_Array (Value : access Java_Object'Class) return GameFeatureEvent_Access_Array_Access renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.Java_Unbox_GameFeatureEvent_Access_Array;
   subtype GameFeatureEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   subtype GameFeatureEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   function Java_Box (Value : GameFeatureEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.Java_Box;
   function Java_Unbox_GameFeatureEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return GameFeatureEvent_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.Java_Unbox_GameFeatureEvent_Access_Array_Access_Array;

   type GameFeatureEvent is new AllBinaryEventObject with record
      whatChanged : Unbounded_String;
   end record;

   procedure Initialize (This : in out GameFeatureEvent'Class; anyType_Param : access Java_Object'Class; whatChanged : Unbounded_String);
   function Create (anyType_Param : access Java_Object'Class; whatChanged : Unbounded_String) return GameFeatureEvent_Access;
   function getWhatChanged (This : in out GameFeatureEvent) return Unbounded_String;
   function getGameOption (This : in out GameFeatureEvent) return Java_Object_Access;

end org.allbinary.game.configuration.event.GameFeatureEvent_Package;


