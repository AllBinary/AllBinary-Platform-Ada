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
limited with org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package;
package org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References is
   type ScrollMapUpGameInputProcessor_Access is access all org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package.ScrollMapUpGameInputProcessor'Class;
   type ScrollMapUpGameInputProcessor_Access_Array is array (Natural range <>) of ScrollMapUpGameInputProcessor_Access;
   type ScrollMapUpGameInputProcessor_Access_Array_Access is access all ScrollMapUpGameInputProcessor_Access_Array;
   type ScrollMapUpGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of ScrollMapUpGameInputProcessor_Access_Array_Access;
   type ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Access is access all ScrollMapUpGameInputProcessor_Access_Array_Access_Array;
   type ScrollMapUpGameInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollMapUpGameInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollMapUpGameInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollMapUpGameInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollMapUpGameInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollMapUpGameInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in ScrollMapUpGameInputProcessor_Access_Array_Object'Class then ScrollMapUpGameInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollMapUpGameInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Object'Class then ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References;

with org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.input.ScrollMapGameInputProcessor_Package; use org.allbinary.game.input.ScrollMapGameInputProcessor_Package;
limited with org.allbinary.game.input.ScrollMapPlayerGameInput_Package;
with org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References;

package org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
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
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype ScrollMapPlayerGameInput_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access;
   use type ScrollMapPlayerGameInput_Access;
   subtype ScrollMapPlayerGameInput_Access_Array is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array;
   use type ScrollMapPlayerGameInput_Access_Array;
   subtype ScrollMapPlayerGameInput_Access_Array_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access;
   use type ScrollMapPlayerGameInput_Access_Array_Access;
   subtype ScrollMapPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access_Array;
   use type ScrollMapPlayerGameInput_Access_Array_Access_Array;
   subtype ScrollMapPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access_Array_Access;
   use type ScrollMapPlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScrollMapUpGameInputProcessor_Access is org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References.ScrollMapUpGameInputProcessor_Access;
   function "=" (Left, Right : ScrollMapUpGameInputProcessor_Access) return Boolean renames org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References."=";
   subtype ScrollMapUpGameInputProcessor_Access_Array is org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References.ScrollMapUpGameInputProcessor_Access_Array;
   function "=" (Left, Right : ScrollMapUpGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References."=";
   subtype ScrollMapUpGameInputProcessor_Access_Array_Access is org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References.ScrollMapUpGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : ScrollMapUpGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References."=";
   function Java_Box (Value : ScrollMapUpGameInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_ScrollMapUpGameInputProcessor_Access_Array (Value : access Java_Object'Class) return ScrollMapUpGameInputProcessor_Access_Array_Access renames org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References.Java_Unbox_ScrollMapUpGameInputProcessor_Access_Array;
   subtype ScrollMapUpGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References.ScrollMapUpGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollMapUpGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References."=";
   subtype ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References.ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References."=";
   function Java_Box (Value : ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_ScrollMapUpGameInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return ScrollMapUpGameInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package_References.Java_Unbox_ScrollMapUpGameInputProcessor_Access_Array_Access_Array;

   type ScrollMapUpGameInputProcessor is new ScrollMapGameInputProcessor with null record;

   procedure Initialize (This : in out ScrollMapUpGameInputProcessor'Class; scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class);
   function Create (scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class) return ScrollMapUpGameInputProcessor_Access;
   procedure processEvent (This : in out ScrollMapUpGameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);

end org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package;


