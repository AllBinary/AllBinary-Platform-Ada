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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package; use org.allbinary.game.layer.pickup.IconLayer_Package;

package org.allbinary.game.layer.pickup.IconLayerFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;

   type IconLayerFactory is tagged;
   type IconLayerFactory_Access is access all IconLayerFactory'Class;
   type IconLayerFactory_Access_Array is array (Natural range <>) of IconLayerFactory_Access;
   type IconLayerFactory_Access_Array_Access is access all IconLayerFactory_Access_Array;

   type IconLayerFactory is new Java_Object with null record;

   procedure Initialize (This : in out IconLayerFactory'Class);
   function Create return IconLayerFactory_Access;
   function getInstance (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer) return IconLayer_Access;
   procedure getInstance (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer);

end org.allbinary.game.layer.pickup.IconLayerFactory_Package;


