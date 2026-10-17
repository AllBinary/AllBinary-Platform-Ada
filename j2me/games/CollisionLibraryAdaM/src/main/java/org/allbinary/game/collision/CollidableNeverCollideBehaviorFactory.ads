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

package org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package is


   type CollidableNeverCollideBehaviorFactory is tagged;
   type CollidableNeverCollideBehaviorFactory_Access is access all CollidableNeverCollideBehaviorFactory'Class;
   type CollidableNeverCollideBehaviorFactory_Access_Array is array (Natural range <>) of CollidableNeverCollideBehaviorFactory_Access;
   type CollidableNeverCollideBehaviorFactory_Access_Array_Access is access all CollidableNeverCollideBehaviorFactory_Access_Array;

   type CollidableNeverCollideBehaviorFactory is new CollidableBaseBehaviorFactory with record
      instance : CollidableNeverCollideBehavior_Access;
   end record;
   instanceC : CollidableNeverCollideBehaviorFactory_Access;

   procedure Initialize (This : in out CollidableNeverCollideBehaviorFactory'Class);
   function Create return CollidableNeverCollideBehaviorFactory_Access;
   function getInstance return CollidableNeverCollideBehaviorFactory_Access;
   procedure getInstance;
   function createBehavior (This : in out CollidableNeverCollideBehaviorFactory) return CollidableBaseBehavior_Access;
   procedure createBehavior (This : in out CollidableNeverCollideBehaviorFactory);

end org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;


