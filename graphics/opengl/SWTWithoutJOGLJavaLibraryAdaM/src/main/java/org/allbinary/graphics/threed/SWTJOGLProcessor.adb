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
--     procedure run (This : in out ; renderer_Param : access Java_Object'Class) is
--        renderer : constant Java_Object_Access := Java_Object_Access (renderer_Param);
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
      SWTJOGLProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SWTJOGLProcessor_Access is
   begin
        return SWTJOGLProcessor_Package.instance;
   end getInstance;

   procedure init (This : in out SWTJOGLProcessor; display_Param : access Java_Object'Class; comp_Param : access Java_Object'Class) is
      display : constant Java_Object_Access := Java_Object_Access (display_Param);
      comp : constant Java_Object_Access := Java_Object_Access (comp_Param);
   begin
        null;
   end init;

   function isHolderCreated (This : in out SWTJOGLProcessor) return Boolean is
   begin
        return This.glHolder.isCreated;
   end isHolderCreated;

   procedure setRenderer (This : in out SWTJOGLProcessor; renderer_Param : access Java_Object'Class) is
      renderer : constant Java_Object_Access := Java_Object_Access (renderer_Param);
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

   procedure onSurfaceChangedForEvent (This : in out SWTJOGLProcessor; event_Param : access Java_Object'Class) is
      event : constant Java_Object_Access := Java_Object_Access (event_Param);
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

   procedure addListeners (This : in out SWTJOGLProcessor; midlet_Param : access MIDlet_Package.MIDlet'Class) is
      midlet : constant MIDlet_Access := MIDlet_Access (midlet_Param);
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

   procedure setRatioProcessor (This : in out SWTJOGLProcessor; ratioProcessor_Param : access RatioProcessor_Package.RatioProcessor'Class) is
      ratioProcessor : constant RatioProcessor_Access := RatioProcessor_Access (ratioProcessor_Param);
   begin
        null;
   end setRatioProcessor;

   function charWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; ch : Character) return Integer is
      font : constant Font_Access := Font_Access (font_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end charWidth;

   function charsWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; ch : Character_Array_Access; offset : Integer; length : Integer) return Integer is
      font : constant Font_Access := Font_Access (font_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end charsWidth;

   function stringWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; str : Unbounded_String) return Integer is
      font : constant Font_Access := Font_Access (font_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end stringWidth;

   function substringWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; str : Unbounded_String; offset : Integer; len : Integer) return Integer is
      font : constant Font_Access := Font_Access (font_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end substringWidth;

   procedure charWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; ch : Character) is
      Java_Result : constant Integer := SWTJOGLProcessor'Class (This).charWidth (font_Param, ch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end charWidth;

   procedure charsWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; ch : Character_Array_Access; offset : Integer; length : Integer) is
      Java_Result : constant Integer := SWTJOGLProcessor'Class (This).charsWidth (font_Param, ch, offset, length);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end charsWidth;

   procedure stringWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; str : Unbounded_String) is
      Java_Result : constant Integer := SWTJOGLProcessor'Class (This).stringWidth (font_Param, str);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end stringWidth;

   procedure substringWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; str : Unbounded_String; offset : Integer; len : Integer) is
      Java_Result : constant Integer := SWTJOGLProcessor'Class (This).substringWidth (font_Param, str, offset, len);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end substringWidth;

begin
   null;
   instance := SWTJOGLProcessor_Package.Create;

end org.allbinary.graphics.threed.SWTJOGLProcessor_Package;


