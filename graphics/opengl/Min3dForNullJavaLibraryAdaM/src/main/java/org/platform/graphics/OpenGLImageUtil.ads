--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.platform.graphics.OpenGLImageUtil_Package;
package org.platform.graphics.OpenGLImageUtil_Package_References is
   type OpenGLImageUtil_Access is access all org.platform.graphics.OpenGLImageUtil_Package.OpenGLImageUtil'Class;
   type OpenGLImageUtil_Access_Array is array (Natural range <>) of OpenGLImageUtil_Access;
   type OpenGLImageUtil_Access_Array_Access is access all OpenGLImageUtil_Access_Array;
   type OpenGLImageUtil_Access_Array_Access_Array is array (Natural range <>) of OpenGLImageUtil_Access_Array_Access;
   type OpenGLImageUtil_Access_Array_Access_Array_Access is access all OpenGLImageUtil_Access_Array_Access_Array;
   type OpenGLImageUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLImageUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLImageUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLImageUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLImageUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLImageUtil_Access_Array_Access is (if Value /= null and then Value.all in OpenGLImageUtil_Access_Array_Object'Class then OpenGLImageUtil_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLImageUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLImageUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLImageUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLImageUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLImageUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLImageUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLImageUtil_Access_Array_Access_Array_Object'Class then OpenGLImageUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.platform.graphics.OpenGLImageUtil_Package_References;

with org.platform.graphics.OpenGLImageUtil_Package_References;
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

   package OpenGLImageUtilBase_Package renames Standard.org.allbinary.image.opengles.OpenGLImageUtilBase_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLImageUtil_Access is org.platform.graphics.OpenGLImageUtil_Package_References.OpenGLImageUtil_Access;
   function "=" (Left, Right : OpenGLImageUtil_Access) return Boolean renames org.platform.graphics.OpenGLImageUtil_Package_References."=";
   subtype OpenGLImageUtil_Access_Array is org.platform.graphics.OpenGLImageUtil_Package_References.OpenGLImageUtil_Access_Array;
   function "=" (Left, Right : OpenGLImageUtil_Access_Array) return Boolean renames org.platform.graphics.OpenGLImageUtil_Package_References."=";
   subtype OpenGLImageUtil_Access_Array_Access is org.platform.graphics.OpenGLImageUtil_Package_References.OpenGLImageUtil_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageUtil_Access_Array_Access) return Boolean renames org.platform.graphics.OpenGLImageUtil_Package_References."=";
   function Java_Box (Value : OpenGLImageUtil_Access_Array_Access) return Java_Object_Access renames org.platform.graphics.OpenGLImageUtil_Package_References.Java_Box;
   function Java_Unbox_OpenGLImageUtil_Access_Array (Value : access Java_Object'Class) return OpenGLImageUtil_Access_Array_Access renames org.platform.graphics.OpenGLImageUtil_Package_References.Java_Unbox_OpenGLImageUtil_Access_Array;
   subtype OpenGLImageUtil_Access_Array_Access_Array is org.platform.graphics.OpenGLImageUtil_Package_References.OpenGLImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLImageUtil_Access_Array_Access_Array) return Boolean renames org.platform.graphics.OpenGLImageUtil_Package_References."=";
   subtype OpenGLImageUtil_Access_Array_Access_Array_Access is org.platform.graphics.OpenGLImageUtil_Package_References.OpenGLImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.platform.graphics.OpenGLImageUtil_Package_References."=";
   function Java_Box (Value : OpenGLImageUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.platform.graphics.OpenGLImageUtil_Package_References.Java_Box;
   function Java_Unbox_OpenGLImageUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLImageUtil_Access_Array_Access_Array_Access renames org.platform.graphics.OpenGLImageUtil_Package_References.Java_Unbox_OpenGLImageUtil_Access_Array_Access_Array;

   type OpenGLImageUtil is new OpenGLImageUtilBase with null record;
   instance : OpenGLImageUtil_Access;

   procedure Initialize (This : in out OpenGLImageUtil'Class);
   function Create return OpenGLImageUtil_Access;
   function getInstance return OpenGLImageUtil_Access;

end org.platform.graphics.OpenGLImageUtil_Package;


