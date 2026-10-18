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
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;

package org.allbinary.graphics.opengles.OpenGLFeature_Package is

   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;

   type OpenGLFeature is tagged;
   type OpenGLFeature_Access is access all OpenGLFeature'Class;
   type OpenGLFeature_Access_Array is array (Natural range <>) of OpenGLFeature_Access;
   type OpenGLFeature_Access_Array_Access is access all OpenGLFeature_Access_Array;
   type OpenGLFeature_Access_Array_Access_Array is array (Natural range <>) of OpenGLFeature_Access_Array_Access;
   type OpenGLFeature_Access_Array_Access_Array_Access is access all OpenGLFeature_Access_Array_Access_Array;

   type OpenGLFeature is new Feature with null record;

   procedure Initialize (This : in out OpenGLFeature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return OpenGLFeature_Access;

end org.allbinary.graphics.opengles.OpenGLFeature_Package;


