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

with AllBinary_Java;
limited with org.allbinary.game.part.weapon.SalvoInterface_Package;
package org.allbinary.game.part.weapon.SalvoInterface_Package_References is
   type SalvoInterface_Access is access all org.allbinary.game.part.weapon.SalvoInterface_Package.SalvoInterface'Class;
   type SalvoInterface_Access_Array is array (Natural range <>) of SalvoInterface_Access;
   type SalvoInterface_Access_Array_Access is access all SalvoInterface_Access_Array;
   type SalvoInterface_Access_Array_Access_Array is array (Natural range <>) of SalvoInterface_Access_Array_Access;
   type SalvoInterface_Access_Array_Access_Array_Access is access all SalvoInterface_Access_Array_Access_Array;
   type SalvoInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SalvoInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : SalvoInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SalvoInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SalvoInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SalvoInterface_Access_Array_Access is (if Value /= null and then Value.all in SalvoInterface_Access_Array_Object'Class then SalvoInterface_Access_Array_Object'Class (Value.all).Value else null);
   type SalvoInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SalvoInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SalvoInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SalvoInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SalvoInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SalvoInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SalvoInterface_Access_Array_Access_Array_Object'Class then SalvoInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.part.weapon.SalvoInterface_Package_References;

with org.allbinary.game.part.weapon.SalvoInterface_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.game.part.weapon.SalvoInterface_Package is

   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
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


   type SalvoInterface is interface;
   subtype SalvoInterface_Access is org.allbinary.game.part.weapon.SalvoInterface_Package_References.SalvoInterface_Access;
   function "=" (Left, Right : SalvoInterface_Access) return Boolean renames org.allbinary.game.part.weapon.SalvoInterface_Package_References."=";
   subtype SalvoInterface_Access_Array is org.allbinary.game.part.weapon.SalvoInterface_Package_References.SalvoInterface_Access_Array;
   function "=" (Left, Right : SalvoInterface_Access_Array) return Boolean renames org.allbinary.game.part.weapon.SalvoInterface_Package_References."=";
   subtype SalvoInterface_Access_Array_Access is org.allbinary.game.part.weapon.SalvoInterface_Package_References.SalvoInterface_Access_Array_Access;
   function "=" (Left, Right : SalvoInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.SalvoInterface_Package_References."=";
   function Java_Box (Value : SalvoInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.weapon.SalvoInterface_Package_References.Java_Box;
   function Java_Unbox_SalvoInterface_Access_Array (Value : access Java_Object'Class) return SalvoInterface_Access_Array_Access renames org.allbinary.game.part.weapon.SalvoInterface_Package_References.Java_Unbox_SalvoInterface_Access_Array;
   subtype SalvoInterface_Access_Array_Access_Array is org.allbinary.game.part.weapon.SalvoInterface_Package_References.SalvoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SalvoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.weapon.SalvoInterface_Package_References."=";
   subtype SalvoInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.SalvoInterface_Package_References.SalvoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SalvoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.SalvoInterface_Package_References."=";
   function Java_Box (Value : SalvoInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.weapon.SalvoInterface_Package_References.Java_Box;
   function Java_Unbox_SalvoInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return SalvoInterface_Access_Array_Access_Array_Access renames org.allbinary.game.part.weapon.SalvoInterface_Package_References.Java_Unbox_SalvoInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_SalvoInterface (Value : SalvoInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure process (This : in out SalvoInterface; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer) is abstract;
   procedure processScore (This : in out SalvoInterface; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is abstract;

end org.allbinary.game.part.weapon.SalvoInterface_Package;


