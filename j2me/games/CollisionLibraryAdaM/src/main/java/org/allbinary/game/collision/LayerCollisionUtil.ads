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
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.collision.LayerCollisionUtil_Package is

   package Features_Package renames org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package OpenGLFeatureUtil_Package renames org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;

   type LayerCollisionUtil is tagged;
   type LayerCollisionUtil_Access is access all LayerCollisionUtil'Class;
   type LayerCollisionUtil_Access_Array is array (Natural range <>) of LayerCollisionUtil_Access;
   type LayerCollisionUtil_Access_Array_Access is access all LayerCollisionUtil_Access_Array;

   type LayerCollisionUtil is new Java_Object with record
      collisionProcessor : CollisionProcessor_Access;
   end record;
   instance : LayerCollisionUtil_Access;

   procedure Initialize (This : in out LayerCollisionUtil'Class);
   function Create return LayerCollisionUtil_Access;
   function getInstance return LayerCollisionUtil_Access;
   procedure getInstance;
   function isCollision (This : in out LayerCollisionUtil; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access) return Boolean;
   procedure isCollision (This : in out LayerCollisionUtil; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access);

end org.allbinary.game.collision.LayerCollisionUtil_Package;


