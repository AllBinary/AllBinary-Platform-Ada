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
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.game.layer.special.SpecialGameInputInterface_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type SpecialGameInputInterface is interface and PaintableInterface;
   type SpecialGameInputInterface_Access is access all SpecialGameInputInterface'Class;
   type SpecialGameInputInterface_Access_Array is array (Natural range <>) of SpecialGameInputInterface_Access;
   type SpecialGameInputInterface_Access_Array_Access is access all SpecialGameInputInterface_Access_Array;
   procedure up (This : in out SpecialGameInputInterface) is abstract;
   procedure down (This : in out SpecialGameInputInterface) is abstract;
   procedure right (This : in out SpecialGameInputInterface) is abstract;
   procedure left (This : in out SpecialGameInputInterface) is abstract;
   procedure strafeLeft (This : in out SpecialGameInputInterface) is abstract;
   procedure strafeRight (This : in out SpecialGameInputInterface) is abstract;
   procedure fire (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special1 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special2 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special3 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special4 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special5 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;

end org.allbinary.game.layer.special.SpecialGameInputInterface_Package;


