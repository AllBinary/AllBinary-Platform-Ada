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
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;

package org.allbinary.game.collision.CollidableBaseBehaviorFactoryInterface_Package is


   type CollidableBaseBehaviorFactoryInterface is interface;
   type CollidableBaseBehaviorFactoryInterface_Access is access all CollidableBaseBehaviorFactoryInterface'Class;
   type CollidableBaseBehaviorFactoryInterface_Access_Array is array (Natural range <>) of CollidableBaseBehaviorFactoryInterface_Access;
   type CollidableBaseBehaviorFactoryInterface_Access_Array_Access is access all CollidableBaseBehaviorFactoryInterface_Access_Array;
   type CollidableBaseBehaviorFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of CollidableBaseBehaviorFactoryInterface_Access_Array_Access;
   type CollidableBaseBehaviorFactoryInterface_Access_Array_Access_Array_Access is access all CollidableBaseBehaviorFactoryInterface_Access_Array_Access_Array;
   function createBehavior (This : in out CollidableBaseBehaviorFactoryInterface) return CollidableBaseBehavior_Access is abstract;

end org.allbinary.game.collision.CollidableBaseBehaviorFactoryInterface_Package;


