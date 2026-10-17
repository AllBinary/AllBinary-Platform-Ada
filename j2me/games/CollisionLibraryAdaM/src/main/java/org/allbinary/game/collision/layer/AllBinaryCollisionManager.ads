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
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;

package org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package is

   package CollidableBaseBehavior_Package renames org.allbinary.game.collision.CollidableBaseBehavior_Package;
   package CollidableInterfaceCompositeInterface_Package renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollidableCompositeLayer_Package renames org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package LayerManager_Package renames org.allbinary.layer.LayerManager_Package;

   type AllBinaryCollisionManager is tagged;
   type AllBinaryCollisionManager_Access is access all AllBinaryCollisionManager'Class;
   type AllBinaryCollisionManager_Access_Array is array (Natural range <>) of AllBinaryCollisionManager_Access;
   type AllBinaryCollisionManager_Access_Array_Access is access all AllBinaryCollisionManager_Access_Array;

   type AllBinaryCollisionManager is new Java_Object with null record;
   allBinaryCollisionManager : AllBinaryCollisionManager_Access;

   procedure Initialize (This : in out AllBinaryCollisionManager'Class);
   function Create return AllBinaryCollisionManager_Access;
   function getInstance return AllBinaryCollisionManager_Access;
   procedure getInstance;
   procedure process (This : in out AllBinaryCollisionManager; layerManager : LayerManager_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access; startIndex : Integer);
   procedure collide (This : in out AllBinaryCollisionManager; layerManager : LayerManager_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access; collidableInterfaceCompositeInterface2 : CollidableInterfaceCompositeInterface_Access);

end org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package;


