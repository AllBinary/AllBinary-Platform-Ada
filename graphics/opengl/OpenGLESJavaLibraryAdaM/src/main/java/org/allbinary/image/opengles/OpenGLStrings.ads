--  Generated Code Do Not Modify

limited with org.allbinary.image.opengles.OpenGLStrings_Package;
package org.allbinary.image.opengles.OpenGLStrings_Package_References is
   type OpenGLStrings_Access is access all org.allbinary.image.opengles.OpenGLStrings_Package.OpenGLStrings'Class;
   type OpenGLStrings_Access_Array is array (Natural range <>) of OpenGLStrings_Access;
   type OpenGLStrings_Access_Array_Access is access all OpenGLStrings_Access_Array;
   type OpenGLStrings_Access_Array_Access_Array is array (Natural range <>) of OpenGLStrings_Access_Array_Access;
   type OpenGLStrings_Access_Array_Access_Array_Access is access all OpenGLStrings_Access_Array_Access_Array;
end org.allbinary.image.opengles.OpenGLStrings_Package_References;

with org.allbinary.image.opengles.OpenGLStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.image.opengles.OpenGLStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLStrings_Access is org.allbinary.image.opengles.OpenGLStrings_Package_References.OpenGLStrings_Access;
   function "=" (Left, Right : OpenGLStrings_Access) return Boolean renames org.allbinary.image.opengles.OpenGLStrings_Package_References."=";
   subtype OpenGLStrings_Access_Array is org.allbinary.image.opengles.OpenGLStrings_Package_References.OpenGLStrings_Access_Array;
   function "=" (Left, Right : OpenGLStrings_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLStrings_Package_References."=";
   subtype OpenGLStrings_Access_Array_Access is org.allbinary.image.opengles.OpenGLStrings_Package_References.OpenGLStrings_Access_Array_Access;
   function "=" (Left, Right : OpenGLStrings_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLStrings_Package_References."=";
   subtype OpenGLStrings_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLStrings_Package_References.OpenGLStrings_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLStrings_Package_References."=";
   subtype OpenGLStrings_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLStrings_Package_References.OpenGLStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLStrings_Package_References."=";

   type OpenGLStrings is new Java_Object with record
      GL_ERROR_LABEL : Unbounded_String;
      SET : Unbounded_String;
   end record;
   instance : OpenGLStrings_Access;

   procedure Initialize (This : in out OpenGLStrings'Class);
   function Create return OpenGLStrings_Access;
   function getInstance return OpenGLStrings_Access;

end org.allbinary.image.opengles.OpenGLStrings_Package;


