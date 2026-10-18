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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.collision.CollisionProcessor_Package; use org.allbinary.game.collision.CollisionProcessor_Package;

package org.allbinary.game.collision.LayerCollisionUtil_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type LayerCollisionUtil is tagged;
   type LayerCollisionUtil_Access is access all LayerCollisionUtil'Class;
   type LayerCollisionUtil_Access_Array is array (Natural range <>) of LayerCollisionUtil_Access;
   type LayerCollisionUtil_Access_Array_Access is access all LayerCollisionUtil_Access_Array;
   type LayerCollisionUtil_Access_Array_Access_Array is array (Natural range <>) of LayerCollisionUtil_Access_Array_Access;
   type LayerCollisionUtil_Access_Array_Access_Array_Access is access all LayerCollisionUtil_Access_Array_Access_Array;

   type LayerCollisionUtil is new Java_Object with record
      collisionProcessor : CollisionProcessor_Access;
   end record;
   instance : LayerCollisionUtil_Access;

   procedure Initialize (This : in out LayerCollisionUtil'Class);
   function Create return LayerCollisionUtil_Access;
   function getInstance return LayerCollisionUtil_Access;
   function isCollision (This : in out LayerCollisionUtil; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isCollision (This : in out LayerCollisionUtil; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.LayerCollisionUtil_Package;


