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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type GraphicsFeatureFactory is tagged;
   type GraphicsFeatureFactory_Access is access all GraphicsFeatureFactory'Class;
   type GraphicsFeatureFactory_Access_Array is array (Natural range <>) of GraphicsFeatureFactory_Access;
   type GraphicsFeatureFactory_Access_Array_Access is access all GraphicsFeatureFactory_Access_Array;

   type GraphicsFeatureFactory is new Java_Object with record
      NONE : GraphicsFeature_Access;
      TRANSPARENT_IMAGE_CREATION : GraphicsFeature_Access;
      IMAGE_GRAPHICS : GraphicsFeature_Access;
      IMAGE_ROTATION_ON_THE_FLY : GraphicsFeature_Access;
      IMAGE_TO_ARRAY_GRAPHICS : GraphicsFeature_Access;
      SPRITE_QUARTER_ROTATION_GRAPHICS : GraphicsFeature_Access;
      SPRITE_FULL_GRAPHICS : GraphicsFeature_Access;
      VECTOR_GRAPHICS : GraphicsFeature_Access;
      VECTOR_TO_IMAGE_GRAPHICS : GraphicsFeature_Access;
   end record;
   instance : GraphicsFeatureFactory_Access;

   procedure Initialize (This : in out GraphicsFeatureFactory'Class);
   function Create return GraphicsFeatureFactory_Access;
   function getInstance return GraphicsFeatureFactory_Access;
   procedure getInstance;

end org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;


