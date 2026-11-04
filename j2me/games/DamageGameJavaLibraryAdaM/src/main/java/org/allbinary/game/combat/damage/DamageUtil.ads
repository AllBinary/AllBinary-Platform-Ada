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

limited with org.allbinary.game.combat.damage.DamageUtil_Package;
package org.allbinary.game.combat.damage.DamageUtil_Package_References is
   type DamageUtil_Access is access all org.allbinary.game.combat.damage.DamageUtil_Package.DamageUtil'Class;
   type DamageUtil_Access_Array is array (Natural range <>) of DamageUtil_Access;
   type DamageUtil_Access_Array_Access is access all DamageUtil_Access_Array;
   type DamageUtil_Access_Array_Access_Array is array (Natural range <>) of DamageUtil_Access_Array_Access;
   type DamageUtil_Access_Array_Access_Array_Access is access all DamageUtil_Access_Array_Access_Array;
end org.allbinary.game.combat.damage.DamageUtil_Package_References;

with org.allbinary.game.combat.damage.DamageUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package_References;

package org.allbinary.game.combat.damage.DamageUtil_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   use type CollidableCompositeLayer_Access;
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   use type CollidableCompositeLayer_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access;
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   use type CollidableCompositeLayer_Access_Array_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype DamageableInterface_Access is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access;
   use type DamageableInterface_Access;
   subtype DamageableInterface_Access_Array is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array;
   use type DamageableInterface_Access_Array;
   subtype DamageableInterface_Access_Array_Access is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array_Access;
   use type DamageableInterface_Access_Array_Access;
   subtype DamageableInterface_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array_Access_Array;
   use type DamageableInterface_Access_Array_Access_Array;
   subtype DamageableInterface_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array_Access_Array_Access;
   use type DamageableInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DamageUtil_Access is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access;
   function "=" (Left, Right : DamageUtil_Access) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";
   subtype DamageUtil_Access_Array is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array;
   function "=" (Left, Right : DamageUtil_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";
   subtype DamageUtil_Access_Array_Access is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array_Access;
   function "=" (Left, Right : DamageUtil_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";
   subtype DamageUtil_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DamageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";
   subtype DamageUtil_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageUtil_Package_References."=";

   type DamageUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      COLLIDE : Unbounded_String;
   end record;
   instance : DamageUtil_Access;

   procedure Initialize (This : in out DamageUtil'Class);
   function Create return DamageUtil_Access;
   function getInstance return DamageUtil_Access;
   procedure process (This : in out DamageUtil; damageableInterface_Param : access DamageableInterface_Package.DamageableInterface'Class; damageableInterface2_Param : access DamageableInterface_Package.DamageableInterface'Class);
   procedure debugDamage (This : in out DamageUtil; collidableInterfaceCompositeInterface1_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);

end org.allbinary.game.combat.damage.DamageUtil_Package;


