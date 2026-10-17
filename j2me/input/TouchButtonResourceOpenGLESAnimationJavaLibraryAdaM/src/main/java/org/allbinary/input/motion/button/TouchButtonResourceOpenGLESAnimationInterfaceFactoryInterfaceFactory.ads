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
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.image.opengles.OpenGLImageCacheFactory_Package; use org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;
with org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package;

package org.allbinary.input.motion.button.TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Package is

   package Features_Package renames org.allbinary.game.configuration.feature.Features_Package;
   package OpenGLFeatureFactory_Package renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package OpenGLImageCacheFactory_Package renames org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;

   type TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory is tagged;
   type TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Access is access all TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory'Class;
   type TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Access_Array is array (Natural range <>) of TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Access;
   type TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is access all TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Access_Array;

   type TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory is new TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory with null record;

   procedure Initialize (This : in out TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory'Class);
   function Create return TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Access;
   procedure init (This : in out TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory; level : Integer);
   function isFeature (This : in out TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory) return Boolean;
   procedure isFeature (This : in out TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory);

end org.allbinary.input.motion.button.TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_Package;


