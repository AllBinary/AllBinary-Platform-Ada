--  Generated Code Do Not Modify

limited with org.platform.opengl.OpenGLGLU_Package;
package org.platform.opengl.OpenGLGLU_Package_References is
   type OpenGLGLU_Access is access all org.platform.opengl.OpenGLGLU_Package.OpenGLGLU'Class;
   type OpenGLGLU_Access_Array is array (Natural range <>) of OpenGLGLU_Access;
   type OpenGLGLU_Access_Array_Access is access all OpenGLGLU_Access_Array;
   type OpenGLGLU_Access_Array_Access_Array is array (Natural range <>) of OpenGLGLU_Access_Array_Access;
   type OpenGLGLU_Access_Array_Access_Array_Access is access all OpenGLGLU_Access_Array_Access_Array;
end org.platform.opengl.OpenGLGLU_Package_References;

with org.platform.opengl.OpenGLGLU_Package_References;
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

package org.platform.opengl.OpenGLGLU_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLGLU_Access is org.platform.opengl.OpenGLGLU_Package_References.OpenGLGLU_Access;
   function "=" (Left, Right : OpenGLGLU_Access) return Boolean renames org.platform.opengl.OpenGLGLU_Package_References."=";
   subtype OpenGLGLU_Access_Array is org.platform.opengl.OpenGLGLU_Package_References.OpenGLGLU_Access_Array;
   function "=" (Left, Right : OpenGLGLU_Access_Array) return Boolean renames org.platform.opengl.OpenGLGLU_Package_References."=";
   subtype OpenGLGLU_Access_Array_Access is org.platform.opengl.OpenGLGLU_Package_References.OpenGLGLU_Access_Array_Access;
   function "=" (Left, Right : OpenGLGLU_Access_Array_Access) return Boolean renames org.platform.opengl.OpenGLGLU_Package_References."=";
   subtype OpenGLGLU_Access_Array_Access_Array is org.platform.opengl.OpenGLGLU_Package_References.OpenGLGLU_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLGLU_Access_Array_Access_Array) return Boolean renames org.platform.opengl.OpenGLGLU_Package_References."=";
   subtype OpenGLGLU_Access_Array_Access_Array_Access is org.platform.opengl.OpenGLGLU_Package_References.OpenGLGLU_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLGLU_Access_Array_Access_Array_Access) return Boolean renames org.platform.opengl.OpenGLGLU_Package_References."=";

   type OpenGLGLU is new Java_Object with null record;
   instance : OpenGLGLU_Access;

   procedure Initialize (This : in out OpenGLGLU'Class);
   function Create return OpenGLGLU_Access;
   function getInstance return OpenGLGLU_Access;
   procedure gluLookAt (This : in out OpenGLGLU; gl_Param : access GL10_Package.GL10'Class; eyeX : Float; eyeY : Float; eyeZ : Float; centerX : Float; centerY : Float; centerZ : Float; upX : Float; upY : Float; upZ : Float);
   function gluProject (This : in out OpenGLGLU; gl_Param : access GL10_Package.GL10'Class; objX : Float; objY : Float; objZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; win : Float_Array_Access; winOffset : Integer) return Integer;
   procedure gluProject (This : in out OpenGLGLU; gl_Param : access GL10_Package.GL10'Class; objX : Float; objY : Float; objZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; win : Float_Array_Access; winOffset : Integer);
   function gluUnProject (This : in out OpenGLGLU; gl_Param : access GL10_Package.GL10'Class; winX : Float; winY : Float; winZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; obj : Float_Array_Access; objOffset : Integer) return Integer;
   procedure gluUnProject (This : in out OpenGLGLU; gl_Param : access GL10_Package.GL10'Class; winX : Float; winY : Float; winZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; obj : Float_Array_Access; objOffset : Integer);
   procedure glFrustumf (This : in out OpenGLGLU; gl_Param : access GL10_Package.GL10'Class; lt : Float; rt : Float; btm : Float; top : Float; zNear : Float; zFar : Float);

end org.platform.opengl.OpenGLGLU_Package;


