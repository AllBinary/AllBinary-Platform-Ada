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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorArrayIndexer_Package; use org.allbinary.graphics.color.BasicColorArrayIndexer_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.java.character_Id.CharArrayFactory_Package; use org.allbinary.logic.java.character_Id.CharArrayFactory_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;

package org.allbinary.game.combat.damage.PtsDamageFloaters_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorArrayIndexer_Package renames Standard.org.allbinary.graphics.color.BasicColorArrayIndexer_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package CharArrayFactory_Package renames Standard.org.allbinary.logic.java.character_Id.CharArrayFactory_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type PtsDamageFloaters is tagged;
   type PtsDamageFloaters_Access is access all PtsDamageFloaters'Class;
   type PtsDamageFloaters_Access_Array is array (Natural range <>) of PtsDamageFloaters_Access;
   type PtsDamageFloaters_Access_Array_Access is access all PtsDamageFloaters_Access_Array;

   type PtsDamageFloaters is new DamageFloaters with record
      basicSetColorUtil : BasicColorSetUtil_Access;
      layerInterface : AllBinaryLayer_Access;
      lastDamage : Integer_Array_Access;
      lastDamageString : Character_Array_Access_Array_Access;
      lastDamageStringSizeArray : Integer_Array_Access;
      circularIndexUtil : CircularIndexUtil_Access;
      primitiveLongUtil : PrimitiveLongUtil_Access;
      myRandomFactory : MyRandomFactory_Access;
   end record;
   basicColorArrayIndexer : BasicColorArrayIndexer_Access;

   procedure Initialize (This : in out PtsDamageFloaters'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return PtsDamageFloaters_Access;
   procedure add (This : in out PtsDamageFloaters; damage : Integer);
   procedure paint (This : in out PtsDamageFloaters; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.combat.damage.PtsDamageFloaters_Package;


