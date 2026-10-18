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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.event.ScrollMapEvent_Package; use org.allbinary.layer.event.ScrollMapEvent_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;

package org.allbinary.game.input.ScrollMapPlayerGameInput_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package ScrollMapEvent_Package renames Standard.org.allbinary.layer.event.ScrollMapEvent_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

   type ScrollMapPlayerGameInput is tagged;
   type ScrollMapPlayerGameInput_Access is access all ScrollMapPlayerGameInput'Class;
   type ScrollMapPlayerGameInput_Access_Array is array (Natural range <>) of ScrollMapPlayerGameInput_Access;
   type ScrollMapPlayerGameInput_Access_Array_Access is access all ScrollMapPlayerGameInput_Access_Array;
   type ScrollMapPlayerGameInput_Access_Array_Access_Array is array (Natural range <>) of ScrollMapPlayerGameInput_Access_Array_Access;
   type ScrollMapPlayerGameInput_Access_Array_Access_Array_Access is access all ScrollMapPlayerGameInput_Access_Array_Access_Array;

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


