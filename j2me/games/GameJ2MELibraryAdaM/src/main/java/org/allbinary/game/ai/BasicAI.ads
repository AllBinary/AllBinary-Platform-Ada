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
with org.allbinary.ai.ArtificialIntelligence_Package; use org.allbinary.ai.ArtificialIntelligence_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.ai.BasicAI_Package is

   package ArtificialIntelligence_Package renames Standard.org.allbinary.ai.ArtificialIntelligence_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BasicAI is tagged;
   type BasicAI_Access is access all BasicAI'Class;
   type BasicAI_Access_Array is array (Natural range <>) of BasicAI_Access;
   type BasicAI_Access_Array_Access is access all BasicAI_Access_Array;
   type BasicAI_Access_Array_Access_Array is array (Natural range <>) of BasicAI_Access_Array_Access;
   type BasicAI_Access_Array_Access_Array_Access is access all BasicAI_Access_Array_Access_Array;

   type BasicAI is new ArtificialIntelligence and GameKeyEventSourceInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      gameKeyEventFactory : GameKeyEventFactory_Access;
      ownerLayerInterface : AllBinaryLayer_Access;
      gameInput : GameInput_Access;
      lastKey : Integer;
   end record;
   AI_VISITOR : Integer;
   ID : Integer;

   procedure Initialize (This : in out BasicAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return BasicAI_Access;
   procedure processAI (This : in out BasicAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure processKeyAI (This : in out BasicAI; key : Integer);
   procedure setLastKey (This : in out BasicAI; lastKey : Integer);
   function getLastKey (This : in out BasicAI) return Integer;
   function getOwnerLayerInterface (This : in out BasicAI) return AllBinaryLayer_Access;
   function getGameInput (This : in out BasicAI) return GameInput_Access;
   function getName (This : in out BasicAI) return Unbounded_String;
   function toString (This : in out BasicAI) return Unbounded_String;
   function getSourceId (This : in out BasicAI) return Integer;

end org.allbinary.game.ai.BasicAI_Package;


