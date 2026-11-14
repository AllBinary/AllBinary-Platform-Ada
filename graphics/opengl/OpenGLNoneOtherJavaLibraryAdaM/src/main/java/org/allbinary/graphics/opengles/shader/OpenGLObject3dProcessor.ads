--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;
package org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References is
   type OpenGLObject3dProcessor_Access is access all org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package.OpenGLObject3dProcessor'Class;
   type OpenGLObject3dProcessor_Access_Array is array (Natural range <>) of OpenGLObject3dProcessor_Access;
   type OpenGLObject3dProcessor_Access_Array_Access is access all OpenGLObject3dProcessor_Access_Array;
   type OpenGLObject3dProcessor_Access_Array_Access_Array is array (Natural range <>) of OpenGLObject3dProcessor_Access_Array_Access;
   type OpenGLObject3dProcessor_Access_Array_Access_Array_Access is access all OpenGLObject3dProcessor_Access_Array_Access_Array;
   type OpenGLObject3dProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLObject3dProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLObject3dProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLObject3dProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLObject3dProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLObject3dProcessor_Access_Array_Access is (if Value /= null and then Value.all in OpenGLObject3dProcessor_Access_Array_Object'Class then OpenGLObject3dProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLObject3dProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLObject3dProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLObject3dProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLObject3dProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLObject3dProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLObject3dProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLObject3dProcessor_Access_Array_Access_Array_Object'Class then OpenGLObject3dProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References;

with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   use type GL10_Access;
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   use type GL10_Access_Array;
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   use type GL10_Access_Array_Access;
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   use type GL10_Access_Array_Access_Array;
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   use type GL10_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLObject3dProcessor_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   subtype OpenGLObject3dProcessor_Access_Array is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   subtype OpenGLObject3dProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   function Java_Box (Value : OpenGLObject3dProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.Java_Box;
   function Java_Unbox_OpenGLObject3dProcessor_Access_Array (Value : access Java_Object'Class) return OpenGLObject3dProcessor_Access_Array_Access renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.Java_Unbox_OpenGLObject3dProcessor_Access_Array;
   subtype OpenGLObject3dProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   subtype OpenGLObject3dProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLObject3dProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References."=";
   function Java_Box (Value : OpenGLObject3dProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.Java_Box;
   function Java_Unbox_OpenGLObject3dProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLObject3dProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.Java_Unbox_OpenGLObject3dProcessor_Access_Array_Access_Array;

   type OpenGLObject3dProcessor is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out OpenGLObject3dProcessor'Class);
   function Create return OpenGLObject3dProcessor_Access;
   procedure process (This : in out OpenGLObject3dProcessor; gl_Param : access GL10_Package.GL10'Class; object3d_Param : access Java_Object'Class);
   procedure process (This : in out OpenGLObject3dProcessor; gl_Param : access GL10_Package.GL10'Class; object3d_Param : access Java_Object'Class; index : Integer);

end org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;


