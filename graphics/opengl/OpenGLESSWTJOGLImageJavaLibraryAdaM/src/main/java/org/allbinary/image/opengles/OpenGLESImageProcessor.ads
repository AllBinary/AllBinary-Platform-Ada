-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify

limited with org.allbinary.image.opengles.OpenGLESImageProcessor_Package;
package org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References is
   type OpenGLESImageProcessor_Access is access all org.allbinary.image.opengles.OpenGLESImageProcessor_Package.OpenGLESImageProcessor'Class;
   type OpenGLESImageProcessor_Access_Array is array (Natural range <>) of OpenGLESImageProcessor_Access;
   type OpenGLESImageProcessor_Access_Array_Access is access all OpenGLESImageProcessor_Access_Array;
   type OpenGLESImageProcessor_Access_Array_Access_Array is array (Natural range <>) of OpenGLESImageProcessor_Access_Array_Access;
   type OpenGLESImageProcessor_Access_Array_Access_Array_Access is access all OpenGLESImageProcessor_Access_Array_Access_Array;
end org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References;

with org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References;
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

package org.allbinary.image.opengles.OpenGLESImageProcessor_Package is

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


   subtype OpenGLESImageProcessor_Access is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access;
   function "=" (Left, Right : OpenGLESImageProcessor_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";
   subtype OpenGLESImageProcessor_Access_Array is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array;
   function "=" (Left, Right : OpenGLESImageProcessor_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";
   subtype OpenGLESImageProcessor_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageProcessor_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";
   subtype OpenGLESImageProcessor_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImageProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";
   subtype OpenGLESImageProcessor_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References.OpenGLESImageProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProcessor_Package_References."=";

   type OpenGLESImageProcessor is new Java_Object with null record;
   instance : OpenGLESImageProcessor_Access;

   procedure Initialize (This : in out OpenGLESImageProcessor'Class);
   function Create return OpenGLESImageProcessor_Access;
   function getInstance return OpenGLESImageProcessor_Access;
   procedure translate (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; translateX : Float; translateY : Float);
   procedure rotate (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; angle : Float);
   procedure scale (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; scaleX : Float; scaleY : Float);
   procedure colorMask (This : in out OpenGLESImageProcessor; gl_Param : access GL10_Package.GL10'Class; red : Float; green : Float; blue : Float; alpha : Float);

end org.allbinary.image.opengles.OpenGLESImageProcessor_Package;


