--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;
package org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References is
   type NullOpenGLProcessorFactory_Access is access all org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package.NullOpenGLProcessorFactory'Class;
   type NullOpenGLProcessorFactory_Access_Array is array (Natural range <>) of NullOpenGLProcessorFactory_Access;
   type NullOpenGLProcessorFactory_Access_Array_Access is access all NullOpenGLProcessorFactory_Access_Array;
   type NullOpenGLProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of NullOpenGLProcessorFactory_Access_Array_Access;
   type NullOpenGLProcessorFactory_Access_Array_Access_Array_Access is access all NullOpenGLProcessorFactory_Access_Array_Access_Array;
   type NullOpenGLProcessorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullOpenGLProcessorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : NullOpenGLProcessorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullOpenGLProcessorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullOpenGLProcessorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullOpenGLProcessorFactory_Access_Array_Access is (if Value /= null and then Value.all in NullOpenGLProcessorFactory_Access_Array_Object'Class then NullOpenGLProcessorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type NullOpenGLProcessorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullOpenGLProcessorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullOpenGLProcessorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullOpenGLProcessorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullOpenGLProcessorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullOpenGLProcessorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullOpenGLProcessorFactory_Access_Array_Access_Array_Object'Class then NullOpenGLProcessorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References;

with org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package_References;

package org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package is

   package Reference_Types is
   subtype OpenGLProcessor_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access;
   use type OpenGLProcessor_Access;
   subtype OpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array;
   use type OpenGLProcessor_Access_Array;
   subtype OpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access;
   use type OpenGLProcessor_Access_Array_Access;
   subtype OpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array;
   use type OpenGLProcessor_Access_Array_Access_Array;
   subtype OpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array_Access;
   use type OpenGLProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullOpenGLProcessorFactory_Access is org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References.NullOpenGLProcessorFactory_Access;
   function "=" (Left, Right : NullOpenGLProcessorFactory_Access) return Boolean renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References."=";
   subtype NullOpenGLProcessorFactory_Access_Array is org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References.NullOpenGLProcessorFactory_Access_Array;
   function "=" (Left, Right : NullOpenGLProcessorFactory_Access_Array) return Boolean renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References."=";
   subtype NullOpenGLProcessorFactory_Access_Array_Access is org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References.NullOpenGLProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : NullOpenGLProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References."=";
   function Java_Box (Value : NullOpenGLProcessorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_NullOpenGLProcessorFactory_Access_Array (Value : access Java_Object'Class) return NullOpenGLProcessorFactory_Access_Array_Access renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References.Java_Unbox_NullOpenGLProcessorFactory_Access_Array;
   subtype NullOpenGLProcessorFactory_Access_Array_Access_Array is org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References.NullOpenGLProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NullOpenGLProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References."=";
   subtype NullOpenGLProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References.NullOpenGLProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullOpenGLProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References."=";
   function Java_Box (Value : NullOpenGLProcessorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_NullOpenGLProcessorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return NullOpenGLProcessorFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package_References.Java_Unbox_NullOpenGLProcessorFactory_Access_Array_Access_Array;

   type NullOpenGLProcessorFactory is new Java_Object with null record;
   instance : OpenGLProcessor_Access;

   procedure Initialize (This : in out NullOpenGLProcessorFactory'Class);
   function Create return NullOpenGLProcessorFactory_Access;
   function getInstance return OpenGLProcessor_Access;

end org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;


