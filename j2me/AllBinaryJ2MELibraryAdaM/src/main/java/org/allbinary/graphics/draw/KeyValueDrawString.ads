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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;

package org.allbinary.graphics.draw.KeyValueDrawString_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;

   type KeyValueDrawString is tagged;
   type KeyValueDrawString_Access is access all KeyValueDrawString'Class;
   type KeyValueDrawString_Access_Array is array (Natural range <>) of KeyValueDrawString_Access;
   type KeyValueDrawString_Access_Array_Access is access all KeyValueDrawString_Access_Array;
   type KeyValueDrawString_Access_Array_Access_Array is array (Natural range <>) of KeyValueDrawString_Access_Array_Access;
   type KeyValueDrawString_Access_Array_Access_Array_Access is access all KeyValueDrawString_Access_Array_Access_Array;

   type KeyValueDrawString is new Java_Object and UpdateMyFontInterface with record
      myFontProcessor : MyFontProcessor_Access;
      LABEL : Unbounded_String;
      labelX : Integer;
      valueX : Integer;
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out KeyValueDrawString'Class; label : Unbounded_String; x : Integer);
   function Create (label : Unbounded_String; x : Integer) return KeyValueDrawString_Access;
   procedure updateMeasurement (This : in out KeyValueDrawString; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out KeyValueDrawString; graphics_Param : access Graphics_Package.Graphics'Class; y : Integer);
   procedure update (This : in out KeyValueDrawString; value : Unbounded_String);

end org.allbinary.graphics.draw.KeyValueDrawString_Package;


