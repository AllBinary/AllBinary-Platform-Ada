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

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
package org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References is
   type OpenGLFeatureFactory_Access is access all org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package.OpenGLFeatureFactory'Class;
   type OpenGLFeatureFactory_Access_Array is array (Natural range <>) of OpenGLFeatureFactory_Access;
   type OpenGLFeatureFactory_Access_Array_Access is access all OpenGLFeatureFactory_Access_Array;
   type OpenGLFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLFeatureFactory_Access_Array_Access;
   type OpenGLFeatureFactory_Access_Array_Access_Array_Access is access all OpenGLFeatureFactory_Access_Array_Access_Array;
   type OpenGLFeatureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLFeatureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLFeatureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLFeatureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLFeatureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLFeatureFactory_Access_Array_Access is (if Value /= null and then Value.all in OpenGLFeatureFactory_Access_Array_Object'Class then OpenGLFeatureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLFeatureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLFeatureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLFeatureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLFeatureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLFeatureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLFeatureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLFeatureFactory_Access_Array_Access_Array_Object'Class then OpenGLFeatureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References;

with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package_References;

package org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package is

   package Reference_Types is
   subtype OpenGLFeature_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access;
   use type OpenGLFeature_Access;
   subtype OpenGLFeature_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array;
   use type OpenGLFeature_Access_Array;
   subtype OpenGLFeature_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access;
   use type OpenGLFeature_Access_Array_Access;
   subtype OpenGLFeature_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array;
   use type OpenGLFeature_Access_Array_Access_Array;
   subtype OpenGLFeature_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array_Access;
   use type OpenGLFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLFeatureFactory_Access is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access;
   function "=" (Left, Right : OpenGLFeatureFactory_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   subtype OpenGLFeatureFactory_Access_Array is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array;
   function "=" (Left, Right : OpenGLFeatureFactory_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   subtype OpenGLFeatureFactory_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   function Java_Box (Value : OpenGLFeatureFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLFeatureFactory_Access_Array (Value : access Java_Object'Class) return OpenGLFeatureFactory_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.Java_Unbox_OpenGLFeatureFactory_Access_Array;
   subtype OpenGLFeatureFactory_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   subtype OpenGLFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   function Java_Box (Value : OpenGLFeatureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLFeatureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLFeatureFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.Java_Unbox_OpenGLFeatureFactory_Access_Array_Access_Array;

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


