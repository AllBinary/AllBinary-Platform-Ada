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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with org.allbinary.graphics.threed.Runnable_Package; use org.allbinary.graphics.threed.Runnable_Package;
with org.allbinary.graphics.threed.GLHolder_Package; use org.allbinary.graphics.threed.GLHolder_Package;
with org.allbinary.graphics.threed.RatioProcessor_Package; use org.allbinary.graphics.threed.RatioProcessor_Package;

package org.allbinary.graphics.threed.SWTJOGLProcessor_Package is


   type SWTJOGLProcessor is tagged;
   type SWTJOGLProcessor_Access is access all SWTJOGLProcessor'Class;
   type SWTJOGLProcessor_Access_Array is array (Natural range <>) of SWTJOGLProcessor_Access;
   type SWTJOGLProcessor_Access_Array_Access is access all SWTJOGLProcessor_Access_Array;

   type SWTJOGLProcessor is new Runnable with record
      glHolder : GLHolder_Access;
   end record;
   instance : SWTJOGLProcessor_Access;

   procedure Initialize (This : in out SWTJOGLProcessor'Class);
   function Create return SWTJOGLProcessor_Access;
   function getInstance return SWTJOGLProcessor_Access;
   procedure init (This : in out SWTJOGLProcessor; display : Java_Object_Access; comp : Java_Object_Access);
   function isHolderCreated (This : in out SWTJOGLProcessor) return Boolean;
   procedure setRenderer (This : in out SWTJOGLProcessor; renderer : Java_Object_Access);
   function isJOGL (This : in out SWTJOGLProcessor) return Boolean;
   procedure createSurface (This : in out SWTJOGLProcessor);
   procedure onSurfaceCreated (This : in out SWTJOGLProcessor);
   procedure onSurfaceChangedForEvent (This : in out SWTJOGLProcessor; event : Java_Object_Access);
   procedure onSurfaceChanged (This : in out SWTJOGLProcessor);
   procedure onSurfaceChangedWH (This : in out SWTJOGLProcessor; width : Integer; height : Integer);
   procedure addListener (This : in out SWTJOGLProcessor);
   procedure addListeners (This : in out SWTJOGLProcessor; midlet : MIDlet_Access);
   procedure run (This : in out SWTJOGLProcessor);
   procedure clear (This : in out SWTJOGLProcessor);
   procedure setCustom (This : in out SWTJOGLProcessor; width : Integer; height : Integer; ratio : Float);
   procedure setRatioProcessor (This : in out SWTJOGLProcessor; ratioProcessor : RatioProcessor_Access);
   function charWidth (This : in out SWTJOGLProcessor; font : Font_Access; ch : Character) return Integer;
   procedure charWidth (This : in out SWTJOGLProcessor; font : Font_Access; ch : Character);
   function charsWidth (This : in out SWTJOGLProcessor; font : Font_Access; ch : Character_Array_Access; offset : Integer; length : Integer) return Integer;
   procedure charsWidth (This : in out SWTJOGLProcessor; font : Font_Access; ch : Character_Array_Access; offset : Integer; length : Integer);
   function stringWidth (This : in out SWTJOGLProcessor; font : Font_Access; str : Unbounded_String) return Integer;
   procedure stringWidth (This : in out SWTJOGLProcessor; font : Font_Access; str : Unbounded_String);
   function substringWidth (This : in out SWTJOGLProcessor; font : Font_Access; str : Unbounded_String; offset : Integer; len : Integer) return Integer;
   procedure substringWidth (This : in out SWTJOGLProcessor; font : Font_Access; str : Unbounded_String; offset : Integer; len : Integer);

end org.allbinary.graphics.threed.SWTJOGLProcessor_Package;


