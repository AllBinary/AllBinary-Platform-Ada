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
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.collision.SourceCollisionHelper_Package; use org.allbinary.game.collision.SourceCollisionHelper_Package;
with org.allbinary.game.collision.CollisionHelper_Package; use org.allbinary.game.collision.CollisionHelper_Package;

package org.allbinary.game.collision.CollidableHelperFactory_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type CollidableHelperFactory is tagged;
   type CollidableHelperFactory_Access is access all CollidableHelperFactory'Class;
   type CollidableHelperFactory_Access_Array is array (Natural range <>) of CollidableHelperFactory_Access;
   type CollidableHelperFactory_Access_Array_Access is access all CollidableHelperFactory_Access_Array;

   type CollidableHelperFactory is new Java_Object with null record;

   procedure Initialize (This : in out CollidableHelperFactory'Class);
   function Create return CollidableHelperFactory_Access;
   function getInstance return CollisionHelper_Access;

end org.allbinary.game.collision.CollidableHelperFactory_Package;


