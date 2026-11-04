--  Generated Code Do Not Modify

limited with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
package org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References is
   type OpenGLSurfaceChangedInterface_Access is access all org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package.OpenGLSurfaceChangedInterface'Class;
   type OpenGLSurfaceChangedInterface_Access_Array is array (Natural range <>) of OpenGLSurfaceChangedInterface_Access;
   type OpenGLSurfaceChangedInterface_Access_Array_Access is access all OpenGLSurfaceChangedInterface_Access_Array;
   type OpenGLSurfaceChangedInterface_Access_Array_Access_Array is array (Natural range <>) of OpenGLSurfaceChangedInterface_Access_Array_Access;
   type OpenGLSurfaceChangedInterface_Access_Array_Access_Array_Access is access all OpenGLSurfaceChangedInterface_Access_Array_Access_Array;
end org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References;

with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;

package org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Reference_Types is
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   use type GL_Access;
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   use type GL_Access_Array;
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   use type GL_Access_Array_Access;
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   use type GL_Access_Array_Access_Array;
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   use type GL_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type OpenGLSurfaceChangedInterface is interface;
   subtype OpenGLSurfaceChangedInterface_Access is org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References.OpenGLSurfaceChangedInterface_Access;
   function "=" (Left, Right : OpenGLSurfaceChangedInterface_Access) return Boolean renames org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References."=";
   subtype OpenGLSurfaceChangedInterface_Access_Array is org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References.OpenGLSurfaceChangedInterface_Access_Array;
   function "=" (Left, Right : OpenGLSurfaceChangedInterface_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References."=";
   subtype OpenGLSurfaceChangedInterface_Access_Array_Access is org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References.OpenGLSurfaceChangedInterface_Access_Array_Access;
   function "=" (Left, Right : OpenGLSurfaceChangedInterface_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References."=";
   subtype OpenGLSurfaceChangedInterface_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References.OpenGLSurfaceChangedInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLSurfaceChangedInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References."=";
   subtype OpenGLSurfaceChangedInterface_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References.OpenGLSurfaceChangedInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLSurfaceChangedInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package_References."=";
   function Java_Object_Access_From_OpenGLSurfaceChangedInterface (Value : OpenGLSurfaceChangedInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure set (This : in out OpenGLSurfaceChangedInterface; gl_Param : access GL_Package.GL'Class) is abstract;

end org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;


