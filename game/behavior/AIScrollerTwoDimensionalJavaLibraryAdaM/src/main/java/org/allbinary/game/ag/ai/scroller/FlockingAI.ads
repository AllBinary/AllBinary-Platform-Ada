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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.layer.identification.GroupLayerManagerListener_Package; use org.allbinary.game.layer.identification.GroupLayerManagerListener_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package; use org.allbinary.game.layer.weapon.WeaponLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package; use org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package;

package org.allbinary.game.ag.ai.scroller.FlockingAI_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package GroupLayerManagerListener_Package renames Standard.org.allbinary.game.layer.identification.GroupLayerManagerListener_Package;
   package WeaponLayer_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type FlockingAI is tagged;
   type FlockingAI_Access is access all FlockingAI'Class;
   type FlockingAI_Access_Array is array (Natural range <>) of FlockingAI_Access;
   type FlockingAI_Access_Array_Access is access all FlockingAI_Access_Array;

   type FlockingAI is new BasicAI with record
      allowedDistance : Integer;
   end record;

   procedure Initialize (This : in out FlockingAI'Class; hashtable_Param : access ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class);
   function Create (hashtable_Param : access ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) return FlockingAI_Access;
   procedure processAI (This : in out FlockingAI; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class);
   function getXYDistance (This : in out FlockingAI; allBinaryLayer_Param : access AllBinaryLayer'Class) return Integer;
   procedure getXYDistance (This : in out FlockingAI; allBinaryLayer_Param : access AllBinaryLayer'Class);

end org.allbinary.game.ag.ai.scroller.FlockingAI_Package;


