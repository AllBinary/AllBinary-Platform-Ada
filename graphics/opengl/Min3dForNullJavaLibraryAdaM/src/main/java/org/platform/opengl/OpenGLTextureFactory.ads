--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

package org.platform.opengl.OpenGLTextureFactory_Package is

   package PlatformTextureBaseFactory_Package renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

   type OpenGLTextureFactory is tagged;
   type OpenGLTextureFactory_Access is access all OpenGLTextureFactory'Class;
   type OpenGLTextureFactory_Access_Array is array (Natural range <>) of OpenGLTextureFactory_Access;
   type OpenGLTextureFactory_Access_Array_Access is access all OpenGLTextureFactory_Access_Array;

   type OpenGLTextureFactory is new PlatformTextureBaseFactory with record
      gluUtils : OpenGLGLUUtils_Access;
   end record;
   instance : OpenGLTextureFactory_Access;

   procedure Initialize (This : in out OpenGLTextureFactory'Class);
   function Create return OpenGLTextureFactory_Access;
   function getInstance return OpenGLTextureFactory_Access;
   procedure getInstance;
   procedure load (This : in out OpenGLTextureFactory; gl : GL10_Access; target : Integer; level : Integer; image : Image_Access; border : Integer; flip : Boolean);

end org.platform.opengl.OpenGLTextureFactory_Package;


