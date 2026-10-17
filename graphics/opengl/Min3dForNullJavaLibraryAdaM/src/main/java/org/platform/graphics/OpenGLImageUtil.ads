--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.image.opengles.OpenGLImageUtilBase_Package; use org.allbinary.image.opengles.OpenGLImageUtilBase_Package;

package org.platform.graphics.OpenGLImageUtil_Package is

   package OpenGLImageUtilBase_Package renames org.allbinary.image.opengles.OpenGLImageUtilBase_Package;

   type OpenGLImageUtil is tagged;
   type OpenGLImageUtil_Access is access all OpenGLImageUtil'Class;
   type OpenGLImageUtil_Access_Array is array (Natural range <>) of OpenGLImageUtil_Access;
   type OpenGLImageUtil_Access_Array_Access is access all OpenGLImageUtil_Access_Array;

   type OpenGLImageUtil is new OpenGLImageUtilBase with null record;
   instance : OpenGLImageUtil_Access;

   procedure Initialize (This : in out OpenGLImageUtil'Class);
   function Create return OpenGLImageUtil_Access;
   function getInstance return OpenGLImageUtil_Access;
   procedure getInstance;

end org.platform.graphics.OpenGLImageUtil_Package;


