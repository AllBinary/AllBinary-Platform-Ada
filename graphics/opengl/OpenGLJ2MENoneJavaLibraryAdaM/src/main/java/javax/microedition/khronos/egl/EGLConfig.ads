--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package javax.microedition.khronos.egl.EGLConfig_Package is


   type EGLConfig is tagged;
   type EGLConfig_Access is access all EGLConfig'Class;
   type EGLConfig_Access_Array is array (Natural range <>) of EGLConfig_Access;
   type EGLConfig_Access_Array_Access is access all EGLConfig_Access_Array;
   type EGLConfig_Access_Array_Access_Array is array (Natural range <>) of EGLConfig_Access_Array_Access;
   type EGLConfig_Access_Array_Access_Array_Access is access all EGLConfig_Access_Array_Access_Array;

   type EGLConfig is new Java_Object with null record;

   procedure Initialize (This : in out EGLConfig'Class);
   function Create return EGLConfig_Access;

end javax.microedition.khronos.egl.EGLConfig_Package;


