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
with org.allbinary.game.configuration.feature.GraphicsFeature_Package; use org.allbinary.game.configuration.feature.GraphicsFeature_Package;
with org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package; use org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GraphicsFeature_Package renames Standard.org.allbinary.game.configuration.feature.GraphicsFeature_Package;
   package GraphicsFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GameGraphicsResourceUtil is tagged;
   type GameGraphicsResourceUtil_Access is access all GameGraphicsResourceUtil'Class;
   type GameGraphicsResourceUtil_Access_Array is array (Natural range <>) of GameGraphicsResourceUtil_Access;
   type GameGraphicsResourceUtil_Access_Array_Access is access all GameGraphicsResourceUtil_Access_Array;

   type GameGraphicsResourceUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      SPRITE : Unbounded_String;
      QUARTER : Unbounded_String;
      name : Unbounded_String;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameGraphicsResourceUtil'Class);
   function Create return GameGraphicsResourceUtil_Access;
   function getInstance return GameGraphicsResourceUtil_Access;
   function getString (This : in out GameGraphicsResourceUtil) return Unbounded_String;
   function getStringForFeature (This : in out GameGraphicsResourceUtil; graphicsFeature_Param : access GraphicsFeature'Class) return Unbounded_String;
   procedure getStringForFeature (This : in out GameGraphicsResourceUtil; graphicsFeature_Param : access GraphicsFeature'Class);
   function getName (This : in out GameGraphicsResourceUtil) return Unbounded_String;

end org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;


