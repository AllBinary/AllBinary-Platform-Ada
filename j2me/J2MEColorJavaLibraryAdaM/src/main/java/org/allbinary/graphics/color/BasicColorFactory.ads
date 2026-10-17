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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorUtil_Package; use org.allbinary.graphics.color.BasicColorUtil_Package;

package org.allbinary.graphics.color.BasicColorFactory_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;

   type BasicColorFactory is tagged;
   type BasicColorFactory_Access is access all BasicColorFactory'Class;
   type BasicColorFactory_Access_Array is array (Natural range <>) of BasicColorFactory_Access;
   type BasicColorFactory_Access_Array_Access is access all BasicColorFactory_Access_Array;

   type BasicColorFactory is new Java_Object with record
      NULL_COLOR : BasicColor_Access;
      TAN : BasicColor_Access;
      SKIN_PINK : BasicColor_Access;
      RED : BasicColor_Access;
      LIGHT_RED : BasicColor_Access;
      DARK_GREEN : BasicColor_Access;
      GREEN : BasicColor_Access;
      LIGHT_GREEN : BasicColor_Access;
      PURPLE : BasicColor_Access;
      BLUE : BasicColor_Access;
      LIGHT_BLUE : BasicColor_Access;
      VERY_LIGHT_BLUE : BasicColor_Access;
      PUCE : BasicColor_Access;
      AQUA : BasicColor_Access;
      YELLOW : BasicColor_Access;
      PINK : BasicColor_Access;
      BLACK : BasicColor_Access;
      GREY : BasicColor_Access;
      LIGHT_GREY : BasicColor_Access;
      DARK_GREY : BasicColor_Access;
      ORANGE : BasicColor_Access;
      BROWN : BasicColor_Access;
      WHITE : BasicColor_Access;
      TRANSPARENT_COLOR : BasicColor_Access;
      TRANSPARENT_GREY : BasicColor_Access;
      TRANSPARENT_BLACK : BasicColor_Access;
      TRANSPARENT_RED : BasicColor_Access;
      CLEAR_COLOR : BasicColor_Access;
      BORDER_COLOR : BasicColor_Access;
   end record;
   instance : BasicColorFactory_Access;

   procedure Initialize (This : in out BasicColorFactory'Class);
   function Create return BasicColorFactory_Access;
   function getInstance return BasicColorFactory_Access;
   function createInstance (This : in out BasicColorFactory; value : Integer) return BasicColor_Access;
   procedure createInstance (This : in out BasicColorFactory; value : Integer);
   function createInstanceA (This : in out BasicColorFactory; alphaValue : Integer; value : Integer) return BasicColor_Access;
   procedure createInstanceA (This : in out BasicColorFactory; alphaValue : Integer; value : Integer);
   function createInstanceAN (This : in out BasicColorFactory; alphaValue : Integer; value : Integer; name : Unbounded_String) return BasicColor_Access;
   procedure createInstanceAN (This : in out BasicColorFactory; alphaValue : Integer; value : Integer; name : Unbounded_String);
   function createInstanceARGB (This : in out BasicColorFactory; alphaValue : Integer; r : Integer; g : Integer; b : Integer; name : Unbounded_String) return BasicColor_Access;
   procedure createInstanceARGB (This : in out BasicColorFactory; alphaValue : Integer; r : Integer; g : Integer; b : Integer; name : Unbounded_String);

end org.allbinary.graphics.color.BasicColorFactory_Package;


