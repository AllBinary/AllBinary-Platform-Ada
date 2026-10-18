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
with org.allbinary.graphics.opengles.OpenGLFeature_Package; use org.allbinary.graphics.opengles.OpenGLFeature_Package;

package org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package is


   type OpenGLFeatureFactory is tagged;
   type OpenGLFeatureFactory_Access is access all OpenGLFeatureFactory'Class;
   type OpenGLFeatureFactory_Access_Array is array (Natural range <>) of OpenGLFeatureFactory_Access;
   type OpenGLFeatureFactory_Access_Array_Access is access all OpenGLFeatureFactory_Access_Array;
   type OpenGLFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLFeatureFactory_Access_Array_Access;
   type OpenGLFeatureFactory_Access_Array_Access_Array_Access is access all OpenGLFeatureFactory_Access_Array_Access_Array;

   type OpenGLFeatureFactory is new Java_Object with record
      OPENGL_OPTIONS : OpenGLFeature_Access;
      OPENGL : OpenGLFeature_Access;
      OPENGL_SURFACE_VIEW : OpenGLFeature_Access;
      OPENGL_2D : OpenGLFeature_Access;
      OPENGL_3D : OpenGLFeature_Access;
      OPENGL_2D_AND_3D : OpenGLFeature_Access;
      OPENGL_AUTO_SELECT : OpenGLFeature_Access;
      OPENGL_MINIMUM : OpenGLFeature_Access;
      OPENGL_AS_GAME_THREAD : OpenGLFeature_Access;
      OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS : OpenGLFeature_Access;
      IMAGE_COLOR_DEPTH_4444 : OpenGLFeature_Access;
      IMAGE_COLOR_DEPTH_8888 : OpenGLFeature_Access;
      IMAGE_COLOR_DEPTH_565 : OpenGLFeature_Access;
      OPENGL_COLOR_DEPTH_4444 : OpenGLFeature_Access;
      OPENGL_COLOR_DEPTH_8888 : OpenGLFeature_Access;
      OPENGL_COLOR_DEPTH_565 : OpenGLFeature_Access;
      OPENGL_DRAW_TEXTURE : OpenGLFeature_Access;
      OPENGL_VERTEX_BUFFER_OBJECT : OpenGLFeature_Access;
      OPENGL_SIMPLE_OBJECT3D_PROCESSOR : OpenGLFeature_Access;
      OPENGL_COMPLEX_OBJECT3D_PROCESSOR : OpenGLFeature_Access;
      OPENGL_SIMPLE_TEXTURE_PROCESSOR : OpenGLFeature_Access;
      OPENGL_COMPLEX_TEXTURE_PROCESSOR : OpenGLFeature_Access;
   end record;
   instance : OpenGLFeatureFactory_Access;

   procedure Initialize (This : in out OpenGLFeatureFactory'Class);
   function Create return OpenGLFeatureFactory_Access;
   function getInstance return OpenGLFeatureFactory_Access;

end org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;


