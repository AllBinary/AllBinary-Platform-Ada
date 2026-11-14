--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.device.OpenGLESGraphicsFactory_Package;
package org.allbinary.device.OpenGLESGraphicsFactory_Package_References is
   type OpenGLESGraphicsFactory_Access is access all org.allbinary.device.OpenGLESGraphicsFactory_Package.OpenGLESGraphicsFactory'Class;
   type OpenGLESGraphicsFactory_Access_Array is array (Natural range <>) of OpenGLESGraphicsFactory_Access;
   type OpenGLESGraphicsFactory_Access_Array_Access is access all OpenGLESGraphicsFactory_Access_Array;
   type OpenGLESGraphicsFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLESGraphicsFactory_Access_Array_Access;
   type OpenGLESGraphicsFactory_Access_Array_Access_Array_Access is access all OpenGLESGraphicsFactory_Access_Array_Access_Array;
   type OpenGLESGraphicsFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESGraphicsFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESGraphicsFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESGraphicsFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESGraphicsFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESGraphicsFactory_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESGraphicsFactory_Access_Array_Object'Class then OpenGLESGraphicsFactory_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLESGraphicsFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESGraphicsFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESGraphicsFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESGraphicsFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESGraphicsFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESGraphicsFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESGraphicsFactory_Access_Array_Access_Array_Object'Class then OpenGLESGraphicsFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.device.OpenGLESGraphicsFactory_Package_References;

with org.allbinary.device.OpenGLESGraphicsFactory_Package_References;
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

package org.allbinary.device.OpenGLESGraphicsFactory_Package is

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


   subtype OpenGLESGraphicsFactory_Access is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   subtype OpenGLESGraphicsFactory_Access_Array is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   subtype OpenGLESGraphicsFactory_Access_Array_Access is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   function Java_Box (Value : OpenGLESGraphicsFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLESGraphicsFactory_Access_Array (Value : access Java_Object'Class) return OpenGLESGraphicsFactory_Access_Array_Access renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References.Java_Unbox_OpenGLESGraphicsFactory_Access_Array;
   subtype OpenGLESGraphicsFactory_Access_Array_Access_Array is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   subtype OpenGLESGraphicsFactory_Access_Array_Access_Array_Access is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphicsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References."=";
   function Java_Box (Value : OpenGLESGraphicsFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLESGraphicsFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLESGraphicsFactory_Access_Array_Access_Array_Access renames org.allbinary.device.OpenGLESGraphicsFactory_Package_References.Java_Unbox_OpenGLESGraphicsFactory_Access_Array_Access_Array;

   type OpenGLESGraphicsFactory is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLESGraphicsFactory'Class);
   function Create return OpenGLESGraphicsFactory_Access;
   function getOpenGLESGraphicsInstance (This : in out OpenGLESGraphicsFactory) return OpenGLESGraphics_Access;

end org.allbinary.device.OpenGLESGraphicsFactory_Package;


