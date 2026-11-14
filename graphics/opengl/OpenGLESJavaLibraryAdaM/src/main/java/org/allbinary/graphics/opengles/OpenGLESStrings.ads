--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
limited with org.allbinary.graphics.opengles.OpenGLESStrings_Package;
package org.allbinary.graphics.opengles.OpenGLESStrings_Package_References is
   type OpenGLESStrings_Access is access all org.allbinary.graphics.opengles.OpenGLESStrings_Package.OpenGLESStrings'Class;
   type OpenGLESStrings_Access_Array is array (Natural range <>) of OpenGLESStrings_Access;
   type OpenGLESStrings_Access_Array_Access is access all OpenGLESStrings_Access_Array;
   type OpenGLESStrings_Access_Array_Access_Array is array (Natural range <>) of OpenGLESStrings_Access_Array_Access;
   type OpenGLESStrings_Access_Array_Access_Array_Access is access all OpenGLESStrings_Access_Array_Access_Array;
   type OpenGLESStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESStrings_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESStrings_Access_Array_Object'Class then OpenGLESStrings_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLESStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESStrings_Access_Array_Access_Array_Object'Class then OpenGLESStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.OpenGLESStrings_Package_References;

with org.allbinary.graphics.opengles.OpenGLESStrings_Package_References;
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
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;

package org.allbinary.graphics.opengles.OpenGLESStrings_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
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
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLESStrings_Access is org.allbinary.graphics.opengles.OpenGLESStrings_Package_References.OpenGLESStrings_Access;
   function "=" (Left, Right : OpenGLESStrings_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLESStrings_Package_References."=";
   subtype OpenGLESStrings_Access_Array is org.allbinary.graphics.opengles.OpenGLESStrings_Package_References.OpenGLESStrings_Access_Array;
   function "=" (Left, Right : OpenGLESStrings_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLESStrings_Package_References."=";
   subtype OpenGLESStrings_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLESStrings_Package_References.OpenGLESStrings_Access_Array_Access;
   function "=" (Left, Right : OpenGLESStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLESStrings_Package_References."=";
   function Java_Box (Value : OpenGLESStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLESStrings_Package_References.Java_Box;
   function Java_Unbox_OpenGLESStrings_Access_Array (Value : access Java_Object'Class) return OpenGLESStrings_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLESStrings_Package_References.Java_Unbox_OpenGLESStrings_Access_Array;
   subtype OpenGLESStrings_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLESStrings_Package_References.OpenGLESStrings_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLESStrings_Package_References."=";
   subtype OpenGLESStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLESStrings_Package_References.OpenGLESStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLESStrings_Package_References."=";
   function Java_Box (Value : OpenGLESStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLESStrings_Package_References.Java_Box;
   function Java_Unbox_OpenGLESStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLESStrings_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLESStrings_Package_References.Java_Unbox_OpenGLESStrings_Access_Array_Access_Array;

   type OpenGLESStrings is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLESStrings'Class);
   function Create return OpenGLESStrings_Access;
   procedure set (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class);
   procedure initFont (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; width : Integer; height : Integer);
   procedure update (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; width : Integer; height : Integer);
   procedure drawChar (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; graphics_Param : access Graphics_Package.Graphics'Class; character_Id : Character; x : Integer; y : Integer; anchor : Integer);
   procedure drawChars (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; graphics_Param : access Graphics_Package.Graphics'Class; data : Character_Array_Access; offset : Integer; length : Integer; x : Integer; y : Integer; anchor : Integer);
   procedure drawString (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; x : Integer; y : Integer; anchor : Integer);
   procedure drawSubstring (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; offset : Integer; len : Integer; x : Integer; y : Integer; anchor : Integer);
   function charWidth (This : in out OpenGLESStrings; ch : Character) return Integer;
   procedure charWidth (This : in out OpenGLESStrings; ch : Character);
   function charsWidth (This : in out OpenGLESStrings; ch : Character_Array_Access; offset : Integer; length : Integer) return Integer;
   procedure charsWidth (This : in out OpenGLESStrings; ch : Character_Array_Access; offset : Integer; length : Integer);
   function stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String) return Integer;
   procedure stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String);
   function stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String; offset : Integer; len : Integer) return Integer;
   procedure stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String; offset : Integer; len : Integer);

end org.allbinary.graphics.opengles.OpenGLESStrings_Package;


