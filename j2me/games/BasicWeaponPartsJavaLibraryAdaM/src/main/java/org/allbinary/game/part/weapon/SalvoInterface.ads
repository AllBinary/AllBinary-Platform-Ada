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
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.game.part.weapon.SalvoInterface_Package is

   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type SalvoInterface is interface;
   type SalvoInterface_Access is access all SalvoInterface'Class;
   type SalvoInterface_Access_Array is array (Natural range <>) of SalvoInterface_Access;
   type SalvoInterface_Access_Array_Access is access all SalvoInterface_Access_Array;
   type SalvoInterface_Access_Array_Access_Array is array (Natural range <>) of SalvoInterface_Access_Array_Access;
   type SalvoInterface_Access_Array_Access_Array_Access is access all SalvoInterface_Access_Array_Access_Array;
   procedure process (This : in out SalvoInterface; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer) is abstract;
   procedure processScore (This : in out SalvoInterface; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is abstract;

end org.allbinary.game.part.weapon.SalvoInterface_Package;


