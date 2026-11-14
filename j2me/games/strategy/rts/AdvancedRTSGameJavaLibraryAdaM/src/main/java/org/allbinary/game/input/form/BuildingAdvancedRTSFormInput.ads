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

with AllBinary_Java;
limited with org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package;
package org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References is
   type BuildingAdvancedRTSFormInput_Access is access all org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package.BuildingAdvancedRTSFormInput'Class;
   type BuildingAdvancedRTSFormInput_Access_Array is array (Natural range <>) of BuildingAdvancedRTSFormInput_Access;
   type BuildingAdvancedRTSFormInput_Access_Array_Access is access all BuildingAdvancedRTSFormInput_Access_Array;
   type BuildingAdvancedRTSFormInput_Access_Array_Access_Array is array (Natural range <>) of BuildingAdvancedRTSFormInput_Access_Array_Access;
   type BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access is access all BuildingAdvancedRTSFormInput_Access_Array_Access_Array;
   type BuildingAdvancedRTSFormInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BuildingAdvancedRTSFormInput_Access_Array_Access;
   end record;
   function Java_Box (Value : BuildingAdvancedRTSFormInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BuildingAdvancedRTSFormInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BuildingAdvancedRTSFormInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BuildingAdvancedRTSFormInput_Access_Array_Access is (if Value /= null and then Value.all in BuildingAdvancedRTSFormInput_Access_Array_Object'Class then BuildingAdvancedRTSFormInput_Access_Array_Object'Class (Value.all).Value else null);
   type BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BuildingAdvancedRTSFormInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Object'Class then BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References;

with org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
limited with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package_References;
limited with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.input.form.BuildingRTSFormInput_Package; use org.allbinary.game.input.form.BuildingRTSFormInput_Package;

package org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   use type RTSLayer_Access;
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   use type RTSLayer_Access_Array;
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   use type RTSLayer_Access_Array_Access;
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   use type RTSLayer_Access_Array_Access_Array;
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   use type RTSLayer_Access_Array_Access_Array_Access;
   subtype RTSLayerEvent_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access;
   use type RTSLayerEvent_Access;
   subtype RTSLayerEvent_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array;
   use type RTSLayerEvent_Access_Array;
   subtype RTSLayerEvent_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access;
   use type RTSLayerEvent_Access_Array_Access;
   subtype RTSLayerEvent_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array;
   use type RTSLayerEvent_Access_Array_Access_Array;
   subtype RTSLayerEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array_Access;
   use type RTSLayerEvent_Access_Array_Access_Array_Access;
   subtype RTSPlayerLayerInterface_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access;
   use type RTSPlayerLayerInterface_Access;
   subtype RTSPlayerLayerInterface_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array;
   use type RTSPlayerLayerInterface_Access_Array;
   subtype RTSPlayerLayerInterface_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access;
   use type RTSPlayerLayerInterface_Access_Array_Access;
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array;
   use type RTSPlayerLayerInterface_Access_Array_Access_Array;
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   use type RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype GameNotificationEvent_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access;
   use type GameNotificationEvent_Access;
   subtype GameNotificationEvent_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array;
   use type GameNotificationEvent_Access_Array;
   subtype GameNotificationEvent_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access;
   use type GameNotificationEvent_Access_Array_Access;
   subtype GameNotificationEvent_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array;
   use type GameNotificationEvent_Access_Array_Access_Array;
   subtype GameNotificationEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array_Access;
   use type GameNotificationEvent_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BuildingAdvancedRTSFormInput_Access is org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References.BuildingAdvancedRTSFormInput_Access;
   function "=" (Left, Right : BuildingAdvancedRTSFormInput_Access) return Boolean renames org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References."=";
   subtype BuildingAdvancedRTSFormInput_Access_Array is org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References.BuildingAdvancedRTSFormInput_Access_Array;
   function "=" (Left, Right : BuildingAdvancedRTSFormInput_Access_Array) return Boolean renames org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References."=";
   subtype BuildingAdvancedRTSFormInput_Access_Array_Access is org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References.BuildingAdvancedRTSFormInput_Access_Array_Access;
   function "=" (Left, Right : BuildingAdvancedRTSFormInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References."=";
   function Java_Box (Value : BuildingAdvancedRTSFormInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References.Java_Box;
   function Java_Unbox_BuildingAdvancedRTSFormInput_Access_Array (Value : access Java_Object'Class) return BuildingAdvancedRTSFormInput_Access_Array_Access renames org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References.Java_Unbox_BuildingAdvancedRTSFormInput_Access_Array;
   subtype BuildingAdvancedRTSFormInput_Access_Array_Access_Array is org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References.BuildingAdvancedRTSFormInput_Access_Array_Access_Array;
   function "=" (Left, Right : BuildingAdvancedRTSFormInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References."=";
   subtype BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access is org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References.BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References."=";
   function Java_Box (Value : BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References.Java_Box;
   function Java_Unbox_BuildingAdvancedRTSFormInput_Access_Array_Access_Array (Value : access Java_Object'Class) return BuildingAdvancedRTSFormInput_Access_Array_Access_Array_Access renames org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package_References.Java_Unbox_BuildingAdvancedRTSFormInput_Access_Array_Access_Array;

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


