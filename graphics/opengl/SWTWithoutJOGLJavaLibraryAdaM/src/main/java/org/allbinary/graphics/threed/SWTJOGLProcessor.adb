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


package body org.allbinary.graphics.threed.SWTJOGLProcessor_Package is

   procedure Initialize_Fields (This : in out SWTJOGLProcessor'Class) is
   begin
      null;
      This.glHolder := GLHolder_Package.Create  --  Java anonymous class body: implement it as a named type
--          
--     procedure run (This : in out ; renderer : Java_Object_Access) is
--     begin
--              null;
--     end run;
;
   end Initialize_Fields;

   procedure Initialize (This : in out SWTJOGLProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SWTJOGLProcessor_Access is
      This : constant SWTJOGLProcessor_Access := new SWTJOGLProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return SWTJOGLProcessor_Access is
   begin
        return SWTJOGLProcessor_Package.instance;
   end getInstance;

   procedure init (This : in out SWTJOGLProcessor; display : Java_Object_Access; comp : Java_Object_Access) is
   begin
        null;
   end init;

   function isHolderCreated (This : in out SWTJOGLProcessor) return Boolean is
   begin
        return This.glHolder.isCreated;
   end isHolderCreated;

   procedure setRenderer (This : in out SWTJOGLProcessor; renderer : Java_Object_Access) is
   begin
        null;
   end setRenderer;

   function isJOGL (This : in out SWTJOGLProcessor) return Boolean is
   begin
        return False;
   end isJOGL;

   procedure createSurface (This : in out SWTJOGLProcessor) is
   begin
        null;
   end createSurface;

   procedure onSurfaceCreated (This : in out SWTJOGLProcessor) is
   begin
        null;
   end onSurfaceCreated;

   procedure onSurfaceChangedForEvent (This : in out SWTJOGLProcessor; event : Java_Object_Access) is
   begin
        null;
   end onSurfaceChangedForEvent;

   procedure onSurfaceChanged (This : in out SWTJOGLProcessor) is
   begin
        null;
   end onSurfaceChanged;

   procedure onSurfaceChangedWH (This : in out SWTJOGLProcessor; width : Integer; height : Integer) is
   begin
        null;
   end onSurfaceChangedWH;

   procedure addListener (This : in out SWTJOGLProcessor) is
   begin
        null;
   end addListener;

   procedure addListeners (This : in out SWTJOGLProcessor; midlet : MIDlet_Access) is
   begin
        null;
   end addListeners;

   procedure run (This : in out SWTJOGLProcessor) is
   begin
        null;
   end run;

   procedure clear (This : in out SWTJOGLProcessor) is
   begin
        null;
   end clear;

   procedure setCustom (This : in out SWTJOGLProcessor; width : Integer; height : Integer; ratio : Float) is
   begin
        null;
   end setCustom;

   procedure setRatioProcessor (This : in out SWTJOGLProcessor; ratioProcessor : RatioProcessor_Access) is
   begin
        null;
   end setRatioProcessor;

   function charWidth (This : in out SWTJOGLProcessor; font : Font_Access; ch : Character) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end charWidth;

   function charsWidth (This : in out SWTJOGLProcessor; font : Font_Access; ch : Character_Array_Access; offset : Integer; length : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end charsWidth;

   function stringWidth (This : in out SWTJOGLProcessor; font : Font_Access; str : Unbounded_String) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end stringWidth;

   function substringWidth (This : in out SWTJOGLProcessor; font : Font_Access; str : Unbounded_String; offset : Integer; len : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end substringWidth;

   procedure getInstance is
      Java_Result : constant SWTJOGLProcessor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isHolderCreated (This : in out SWTJOGLProcessor) is
      Java_Result : constant Boolean := SWTJOGLProcessor'Class (This).isHolderCreated;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isHolderCreated;

   procedure isJOGL (This : in out SWTJOGLProcessor) is
      Java_Result : constant Boolean := SWTJOGLProcessor'Class (This).isJOGL;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isJOGL;

   procedure charWidth (This : in out SWTJOGLProcessor; font : Font_Access; ch : Character) is
      Java_Result : constant Integer := SWTJOGLProcessor'Class (This).charWidth (font, ch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end charWidth;

   procedure charsWidth (This : in out SWTJOGLProcessor; font : Font_Access; ch : Character_Array_Access; offset : Integer; length : Integer) is
      Java_Result : constant Integer := SWTJOGLProcessor'Class (This).charsWidth (font, ch, offset, length);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end charsWidth;

   procedure stringWidth (This : in out SWTJOGLProcessor; font : Font_Access; str : Unbounded_String) is
      Java_Result : constant Integer := SWTJOGLProcessor'Class (This).stringWidth (font, str);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end stringWidth;

   procedure substringWidth (This : in out SWTJOGLProcessor; font : Font_Access; str : Unbounded_String; offset : Integer; len : Integer) is
      Java_Result : constant Integer := SWTJOGLProcessor'Class (This).substringWidth (font, str, offset, len);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end substringWidth;

begin
   null;
   instance := SWTJOGLProcessor_Package.Create;

end org.allbinary.graphics.threed.SWTJOGLProcessor_Package;


