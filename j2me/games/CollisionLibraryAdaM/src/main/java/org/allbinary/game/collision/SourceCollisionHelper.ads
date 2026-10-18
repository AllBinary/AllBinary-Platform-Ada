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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.collision.CollisionHelper_Package; use org.allbinary.game.collision.CollisionHelper_Package;

package org.allbinary.game.collision.SourceCollisionHelper_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type SourceCollisionHelper is tagged;
   type SourceCollisionHelper_Access is access all SourceCollisionHelper'Class;
   type SourceCollisionHelper_Access_Array is array (Natural range <>) of SourceCollisionHelper_Access;
   type SourceCollisionHelper_Access_Array_Access is access all SourceCollisionHelper_Access_Array;
   type SourceCollisionHelper_Access_Array_Access_Array is array (Natural range <>) of SourceCollisionHelper_Access_Array_Access;
   type SourceCollisionHelper_Access_Array_Access_Array_Access is access all SourceCollisionHelper_Access_Array_Access_Array;

   type SourceCollisionHelper is new CollisionHelper with null record;

   procedure Initialize (This : in out SourceCollisionHelper'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return SourceCollisionHelper_Access;
   function isCollidable (This : in out SourceCollisionHelper; layerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollidable (This : in out SourceCollisionHelper; layerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);

end org.allbinary.game.collision.SourceCollisionHelper_Package;


