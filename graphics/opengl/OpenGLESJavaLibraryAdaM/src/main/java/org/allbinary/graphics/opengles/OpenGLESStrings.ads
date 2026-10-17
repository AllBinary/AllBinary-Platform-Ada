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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package org.allbinary.graphics.opengles.OpenGLESStrings_Package is


   type OpenGLESStrings is tagged;
   type OpenGLESStrings_Access is access all OpenGLESStrings'Class;
   type OpenGLESStrings_Access_Array is array (Natural range <>) of OpenGLESStrings_Access;
   type OpenGLESStrings_Access_Array_Access is access all OpenGLESStrings_Access_Array;

   type OpenGLESStrings is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLESStrings'Class);
   function Create return OpenGLESStrings_Access;
   procedure set (This : in out OpenGLESStrings; gl_Param : access GL10'Class);
   procedure initFont (This : in out OpenGLESStrings; gl_Param : access GL10'Class; width : Integer; height : Integer);
   procedure update (This : in out OpenGLESStrings; gl_Param : access GL10'Class; width : Integer; height : Integer);
   procedure drawChar (This : in out OpenGLESStrings; gl_Param : access GL10'Class; graphics_Param : access Graphics'Class; character_Id : Character; x : Integer; y : Integer; anchor : Integer);
   procedure drawChars (This : in out OpenGLESStrings; gl_Param : access GL10'Class; graphics_Param : access Graphics'Class; data : Character_Array_Access; offset : Integer; length : Integer; x : Integer; y : Integer; anchor : Integer);
   procedure drawString (This : in out OpenGLESStrings; gl_Param : access GL10'Class; graphics_Param : access Graphics'Class; string_Id : Unbounded_String; x : Integer; y : Integer; anchor : Integer);
   procedure drawSubstring (This : in out OpenGLESStrings; gl_Param : access GL10'Class; graphics_Param : access Graphics'Class; string_Id : Unbounded_String; offset : Integer; len : Integer; x : Integer; y : Integer; anchor : Integer);
   function charWidth (This : in out OpenGLESStrings; ch : Character) return Integer;
   procedure charWidth (This : in out OpenGLESStrings; ch : Character);
   function charsWidth (This : in out OpenGLESStrings; ch : Character_Array_Access; offset : Integer; length : Integer) return Integer;
   procedure charsWidth (This : in out OpenGLESStrings; ch : Character_Array_Access; offset : Integer; length : Integer);
   function stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String) return Integer;
   procedure stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String);
   function stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String; offset : Integer; len : Integer) return Integer;
   procedure stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String; offset : Integer; len : Integer);

end org.allbinary.graphics.opengles.OpenGLESStrings_Package;


