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

package org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package is

   package Features_Package renames org.allbinary.game.configuration.feature.Features_Package;

   type OpenGLFeatureUtil is tagged;
   type OpenGLFeatureUtil_Access is access all OpenGLFeatureUtil'Class;
   type OpenGLFeatureUtil_Access_Array is array (Natural range <>) of OpenGLFeatureUtil_Access;
   type OpenGLFeatureUtil_Access_Array_Access is access all OpenGLFeatureUtil_Access_Array;

   type OpenGLFeatureUtil is new Java_Object with record
      anyThreed : Boolean;
   end record;
   instance : OpenGLFeatureUtil_Access;

   procedure Initialize (This : in out OpenGLFeatureUtil'Class);
   function Create return OpenGLFeatureUtil_Access;
   function getInstance return OpenGLFeatureUtil_Access;
   procedure getInstance;
   function isAnyThreed (This : in out OpenGLFeatureUtil) return Boolean;
   procedure isAnyThreed (This : in out OpenGLFeatureUtil);

end org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;


