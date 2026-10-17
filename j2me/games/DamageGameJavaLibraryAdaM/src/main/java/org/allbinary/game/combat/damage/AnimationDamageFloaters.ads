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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;

package org.allbinary.game.combat.damage.AnimationDamageFloaters_Package is

   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type AnimationDamageFloaters is tagged;
   type AnimationDamageFloaters_Access is access all AnimationDamageFloaters'Class;
   type AnimationDamageFloaters_Access_Array is array (Natural range <>) of AnimationDamageFloaters_Access;
   type AnimationDamageFloaters_Access_Array_Access is access all AnimationDamageFloaters_Access_Array;

   type AnimationDamageFloaters is new DamageFloaters with record
      logUtil : LogUtil_Access;
      layerInterface : AllBinaryLayer_Access;
      animationInterfaceArray : IndexedAnimation_Access_Array_Access;
      circularIndexUtil : CircularIndexUtil_Access;
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AnimationDamageFloaters'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; dx : Integer; dy : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; dx : Integer; dy : Integer) return AnimationDamageFloaters_Access;
   procedure add (This : in out AnimationDamageFloaters; damage : Integer);
   procedure paint (This : in out AnimationDamageFloaters; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.combat.damage.AnimationDamageFloaters_Package;


