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
with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package is

   package BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package renames org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
   package Features_Package renames org.allbinary.game.configuration.feature.Features_Package;
   package ResourceLoadingLevelFactory_Package renames org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package OpenGLFeatureFactory_Package renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package ImageCache_Package renames org.allbinary.image.ImageCache_Package;
   package ImageCacheFactory_Package renames org.allbinary.image.ImageCacheFactory_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;

   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory is tagged;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access is access all TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array is array (Natural range <>) of TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is access all TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array;

   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory is new BaseResourceAnimationInterfaceFactoryInterfaceFactory with null record;

   procedure Initialize (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   function createFactory return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   procedure createFactory;
   procedure init (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer);
   procedure initImageCache (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; imageCache : ImageCache_Access; level : Integer);
   function isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) return Boolean;
   procedure isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer);
   function isFeature (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) return Boolean;
   procedure isFeature (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory);

end org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package;


