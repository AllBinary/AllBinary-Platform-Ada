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


with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.graphics.RelativeRelationship_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package_References;
with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package; use org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package;
with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.part.weapon.SalvoInterface_Package;

package body org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package is

   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   function "=" (Left, Right : WeaponProperties_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype ScoreableInterface_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access;
   function "=" (Left, Right : ScoreableInterface_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array;
   function "=" (Left, Right : ScoreableInterface_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype RelativeRelationship_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access;
   function "=" (Left, Right : RelativeRelationship_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array;
   function "=" (Left, Right : RelativeRelationship_Access_Array) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype BasicWeaponPart_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access;
   function "=" (Left, Right : BasicWeaponPart_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array;
   function "=" (Left, Right : BasicWeaponPart_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPart_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWeaponPart_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPart_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPart_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPart_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   procedure Initialize_Fields (This : in out BasicWeaponPartCircularPool'Class) is
   begin
      null;
      This.basicWeaponPart := BasicWeaponPart_Access (BasicWeaponPart_Package.NULL_BASIC_WEAPON_PART);
   end Initialize_Fields;

   procedure Initialize (This : in out BasicWeaponPartCircularPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicWeaponPartCircularPool_Access is
      This : constant BasicWeaponPartCircularPool_Access := new BasicWeaponPartCircularPool;
   begin
      BasicWeaponPartCircularPool_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (This : in out BasicWeaponPartCircularPool; basicWeaponPartFactoryInterface_Param : access BasicWeaponPartFactoryInterface_Package.BasicWeaponPartFactoryInterface'Class) is
      basicWeaponPartFactoryInterface : constant BasicWeaponPartFactoryInterface_Access := BasicWeaponPartFactoryInterface_Access (basicWeaponPartFactoryInterface_Param);
   begin
        This.basicWeaponPart := basicWeaponPartFactoryInterface.getInstance;
   end init;

   --  throws Exception
   function getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return BasicWeaponPart_Access is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      relativeRelationship : constant RelativeRelationship_Access := RelativeRelationship_Access (relativeRelationship_Param);
   begin
        This.basicWeaponPart.init (sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        return This.basicWeaponPart;
   end getInstance;

   procedure getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is
      Java_Result : constant BasicWeaponPart_Access := BasicWeaponPartCircularPool'Class (This).getInstance (sourceLayerInterface_Param => sourceLayerInterface_Param, weaponProperties_Param => weaponProperties_Param, scoreableInterface_Param => scoreableInterface_Param, relativeRelationship_Param => relativeRelationship_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_BASIC_WEAPON_PART_CIRCULAR_POOL := BasicWeaponPartCircularPool_Package.Create;

end org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package;


