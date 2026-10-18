-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.game.input.form.BuildingRTSFormInput_Package; use org.allbinary.game.input.form.BuildingRTSFormInput_Package;

package org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type BuildingAdvancedRTSFormInput is tagged;
   type BuildingAdvancedRTSFormInput_Access is access all BuildingAdvancedRTSFormInput'Class;
   type BuildingAdvancedRTSFormInput_Access_Array is array (Natural range <>) of BuildingAdvancedRTSFormInput_Access;
   type BuildingAdvancedRTSFormInput_Access_Array_Access is access all BuildingAdvancedRTSFormInput_Access_Array;
   type BuildingAdvancedRTSFormInput_Access_Array_Access_Array is array (Natural range <>) of BuildingAdvancedRTSFormInput_Access_Array_Access;
   type BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access is access all BuildingAdvancedRTSFormInput_Access_Array_Access_Array;

   type BuildingAdvancedRTSFormInput is new BuildingRTSFormInput with record
      atLeastOneHouseGameNotificationEvent : GameNotificationEvent_Access;
      BUILD_BUILDING_RTS_LAYER_EVENT : RTSLayerEvent_Access;
   end record;

   procedure Initialize (This : in out BuildingAdvancedRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean);
   function Create (groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean) return BuildingAdvancedRTSFormInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out BuildingAdvancedRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   function isPositionBlocked (This : in out BuildingAdvancedRTSFormInput) return Boolean;
   function isBuildAttemptValid (This : in out BuildingAdvancedRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class) return Boolean;
   procedure isBuildAttemptValid (This : in out BuildingAdvancedRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure add (This : in out BuildingAdvancedRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class);

end org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package;


