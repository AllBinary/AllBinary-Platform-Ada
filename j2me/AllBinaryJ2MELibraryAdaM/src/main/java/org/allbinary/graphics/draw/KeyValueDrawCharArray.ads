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

package org.allbinary.graphics.draw.KeyValueDrawCharArray_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;

   type KeyValueDrawCharArray is tagged;
   type KeyValueDrawCharArray_Access is access all KeyValueDrawCharArray'Class;
   type KeyValueDrawCharArray_Access_Array is array (Natural range <>) of KeyValueDrawCharArray_Access;
   type KeyValueDrawCharArray_Access_Array_Access is access all KeyValueDrawCharArray_Access_Array;
   type KeyValueDrawCharArray_Access_Array_Access_Array is array (Natural range <>) of KeyValueDrawCharArray_Access_Array_Access;
   type KeyValueDrawCharArray_Access_Array_Access_Array_Access is access all KeyValueDrawCharArray_Access_Array_Access_Array;

   type KeyValueDrawCharArray is new Java_Object and UpdateMyFontInterface with record
      myFontProcessor : MyFontProcessor_Access;
      LABEL : Unbounded_String;
      labelX : Integer;
      valueX : Integer;
      value : Character_Array_Access;
      len : Integer;
   end record;

   procedure Initialize (This : in out KeyValueDrawCharArray'Class; label : Unbounded_String; x : Integer);
   function Create (label : Unbounded_String; x : Integer) return KeyValueDrawCharArray_Access;
   procedure updateMeasurement (This : in out KeyValueDrawCharArray; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out KeyValueDrawCharArray; graphics_Param : access Graphics_Package.Graphics'Class; y : Integer);
   procedure update (This : in out KeyValueDrawCharArray; value : Character_Array_Access; len : Integer);

end org.allbinary.graphics.draw.KeyValueDrawCharArray_Package;


