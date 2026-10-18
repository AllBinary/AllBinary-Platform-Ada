--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package; use org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;

package org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package ObjectThreedOpenGLProcessor_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor_Package;

   type EnableFacesShaderOpenGLProcessor is tagged;
   type EnableFacesShaderOpenGLProcessor_Access is access all EnableFacesShaderOpenGLProcessor'Class;
   type EnableFacesShaderOpenGLProcessor_Access_Array is array (Natural range <>) of EnableFacesShaderOpenGLProcessor_Access;
   type EnableFacesShaderOpenGLProcessor_Access_Array_Access is access all EnableFacesShaderOpenGLProcessor_Access_Array;

   type EnableFacesShaderOpenGLProcessor is new ObjectThreedOpenGLProcessor with null record;
   instance : EnableFacesShaderOpenGLProcessor_Access;

   procedure Initialize (This : in out EnableFacesShaderOpenGLProcessor'Class);
   function Create return EnableFacesShaderOpenGLProcessor_Access;
   function getInstance return EnableFacesShaderOpenGLProcessor_Access;
   procedure process (This : in out EnableFacesShaderOpenGLProcessor; gl_Param : access GL10_Package.GL10'Class; anyType_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor_Package;


