-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;

package org.allbinary.game.input.form.TechRTSFormInput_Package is

   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type TechRTSFormInput is tagged;
   type TechRTSFormInput_Access is access all TechRTSFormInput'Class;
   type TechRTSFormInput_Access_Array is array (Natural range <>) of TechRTSFormInput_Access;
   type TechRTSFormInput_Access_Array_Access is access all TechRTSFormInput_Access_Array;
   type TechRTSFormInput_Access_Array_Access_Array is array (Natural range <>) of TechRTSFormInput_Access_Array_Access;
   type TechRTSFormInput_Access_Array_Access_Array_Access is access all TechRTSFormInput_Access_Array_Access_Array;

   type TechRTSFormInput is new RTSFormInput with record
      EVENT : AllBinaryEventObject_Access;
      noMoneyGameNotificationEvent : GameNotificationEvent_Access;
   end record;

   procedure Initialize (This : in out TechRTSFormInput'Class; groupInterface : Group_Access_Array_Access);
   function Create (groupInterface : Group_Access_Array_Access) return TechRTSFormInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out TechRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure processGameSpecific (This : in out TechRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; itemIndex : Integer);

end org.allbinary.game.input.form.TechRTSFormInput_Package;


