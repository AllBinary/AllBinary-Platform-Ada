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
limited with org.allbinary.game.input.ScrollMapPlayerGameInput_Package;
package org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References is
   type ScrollMapPlayerGameInput_Access is access all org.allbinary.game.input.ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class;
   type ScrollMapPlayerGameInput_Access_Array is array (Natural range <>) of ScrollMapPlayerGameInput_Access;
   type ScrollMapPlayerGameInput_Access_Array_Access is access all ScrollMapPlayerGameInput_Access_Array;
   type ScrollMapPlayerGameInput_Access_Array_Access_Array is array (Natural range <>) of ScrollMapPlayerGameInput_Access_Array_Access;
   type ScrollMapPlayerGameInput_Access_Array_Access_Array_Access is access all ScrollMapPlayerGameInput_Access_Array_Access_Array;
   type ScrollMapPlayerGameInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollMapPlayerGameInput_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollMapPlayerGameInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollMapPlayerGameInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollMapPlayerGameInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollMapPlayerGameInput_Access_Array_Access is (if Value /= null and then Value.all in ScrollMapPlayerGameInput_Access_Array_Object'Class then ScrollMapPlayerGameInput_Access_Array_Object'Class (Value.all).Value else null);
   type ScrollMapPlayerGameInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollMapPlayerGameInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollMapPlayerGameInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollMapPlayerGameInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollMapPlayerGameInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollMapPlayerGameInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScrollMapPlayerGameInput_Access_Array_Access_Array_Object'Class then ScrollMapPlayerGameInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References;

with org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.layer.event.ScrollMapEvent_Package;
with org.allbinary.layer.event.ScrollMapEvent_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
limited with org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package_References;

package org.allbinary.game.input.ScrollMapPlayerGameInput_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package ScrollMapEvent_Package renames Standard.org.allbinary.layer.event.ScrollMapEvent_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package Reference_Types is
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
   subtype ScrollMapEvent_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access;
   use type ScrollMapEvent_Access;
   subtype ScrollMapEvent_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array;
   use type ScrollMapEvent_Access_Array;
   subtype ScrollMapEvent_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access;
   use type ScrollMapEvent_Access_Array_Access;
   subtype ScrollMapEvent_Access_Array_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array;
   use type ScrollMapEvent_Access_Array_Access_Array;
   subtype ScrollMapEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array_Access;
   use type ScrollMapEvent_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype GameInputProcessor_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access;
   use type GameInputProcessor_Access;
   subtype GameInputProcessor_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array;
   use type GameInputProcessor_Access_Array;
   subtype GameInputProcessor_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access;
   subtype GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array;
   use type GameInputProcessor_Access_Array_Access_Array;
   subtype GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScrollMapPlayerGameInput_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   subtype ScrollMapPlayerGameInput_Access_Array is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   subtype ScrollMapPlayerGameInput_Access_Array_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   function Java_Box (Value : ScrollMapPlayerGameInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.Java_Box;
   function Java_Unbox_ScrollMapPlayerGameInput_Access_Array (Value : access Java_Object'Class) return ScrollMapPlayerGameInput_Access_Array_Access renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.Java_Unbox_ScrollMapPlayerGameInput_Access_Array;
   subtype ScrollMapPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   subtype ScrollMapPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   function Java_Box (Value : ScrollMapPlayerGameInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.Java_Box;
   function Java_Unbox_ScrollMapPlayerGameInput_Access_Array_Access_Array (Value : access Java_Object'Class) return ScrollMapPlayerGameInput_Access_Array_Access_Array_Access renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.Java_Unbox_ScrollMapPlayerGameInput_Access_Array_Access_Array;

   type ScrollMapPlayerGameInput is new PlayerGameInput with record
      inputProcessorArray : GameInputProcessor_Access_Array_Access;
      border : Integer;
      inputList : BasicArrayList_Access;
      isSingleKeyProcessing : Boolean;
      geographicMapInterface : BasicGeographicMap_Access;
      maxBottom : Integer;
      maxRight : Integer;
      scrollMapEvent : ScrollMapEvent_Access;
   end record;

   procedure Initialize (This : in out ScrollMapPlayerGameInput'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer) return ScrollMapPlayerGameInput_Access;
   procedure move (This : in out ScrollMapPlayerGameInput; dx : Integer; dy : Integer);
   procedure init (This : in out ScrollMapPlayerGameInput);
   procedure scrollMiddleX (This : in out ScrollMapPlayerGameInput);
   procedure scrollY (This : in out ScrollMapPlayerGameInput; anchor : Integer);
   procedure up (This : in out ScrollMapPlayerGameInput);
   procedure down (This : in out ScrollMapPlayerGameInput);
   procedure right (This : in out ScrollMapPlayerGameInput);
   procedure left (This : in out ScrollMapPlayerGameInput);
   procedure initInputProcessors (This : in out ScrollMapPlayerGameInput);
   procedure processInputKey (This : in out ScrollMapPlayerGameInput; key : Integer);
   procedure processInput (This : in out ScrollMapPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getSpecialHeight (This : in out ScrollMapPlayerGameInput) return Integer;
   function getSpecialWidth (This : in out ScrollMapPlayerGameInput) return Integer;
   function keepOnMapMaxY (This : in out ScrollMapPlayerGameInput; newY : Integer) return Boolean;
   procedure keepOnMapMaxY (This : in out ScrollMapPlayerGameInput; newY : Integer);
   function keepOnMapMinY (This : in out ScrollMapPlayerGameInput; newY : Integer) return Boolean;
   procedure keepOnMapMinY (This : in out ScrollMapPlayerGameInput; newY : Integer);
   function keepOnMapMaxX (This : in out ScrollMapPlayerGameInput; newX : Integer) return Boolean;
   procedure keepOnMapMaxX (This : in out ScrollMapPlayerGameInput; newX : Integer);
   function keepOnMapMinX (This : in out ScrollMapPlayerGameInput; newX : Integer) return Boolean;
   procedure keepOnMapMinX (This : in out ScrollMapPlayerGameInput; newX : Integer);

end org.allbinary.game.input.ScrollMapPlayerGameInput_Package;


