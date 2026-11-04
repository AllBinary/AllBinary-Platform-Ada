--  Generated Code Do Not Modify

limited with org.allbinary.device.OpenGLESNullGraphicsFactory_Package;
package org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References is
   type OpenGLESNullGraphicsFactory_Access is access all org.allbinary.device.OpenGLESNullGraphicsFactory_Package.OpenGLESNullGraphicsFactory'Class;
   type OpenGLESNullGraphicsFactory_Access_Array is array (Natural range <>) of OpenGLESNullGraphicsFactory_Access;
   type OpenGLESNullGraphicsFactory_Access_Array_Access is access all OpenGLESNullGraphicsFactory_Access_Array;
   type OpenGLESNullGraphicsFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLESNullGraphicsFactory_Access_Array_Access;
   type OpenGLESNullGraphicsFactory_Access_Array_Access_Array_Access is access all OpenGLESNullGraphicsFactory_Access_Array_Access_Array;
end org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References;

with org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.device.OpenGLESGraphics_Package;
with org.allbinary.device.OpenGLESGraphics_Package_References;

package org.allbinary.device.OpenGLESNullGraphicsFactory_Package is

   package Reference_Types is
   subtype OpenGLESGraphics_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access;
   use type OpenGLESGraphics_Access;
   subtype OpenGLESGraphics_Access_Array is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array;
   use type OpenGLESGraphics_Access_Array;
   subtype OpenGLESGraphics_Access_Array_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access;
   use type OpenGLESGraphics_Access_Array_Access;
   subtype OpenGLESGraphics_Access_Array_Access_Array is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access_Array;
   use type OpenGLESGraphics_Access_Array_Access_Array;
   subtype OpenGLESGraphics_Access_Array_Access_Array_Access is org.allbinary.device.OpenGLESGraphics_Package_References.OpenGLESGraphics_Access_Array_Access_Array_Access;
   use type OpenGLESGraphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLESNullGraphicsFactory_Access is org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References.OpenGLESNullGraphicsFactory_Access;
   function "=" (Left, Right : OpenGLESNullGraphicsFactory_Access) return Boolean renames org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References."=";
   subtype OpenGLESNullGraphicsFactory_Access_Array is org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References.OpenGLESNullGraphicsFactory_Access_Array;
   function "=" (Left, Right : OpenGLESNullGraphicsFactory_Access_Array) return Boolean renames org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References."=";
   subtype OpenGLESNullGraphicsFactory_Access_Array_Access is org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References.OpenGLESNullGraphicsFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLESNullGraphicsFactory_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References."=";
   subtype OpenGLESNullGraphicsFactory_Access_Array_Access_Array is org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References.OpenGLESNullGraphicsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESNullGraphicsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References."=";
   subtype OpenGLESNullGraphicsFactory_Access_Array_Access_Array_Access is org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References.OpenGLESNullGraphicsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESNullGraphicsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESNullGraphicsFactory_Package_References."=";

   type OpenGLESNullGraphicsFactory is new Java_Object with null record;
   instance : OpenGLESGraphics_Access;

   procedure Initialize (This : in out OpenGLESNullGraphicsFactory'Class);
   function Create return OpenGLESNullGraphicsFactory_Access;
   function getInstance return OpenGLESGraphics_Access;

end org.allbinary.device.OpenGLESNullGraphicsFactory_Package;


