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
limited with org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
package org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References is
   type SWTJOGLProcessor_Access is access all org.allbinary.graphics.threed.SWTJOGLProcessor_Package.SWTJOGLProcessor'Class;
   type SWTJOGLProcessor_Access_Array is array (Natural range <>) of SWTJOGLProcessor_Access;
   type SWTJOGLProcessor_Access_Array_Access is access all SWTJOGLProcessor_Access_Array;
   type SWTJOGLProcessor_Access_Array_Access_Array is array (Natural range <>) of SWTJOGLProcessor_Access_Array_Access;
   type SWTJOGLProcessor_Access_Array_Access_Array_Access is access all SWTJOGLProcessor_Access_Array_Access_Array;
   type SWTJOGLProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SWTJOGLProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : SWTJOGLProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SWTJOGLProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SWTJOGLProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SWTJOGLProcessor_Access_Array_Access is (if Value /= null and then Value.all in SWTJOGLProcessor_Access_Array_Object'Class then SWTJOGLProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type SWTJOGLProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SWTJOGLProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SWTJOGLProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SWTJOGLProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SWTJOGLProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SWTJOGLProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SWTJOGLProcessor_Access_Array_Access_Array_Object'Class then SWTJOGLProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References;

with org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
limited with javax.microedition.midlet.MIDlet_Package;
with javax.microedition.midlet.MIDlet_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
limited with org.allbinary.graphics.threed.RatioProcessor_Package;
with org.allbinary.graphics.threed.RatioProcessor_Package_References;

package org.allbinary.graphics.threed.SWTJOGLProcessor_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package MIDlet_Package renames Standard.javax.microedition.midlet.MIDlet_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   use type Font_Access;
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   use type Font_Access_Array;
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   use type Font_Access_Array_Access;
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   use type Font_Access_Array_Access_Array;
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   use type Font_Access_Array_Access_Array_Access;
   subtype MIDlet_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access;
   use type MIDlet_Access;
   subtype MIDlet_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array;
   use type MIDlet_Access_Array;
   subtype MIDlet_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access;
   use type MIDlet_Access_Array_Access;
   subtype MIDlet_Access_Array_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array;
   use type MIDlet_Access_Array_Access_Array;
   subtype MIDlet_Access_Array_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array_Access;
   use type MIDlet_Access_Array_Access_Array_Access;
   subtype RatioProcessor_Access is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access;
   use type RatioProcessor_Access;
   subtype RatioProcessor_Access_Array is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access_Array;
   use type RatioProcessor_Access_Array;
   subtype RatioProcessor_Access_Array_Access is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access_Array_Access;
   use type RatioProcessor_Access_Array_Access;
   subtype RatioProcessor_Access_Array_Access_Array is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access_Array_Access_Array;
   use type RatioProcessor_Access_Array_Access_Array;
   subtype RatioProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access_Array_Access_Array_Access;
   use type RatioProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SWTJOGLProcessor_Access is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access;
   function "=" (Left, Right : SWTJOGLProcessor_Access) return Boolean renames org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References."=";
   subtype SWTJOGLProcessor_Access_Array is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access_Array;
   function "=" (Left, Right : SWTJOGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References."=";
   subtype SWTJOGLProcessor_Access_Array_Access is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access_Array_Access;
   function "=" (Left, Right : SWTJOGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References."=";
   function Java_Box (Value : SWTJOGLProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.Java_Box;
   function Java_Unbox_SWTJOGLProcessor_Access_Array (Value : access Java_Object'Class) return SWTJOGLProcessor_Access_Array_Access renames org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.Java_Unbox_SWTJOGLProcessor_Access_Array;
   subtype SWTJOGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SWTJOGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References."=";
   subtype SWTJOGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SWTJOGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References."=";
   function Java_Box (Value : SWTJOGLProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.Java_Box;
   function Java_Unbox_SWTJOGLProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return SWTJOGLProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.Java_Unbox_SWTJOGLProcessor_Access_Array_Access_Array;

   type SWTJOGLProcessor is new Java_Object and Runnable with null record;
   instance : SWTJOGLProcessor_Access;

   procedure Initialize (This : in out SWTJOGLProcessor'Class);
   function Create return SWTJOGLProcessor_Access;
   function getInstance return SWTJOGLProcessor_Access;
   procedure init (This : in out SWTJOGLProcessor; display_Param : access Java_Object'Class; comp_Param : access Java_Object'Class);
   function isHolderCreated (This : in out SWTJOGLProcessor) return Boolean;
   procedure setRenderer (This : in out SWTJOGLProcessor; renderer_Param : access Java_Object'Class);
   function isJOGL (This : in out SWTJOGLProcessor) return Boolean;
   procedure createSurface (This : in out SWTJOGLProcessor);
   procedure onSurfaceCreated (This : in out SWTJOGLProcessor);
   procedure onSurfaceChangedForEvent (This : in out SWTJOGLProcessor; event_Param : access Java_Object'Class);
   procedure onSurfaceChanged (This : in out SWTJOGLProcessor);
   procedure onSurfaceChangedWH (This : in out SWTJOGLProcessor; width : Integer; height : Integer);
   procedure addListener (This : in out SWTJOGLProcessor);
   procedure addListeners (This : in out SWTJOGLProcessor; midlet_Param : access MIDlet_Package.MIDlet'Class);
   procedure run (This : in out SWTJOGLProcessor);
   procedure clear (This : in out SWTJOGLProcessor);
   procedure setCustom (This : in out SWTJOGLProcessor; width : Integer; height : Integer; ratio : Float);
   procedure setRatioProcessor (This : in out SWTJOGLProcessor; ratioProcessor_Param : access RatioProcessor_Package.RatioProcessor'Class);
   function isPortraitRatioProcessor (This : in out SWTJOGLProcessor) return Boolean;
   function charWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; ch : Character) return Integer;
   procedure charWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; ch : Character);
   function charsWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; ch : Character_Array_Access; offset : Integer; length : Integer) return Integer;
   procedure charsWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; ch : Character_Array_Access; offset : Integer; length : Integer);
   function stringWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; str : Unbounded_String) return Integer;
   procedure stringWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; str : Unbounded_String);
   function substringWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; str : Unbounded_String; offset : Integer; len : Integer) return Integer;
   procedure substringWidth (This : in out SWTJOGLProcessor; font_Param : access Font_Package.Font'Class; str : Unbounded_String; offset : Integer; len : Integer);
   procedure setRenderer (This : in out SWTJOGLProcessor; Value : Unbounded_String);
   procedure onSurfaceChangedForEvent (This : in out SWTJOGLProcessor; Value : Unbounded_String);

end org.allbinary.graphics.threed.SWTJOGLProcessor_Package;


