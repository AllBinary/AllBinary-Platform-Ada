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
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;

package org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package is


   type CollidableInterfaceCompositeInterface is interface;
   type CollidableInterfaceCompositeInterface_Access is access all CollidableInterfaceCompositeInterface'Class;
   type CollidableInterfaceCompositeInterface_Access_Array is array (Natural range <>) of CollidableInterfaceCompositeInterface_Access;
   type CollidableInterfaceCompositeInterface_Access_Array_Access is access all CollidableInterfaceCompositeInterface_Access_Array;
   function getCollidableInferface (This : in out CollidableInterfaceCompositeInterface) return CollidableBaseBehavior_Access is abstract;

end org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;


