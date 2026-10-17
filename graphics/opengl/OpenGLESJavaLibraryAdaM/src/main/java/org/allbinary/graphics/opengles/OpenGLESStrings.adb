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


package body org.allbinary.graphics.opengles.OpenGLESStrings_Package is

   procedure Initialize_Fields (This : in out OpenGLESStrings'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESStrings_Access is
      This : constant OpenGLESStrings_Access := new OpenGLESStrings;
   begin
      OpenGLESStrings_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure set (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end set;

   procedure initFont (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; width : Integer; height : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end initFont;

   --  throws Exception
   procedure update (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; width : Integer; height : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end update;

   procedure drawChar (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; graphics_Param : access Graphics_Package.Graphics'Class; character_Id : Character; x : Integer; y : Integer; anchor : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end drawChar;

   procedure drawChars (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; graphics_Param : access Graphics_Package.Graphics'Class; data : Character_Array_Access; offset : Integer; length : Integer; x : Integer; y : Integer; anchor : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end drawChars;

   procedure drawString (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; x : Integer; y : Integer; anchor : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end drawString;

   procedure drawSubstring (This : in out OpenGLESStrings; gl_Param : access GL10_Package.GL10'Class; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; offset : Integer; len : Integer; x : Integer; y : Integer; anchor : Integer) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end drawSubstring;

   function charWidth (This : in out OpenGLESStrings; ch : Character) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end charWidth;

   function charsWidth (This : in out OpenGLESStrings; ch : Character_Array_Access; offset : Integer; length : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end charsWidth;

   function stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end stringWidth;

   function stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String; offset : Integer; len : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end stringWidth;

   procedure charWidth (This : in out OpenGLESStrings; ch : Character) is
      Java_Result : constant Integer := OpenGLESStrings'Class (This).charWidth (ch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end charWidth;

   procedure charsWidth (This : in out OpenGLESStrings; ch : Character_Array_Access; offset : Integer; length : Integer) is
      Java_Result : constant Integer := OpenGLESStrings'Class (This).charsWidth (ch, offset, length);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end charsWidth;

   procedure stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String) is
      Java_Result : constant Integer := OpenGLESStrings'Class (This).stringWidth (string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end stringWidth;

   procedure stringWidth (This : in out OpenGLESStrings; string_Id : Unbounded_String; offset : Integer; len : Integer) is
      Java_Result : constant Integer := OpenGLESStrings'Class (This).stringWidth (string_Id, offset, len);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end stringWidth;

end org.allbinary.graphics.opengles.OpenGLESStrings_Package;


