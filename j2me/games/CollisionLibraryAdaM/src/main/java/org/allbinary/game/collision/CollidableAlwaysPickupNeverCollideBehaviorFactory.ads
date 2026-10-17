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
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package; use org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;

package org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory_Package is


   type CollidableAlwaysPickupNeverCollideBehaviorFactory is tagged;
   type CollidableAlwaysPickupNeverCollideBehaviorFactory_Access is access all CollidableAlwaysPickupNeverCollideBehaviorFactory'Class;
   type CollidableAlwaysPickupNeverCollideBehaviorFactory_Access_Array is array (Natural range <>) of CollidableAlwaysPickupNeverCollideBehaviorFactory_Access;
   type CollidableAlwaysPickupNeverCollideBehaviorFactory_Access_Array_Access is access all CollidableAlwaysPickupNeverCollideBehaviorFactory_Access_Array;

   type CollidableAlwaysPickupNeverCollideBehaviorFactory is new CollidableBaseBehaviorFactory with record
      instance : CollidableAlwaysPickupNeverCollideBehavior_Access;
   end record;
   instanceC : CollidableAlwaysPickupNeverCollideBehaviorFactory_Access;

   procedure Initialize (This : in out CollidableAlwaysPickupNeverCollideBehaviorFactory'Class);
   function Create return CollidableAlwaysPickupNeverCollideBehaviorFactory_Access;
   function getInstance return CollidableAlwaysPickupNeverCollideBehaviorFactory_Access;
   procedure getInstance;
   function createBehavior (This : in out CollidableAlwaysPickupNeverCollideBehaviorFactory) return CollidableBaseBehavior_Access;
   procedure createBehavior (This : in out CollidableAlwaysPickupNeverCollideBehaviorFactory);

end org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory_Package;


