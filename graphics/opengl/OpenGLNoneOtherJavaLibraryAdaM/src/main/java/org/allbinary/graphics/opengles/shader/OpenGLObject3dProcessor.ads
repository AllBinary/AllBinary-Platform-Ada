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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type OpenGLObject3dProcessor is tagged;
   type OpenGLObject3dProcessor_Access is access all OpenGLObject3dProcessor'Class;
   type OpenGLObject3dProcessor_Access_Array is array (Natural range <>) of OpenGLObject3dProcessor_Access;
   type OpenGLObject3dProcessor_Access_Array_Access is access all OpenGLObject3dProcessor_Access_Array;

   type OpenGLObject3dProcessor is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out OpenGLObject3dProcessor'Class);
   function Create return OpenGLObject3dProcessor_Access;
   procedure process (This : in out OpenGLObject3dProcessor; gl_Param : access GL10_Package.GL10'Class; object3d_Param : access Java_Object'Class);
   procedure process (This : in out OpenGLObject3dProcessor; gl_Param : access GL10_Package.GL10'Class; object3d_Param : access Java_Object'Class; index : Integer);

end org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;


