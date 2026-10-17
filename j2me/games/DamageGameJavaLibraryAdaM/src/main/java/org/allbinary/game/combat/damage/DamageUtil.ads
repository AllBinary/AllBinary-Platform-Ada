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
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package; use org.allbinary.game.combat.damage.DamageableInterface_Package;

package org.allbinary.game.combat.damage.DamageUtil_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type DamageUtil is tagged;
   type DamageUtil_Access is access all DamageUtil'Class;
   type DamageUtil_Access_Array is array (Natural range <>) of DamageUtil_Access;
   type DamageUtil_Access_Array_Access is access all DamageUtil_Access_Array;

   type DamageUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      COLLIDE : Unbounded_String;
   end record;
   instance : DamageUtil_Access;

   procedure Initialize (This : in out DamageUtil'Class);
   function Create return DamageUtil_Access;
   function getInstance return DamageUtil_Access;
   procedure process (This : in out DamageUtil; damageableInterface : DamageableInterface_Access; damageableInterface2 : DamageableInterface_Access);
   procedure debugDamage (This : in out DamageUtil; collidableInterfaceCompositeInterface1 : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access);

end org.allbinary.game.combat.damage.DamageUtil_Package;


