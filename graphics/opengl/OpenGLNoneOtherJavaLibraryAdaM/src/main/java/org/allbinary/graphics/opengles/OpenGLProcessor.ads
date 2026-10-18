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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.graphics.opengles.OpenGLProcessor_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type OpenGLProcessor is tagged;
   type OpenGLProcessor_Access is access all OpenGLProcessor'Class;
   type OpenGLProcessor_Access_Array is array (Natural range <>) of OpenGLProcessor_Access;
   type OpenGLProcessor_Access_Array_Access is access all OpenGLProcessor_Access_Array;

   type OpenGLProcessor is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out OpenGLProcessor'Class);
   function Create return OpenGLProcessor_Access;
   procedure process (This : in out OpenGLProcessor; gl_Param : access GL10_Package.GL10'Class);

end org.allbinary.graphics.opengles.OpenGLProcessor_Package;


