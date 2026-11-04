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

limited with org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package;
package org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References is
   type BasicWeaponPartCircularPool_Access is access all org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package.BasicWeaponPartCircularPool'Class;
   type BasicWeaponPartCircularPool_Access_Array is array (Natural range <>) of BasicWeaponPartCircularPool_Access;
   type BasicWeaponPartCircularPool_Access_Array_Access is access all BasicWeaponPartCircularPool_Access_Array;
   type BasicWeaponPartCircularPool_Access_Array_Access_Array is array (Natural range <>) of BasicWeaponPartCircularPool_Access_Array_Access;
   type BasicWeaponPartCircularPool_Access_Array_Access_Array_Access is access all BasicWeaponPartCircularPool_Access_Array_Access_Array;
end org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References;

with org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
limited with org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
limited with org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.graphics.RelativeRelationship_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package_References;
limited with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package;
with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References;

package org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package is

   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   use type WeaponProperties_Access;
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   use type WeaponProperties_Access_Array;
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access;
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   use type WeaponProperties_Access_Array_Access_Array;
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access_Array_Access;
   subtype ScoreableInterface_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access;
   use type ScoreableInterface_Access;
   subtype ScoreableInterface_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array;
   use type ScoreableInterface_Access_Array;
   subtype ScoreableInterface_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access;
   use type ScoreableInterface_Access_Array_Access;
   subtype ScoreableInterface_Access_Array_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array;
   use type ScoreableInterface_Access_Array_Access_Array;
   subtype ScoreableInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array_Access;
   use type ScoreableInterface_Access_Array_Access_Array_Access;
   subtype RelativeRelationship_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access;
   use type RelativeRelationship_Access;
   subtype RelativeRelationship_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array;
   use type RelativeRelationship_Access_Array;
   subtype RelativeRelationship_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access;
   use type RelativeRelationship_Access_Array_Access;
   subtype RelativeRelationship_Access_Array_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array;
   use type RelativeRelationship_Access_Array_Access_Array;
   subtype RelativeRelationship_Access_Array_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array_Access;
   use type RelativeRelationship_Access_Array_Access_Array_Access;
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
   subtype BasicWeaponPart_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access;
   use type BasicWeaponPart_Access;
   subtype BasicWeaponPart_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array;
   use type BasicWeaponPart_Access_Array;
   subtype BasicWeaponPart_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access;
   use type BasicWeaponPart_Access_Array_Access;
   subtype BasicWeaponPart_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array;
   use type BasicWeaponPart_Access_Array_Access_Array;
   subtype BasicWeaponPart_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array_Access;
   use type BasicWeaponPart_Access_Array_Access_Array_Access;
   subtype BasicWeaponPartFactoryInterface_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access;
   use type BasicWeaponPartFactoryInterface_Access;
   subtype BasicWeaponPartFactoryInterface_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array;
   use type BasicWeaponPartFactoryInterface_Access_Array;
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access;
   use type BasicWeaponPartFactoryInterface_Access_Array_Access;
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access_Array;
   use type BasicWeaponPartFactoryInterface_Access_Array_Access_Array;
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access;
   use type BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicWeaponPartCircularPool_Access is org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References.BasicWeaponPartCircularPool_Access;
   function "=" (Left, Right : BasicWeaponPartCircularPool_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References."=";
   subtype BasicWeaponPartCircularPool_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References.BasicWeaponPartCircularPool_Access_Array;
   function "=" (Left, Right : BasicWeaponPartCircularPool_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References."=";
   subtype BasicWeaponPartCircularPool_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References.BasicWeaponPartCircularPool_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPartCircularPool_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References."=";
   subtype BasicWeaponPartCircularPool_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References.BasicWeaponPartCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWeaponPartCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References."=";
   subtype BasicWeaponPartCircularPool_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References.BasicWeaponPartCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPartCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package_References."=";

   type BasicWeaponPartCircularPool is new Java_Object with record
      basicWeaponPart : BasicWeaponPart_Access;
   end record;
   NULL_BASIC_WEAPON_PART_CIRCULAR_POOL : BasicWeaponPartCircularPool_Access;

   procedure Initialize (This : in out BasicWeaponPartCircularPool'Class);
   function Create return BasicWeaponPartCircularPool_Access;
   procedure init (This : in out BasicWeaponPartCircularPool; basicWeaponPartFactoryInterface_Param : access BasicWeaponPartFactoryInterface_Package.BasicWeaponPartFactoryInterface'Class);
   function getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return BasicWeaponPart_Access;
   procedure getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class);

end org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package;


