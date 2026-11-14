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

with AllBinary_Java;
limited with org.allbinary.image.opengles.OpenGLESImageDraw_Package;
package org.allbinary.image.opengles.OpenGLESImageDraw_Package_References is
   type OpenGLESImageDraw_Access is access all org.allbinary.image.opengles.OpenGLESImageDraw_Package.OpenGLESImageDraw'Class;
   type OpenGLESImageDraw_Access_Array is array (Natural range <>) of OpenGLESImageDraw_Access;
   type OpenGLESImageDraw_Access_Array_Access is access all OpenGLESImageDraw_Access_Array;
   type OpenGLESImageDraw_Access_Array_Access_Array is array (Natural range <>) of OpenGLESImageDraw_Access_Array_Access;
   type OpenGLESImageDraw_Access_Array_Access_Array_Access is access all OpenGLESImageDraw_Access_Array_Access_Array;
   type OpenGLESImageDraw_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESImageDraw_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESImageDraw_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESImageDraw_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESImageDraw_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESImageDraw_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESImageDraw_Access_Array_Object'Class then OpenGLESImageDraw_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLESImageDraw_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESImageDraw_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESImageDraw_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESImageDraw_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESImageDraw_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESImageDraw_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESImageDraw_Access_Array_Access_Array_Object'Class then OpenGLESImageDraw_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.opengles.OpenGLESImageDraw_Package_References;

with org.allbinary.image.opengles.OpenGLESImageDraw_Package_References;
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

package org.allbinary.image.opengles.OpenGLESImageDraw_Package is

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


   subtype OpenGLESImageDraw_Access is org.allbinary.image.opengles.OpenGLESImageDraw_Package_References.OpenGLESImageDraw_Access;
   function "=" (Left, Right : OpenGLESImageDraw_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageDraw_Package_References."=";
   subtype OpenGLESImageDraw_Access_Array is org.allbinary.image.opengles.OpenGLESImageDraw_Package_References.OpenGLESImageDraw_Access_Array;
   function "=" (Left, Right : OpenGLESImageDraw_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageDraw_Package_References."=";
   subtype OpenGLESImageDraw_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageDraw_Package_References.OpenGLESImageDraw_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageDraw_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageDraw_Package_References."=";
   function Java_Box (Value : OpenGLESImageDraw_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLESImageDraw_Package_References.Java_Box;
   function Java_Unbox_OpenGLESImageDraw_Access_Array (Value : access Java_Object'Class) return OpenGLESImageDraw_Access_Array_Access renames org.allbinary.image.opengles.OpenGLESImageDraw_Package_References.Java_Unbox_OpenGLESImageDraw_Access_Array;
   subtype OpenGLESImageDraw_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageDraw_Package_References.OpenGLESImageDraw_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImageDraw_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageDraw_Package_References."=";
   subtype OpenGLESImageDraw_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageDraw_Package_References.OpenGLESImageDraw_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageDraw_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageDraw_Package_References."=";
   function Java_Box (Value : OpenGLESImageDraw_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLESImageDraw_Package_References.Java_Box;
   function Java_Unbox_OpenGLESImageDraw_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLESImageDraw_Access_Array_Access_Array_Access renames org.allbinary.image.opengles.OpenGLESImageDraw_Package_References.Java_Unbox_OpenGLESImageDraw_Access_Array_Access_Array;

   type OpenGLESImageDraw is new Java_Object with null record;
   instance : OpenGLESImageDraw_Access;

   procedure Initialize (This : in out OpenGLESImageDraw'Class);
   function Create return OpenGLESImageDraw_Access;
   function getInstance return OpenGLESImageDraw_Access;
   procedure drawRegion (This : in out OpenGLESImageDraw; gl_Param : access GL10_Package.GL10'Class; viewHeight : Integer; x_src : Float; y_src : Float; width : Float; height : Float; x : Integer; y : Integer; z : Integer);
   procedure draw (This : in out OpenGLESImageDraw; gl_Param : access GL10_Package.GL10'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.image.opengles.OpenGLESImageDraw_Package;


