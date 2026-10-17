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
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.health.HealthBarFactory_Package is

   package OpenGLFeatureUtil_Package renames org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;

   type HealthBarFactory is tagged;
   type HealthBarFactory_Access is access all HealthBarFactory'Class;
   type HealthBarFactory_Access_Array is array (Natural range <>) of HealthBarFactory_Access;
   type HealthBarFactory_Access_Array_Access is access all HealthBarFactory_Access_Array;

   type HealthBarFactory is new Java_Object with null record;

   procedure Initialize (This : in out HealthBarFactory'Class);
   function Create return HealthBarFactory_Access;
   function getInstance (This : in out HealthBarFactory; layerInterface : AllBinaryLayer_Access; healthInterface : Health_Access; location : Integer; direction : Integer) return HealthBar_Access;
   procedure getInstance (This : in out HealthBarFactory; layerInterface : AllBinaryLayer_Access; healthInterface : Health_Access; location : Integer; direction : Integer);

end org.allbinary.game.health.HealthBarFactory_Package;


