-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.collision.CollidableBaseBehaviorFactoryInterface_Package; use org.allbinary.game.collision.CollidableBaseBehaviorFactoryInterface_Package;

package org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package is


   type CollidableBaseBehaviorFactory is tagged;
   type CollidableBaseBehaviorFactory_Access is access all CollidableBaseBehaviorFactory'Class;
   type CollidableBaseBehaviorFactory_Access_Array is array (Natural range <>) of CollidableBaseBehaviorFactory_Access;
   type CollidableBaseBehaviorFactory_Access_Array_Access is access all CollidableBaseBehaviorFactory_Access_Array;

   type CollidableBaseBehaviorFactory is new CollidableBaseBehaviorFactoryInterface with null record;

   procedure Initialize (This : in out CollidableBaseBehaviorFactory'Class);
   function Create return CollidableBaseBehaviorFactory_Access;
   function createBehavior (This : in out CollidableBaseBehaviorFactory) return CollidableBaseBehavior_Access;
   procedure createBehavior (This : in out CollidableBaseBehaviorFactory);

end org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;


