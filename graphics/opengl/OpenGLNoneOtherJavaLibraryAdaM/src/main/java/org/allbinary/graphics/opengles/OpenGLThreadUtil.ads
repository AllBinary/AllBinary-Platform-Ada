--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLThreadUtil_Package;
package org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References is
   type OpenGLThreadUtil_Access is access all org.allbinary.graphics.opengles.OpenGLThreadUtil_Package.OpenGLThreadUtil'Class;
   type OpenGLThreadUtil_Access_Array is array (Natural range <>) of OpenGLThreadUtil_Access;
   type OpenGLThreadUtil_Access_Array_Access is access all OpenGLThreadUtil_Access_Array;
   type OpenGLThreadUtil_Access_Array_Access_Array is array (Natural range <>) of OpenGLThreadUtil_Access_Array_Access;
   type OpenGLThreadUtil_Access_Array_Access_Array_Access is access all OpenGLThreadUtil_Access_Array_Access_Array;
   type OpenGLThreadUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLThreadUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLThreadUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLThreadUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLThreadUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLThreadUtil_Access_Array_Access is (if Value /= null and then Value.all in OpenGLThreadUtil_Access_Array_Object'Class then OpenGLThreadUtil_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLThreadUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLThreadUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLThreadUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLThreadUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLThreadUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLThreadUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLThreadUtil_Access_Array_Access_Array_Object'Class then OpenGLThreadUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References;

with org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.opengles.OpenGLThreadUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLThreadUtil_Access is org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References.OpenGLThreadUtil_Access;
   function "=" (Left, Right : OpenGLThreadUtil_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References."=";
   subtype OpenGLThreadUtil_Access_Array is org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References.OpenGLThreadUtil_Access_Array;
   function "=" (Left, Right : OpenGLThreadUtil_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References."=";
   subtype OpenGLThreadUtil_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References.OpenGLThreadUtil_Access_Array_Access;
   function "=" (Left, Right : OpenGLThreadUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References."=";
   function Java_Box (Value : OpenGLThreadUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References.Java_Box;
   function Java_Unbox_OpenGLThreadUtil_Access_Array (Value : access Java_Object'Class) return OpenGLThreadUtil_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References.Java_Unbox_OpenGLThreadUtil_Access_Array;
   subtype OpenGLThreadUtil_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References.OpenGLThreadUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLThreadUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References."=";
   subtype OpenGLThreadUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References.OpenGLThreadUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLThreadUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References."=";
   function Java_Box (Value : OpenGLThreadUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References.Java_Box;
   function Java_Unbox_OpenGLThreadUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLThreadUtil_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLThreadUtil_Package_References.Java_Unbox_OpenGLThreadUtil_Access_Array_Access_Array;

   type OpenGLThreadUtil is new Java_Object with null record;
   instance : OpenGLThreadUtil_Access;

   procedure Initialize (This : in out OpenGLThreadUtil'Class);
   function Create return OpenGLThreadUtil_Access;
   function getInstance return OpenGLThreadUtil_Access;
   procedure set (This : in out OpenGLThreadUtil; glSurfaceView_Param : access Java_Object'Class);
   procedure onPause (This : in out OpenGLThreadUtil);
   procedure onResume (This : in out OpenGLThreadUtil);
   procedure set (This : in out OpenGLThreadUtil; Value : Unbounded_String);

end org.allbinary.graphics.opengles.OpenGLThreadUtil_Package;


