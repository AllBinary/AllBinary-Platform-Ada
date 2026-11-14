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
limited with org.allbinary.game.part.weapon.BasicWeaponPart_Package;
package org.allbinary.game.part.weapon.BasicWeaponPart_Package_References is
   type BasicWeaponPart_Access is access all org.allbinary.game.part.weapon.BasicWeaponPart_Package.BasicWeaponPart'Class;
   type BasicWeaponPart_Access_Array is array (Natural range <>) of BasicWeaponPart_Access;
   type BasicWeaponPart_Access_Array_Access is access all BasicWeaponPart_Access_Array;
   type BasicWeaponPart_Access_Array_Access_Array is array (Natural range <>) of BasicWeaponPart_Access_Array_Access;
   type BasicWeaponPart_Access_Array_Access_Array_Access is access all BasicWeaponPart_Access_Array_Access_Array;
   type BasicWeaponPart_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicWeaponPart_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicWeaponPart_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicWeaponPart_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicWeaponPart_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicWeaponPart_Access_Array_Access is (if Value /= null and then Value.all in BasicWeaponPart_Access_Array_Object'Class then BasicWeaponPart_Access_Array_Object'Class (Value.all).Value else null);
   type BasicWeaponPart_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicWeaponPart_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicWeaponPart_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicWeaponPart_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicWeaponPart_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicWeaponPart_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicWeaponPart_Access_Array_Access_Array_Object'Class then BasicWeaponPart_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.part.weapon.BasicWeaponPart_Package_References;

with org.allbinary.game.part.weapon.BasicWeaponPart_Package_References;
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
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
limited with org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
limited with org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.graphics.RelativeRelationship_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.part.weapon.SalvoInterface_Package; use org.allbinary.game.part.weapon.SalvoInterface_Package;

package org.allbinary.game.part.weapon.BasicWeaponPart_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package PartInterface_Package renames Standard.org.allbinary.game.part.PartInterface_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
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


   subtype BasicWeaponPart_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access;
   function "=" (Left, Right : BasicWeaponPart_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array;
   function "=" (Left, Right : BasicWeaponPart_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPart_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   function Java_Box (Value : BasicWeaponPart_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.Java_Box;
   function Java_Unbox_BasicWeaponPart_Access_Array (Value : access Java_Object'Class) return BasicWeaponPart_Access_Array_Access renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.Java_Unbox_BasicWeaponPart_Access_Array;
   subtype BasicWeaponPart_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWeaponPart_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPart_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   function Java_Box (Value : BasicWeaponPart_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.Java_Box;
   function Java_Unbox_BasicWeaponPart_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicWeaponPart_Access_Array_Access_Array_Access renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.Java_Unbox_BasicWeaponPart_Access_Array_Access_Array;

   type BasicWeaponPart is new Java_Object and PartInterface and SalvoInterface with record
      animationInterface : Animation_Access;
      ownerLayerInterface : AllBinaryLayer_Access;
      weaponProperties : WeaponProperties_Access;
      scoreableInterface : ScoreableInterface_Access;
      relativeRelationship : RelativeRelationship_Access;
   end record;
   NULL_BASIC_WEAPON_PART : BasicWeaponPart_Access;

   procedure Initialize (This : in out BasicWeaponPart'Class; animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return BasicWeaponPart_Access;
   function createBasicWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class) return BasicWeaponPart_Access;
   procedure createBasicWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class);
   procedure init (This : in out BasicWeaponPart; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class);
   procedure process (This : in out BasicWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer);
   procedure processScore (This : in out BasicWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class);
   function getOwnerLayerInterface (This : in out BasicWeaponPart) return AllBinaryLayer_Access;
   procedure setOwnerLayerInterface (This : in out BasicWeaponPart; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function getAnimationInterface (This : in out BasicWeaponPart) return Animation_Access;
   procedure setAnimationInterface (This : in out BasicWeaponPart; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure paint (This : in out BasicWeaponPart; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out BasicWeaponPart; graphics_Param : access Graphics_Package.Graphics'Class);
   function getWeaponProperties (This : in out BasicWeaponPart) return WeaponProperties_Access;
   procedure setWeaponProperties (This : in out BasicWeaponPart; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class);

end org.allbinary.game.part.weapon.BasicWeaponPart_Package;


