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
with org.allbinary.game.collision.CollisionType_Package; use org.allbinary.game.collision.CollisionType_Package;

package org.allbinary.game.collision.CollisionTypeFactory_Package is


   type CollisionTypeFactory is tagged;
   type CollisionTypeFactory_Access is access all CollisionTypeFactory'Class;
   type CollisionTypeFactory_Access_Array is array (Natural range <>) of CollisionTypeFactory_Access;
   type CollisionTypeFactory_Access_Array_Access is access all CollisionTypeFactory_Access_Array;
   type CollisionTypeFactory_Access_Array_Access_Array is array (Natural range <>) of CollisionTypeFactory_Access_Array_Access;
   type CollisionTypeFactory_Access_Array_Access_Array_Access is access all CollisionTypeFactory_Access_Array_Access_Array;

   type CollisionTypeFactory is new Java_Object with record
      NONE : CollisionType_Access;
      DAMAGE : CollisionType_Access;
      PICKUP : CollisionType_Access;
      COLLISION : CollisionType_Access;
   end record;
   SINGLETON : CollisionTypeFactory_Access;

   procedure Initialize (This : in out CollisionTypeFactory'Class);
   function Create return CollisionTypeFactory_Access;
   function getInstance return CollisionTypeFactory_Access;

end org.allbinary.game.collision.CollisionTypeFactory_Package;


