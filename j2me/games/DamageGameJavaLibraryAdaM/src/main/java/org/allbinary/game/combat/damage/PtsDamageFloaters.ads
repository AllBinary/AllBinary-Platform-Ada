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

limited with org.allbinary.game.combat.damage.PtsDamageFloaters_Package;
package org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References is
   type PtsDamageFloaters_Access is access all org.allbinary.game.combat.damage.PtsDamageFloaters_Package.PtsDamageFloaters'Class;
   type PtsDamageFloaters_Access_Array is array (Natural range <>) of PtsDamageFloaters_Access;
   type PtsDamageFloaters_Access_Array_Access is access all PtsDamageFloaters_Access_Array;
   type PtsDamageFloaters_Access_Array_Access_Array is array (Natural range <>) of PtsDamageFloaters_Access_Array_Access;
   type PtsDamageFloaters_Access_Array_Access_Array_Access is access all PtsDamageFloaters_Access_Array_Access_Array;
end org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References;

with org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
limited with org.allbinary.graphics.color.BasicColorArrayIndexer_Package;
with org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References;
limited with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;

package org.allbinary.game.combat.damage.PtsDamageFloaters_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package BasicColorArrayIndexer_Package renames Standard.org.allbinary.graphics.color.BasicColorArrayIndexer_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   use type MyRandomFactory_Access;
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   use type MyRandomFactory_Access_Array;
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access;
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   use type MyRandomFactory_Access_Array_Access_Array;
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access_Array_Access;
   subtype BasicColorArrayIndexer_Access is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access;
   use type BasicColorArrayIndexer_Access;
   subtype BasicColorArrayIndexer_Access_Array is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access_Array;
   use type BasicColorArrayIndexer_Access_Array;
   subtype BasicColorArrayIndexer_Access_Array_Access is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access_Array_Access;
   use type BasicColorArrayIndexer_Access_Array_Access;
   subtype BasicColorArrayIndexer_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access_Array_Access_Array;
   use type BasicColorArrayIndexer_Access_Array_Access_Array;
   subtype BasicColorArrayIndexer_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorArrayIndexer_Package_References.BasicColorArrayIndexer_Access_Array_Access_Array_Access;
   use type BasicColorArrayIndexer_Access_Array_Access_Array_Access;
   subtype BasicColorSetUtil_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access;
   use type BasicColorSetUtil_Access;
   subtype BasicColorSetUtil_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array;
   use type BasicColorSetUtil_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access;
   subtype BasicColorSetUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array;
   use type BasicColorSetUtil_Access_Array_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype PrimitiveLongUtil_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access;
   use type PrimitiveLongUtil_Access;
   subtype PrimitiveLongUtil_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array;
   use type PrimitiveLongUtil_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access;
   subtype PrimitiveLongUtil_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array;
   use type PrimitiveLongUtil_Access_Array_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access_Array_Access;
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PtsDamageFloaters_Access is org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References.PtsDamageFloaters_Access;
   function "=" (Left, Right : PtsDamageFloaters_Access) return Boolean renames org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References."=";
   subtype PtsDamageFloaters_Access_Array is org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References.PtsDamageFloaters_Access_Array;
   function "=" (Left, Right : PtsDamageFloaters_Access_Array) return Boolean renames org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References."=";
   subtype PtsDamageFloaters_Access_Array_Access is org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References.PtsDamageFloaters_Access_Array_Access;
   function "=" (Left, Right : PtsDamageFloaters_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References."=";
   subtype PtsDamageFloaters_Access_Array_Access_Array is org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References.PtsDamageFloaters_Access_Array_Access_Array;
   function "=" (Left, Right : PtsDamageFloaters_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References."=";
   subtype PtsDamageFloaters_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References.PtsDamageFloaters_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PtsDamageFloaters_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.PtsDamageFloaters_Package_References."=";

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


