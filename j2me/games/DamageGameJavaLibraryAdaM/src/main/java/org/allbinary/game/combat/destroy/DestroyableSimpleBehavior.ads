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
with org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package; use org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package;
with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package; use org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;

package org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;

   type DestroyableSimpleBehavior is tagged;
   type DestroyableSimpleBehavior_Access is access all DestroyableSimpleBehavior'Class;
   type DestroyableSimpleBehavior_Access_Array is array (Natural range <>) of DestroyableSimpleBehavior_Access;
   type DestroyableSimpleBehavior_Access_Array_Access is access all DestroyableSimpleBehavior_Access_Array;

   type DestroyableSimpleBehavior is new DestroyableBaseBehavior with record
      ownerLayer : CollidableCompositeLayer_Access;
      destroyed : Boolean;
   end record;

   procedure Initialize (This : in out DestroyableSimpleBehavior'Class; ownerLayer : CollidableCompositeLayer_Access);
   function Create (ownerLayer : CollidableCompositeLayer_Access) return DestroyableSimpleBehavior_Access;
   function isDestroyed (This : in out DestroyableSimpleBehavior) return Boolean;
   procedure setDestroyed (This : in out DestroyableSimpleBehavior; destroyed : Boolean);

end org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package;


