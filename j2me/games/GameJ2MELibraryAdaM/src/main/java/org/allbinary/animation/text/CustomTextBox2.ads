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
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;

package org.allbinary.animation.text.CustomTextBox2_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;

   type CustomTextBox2 is tagged;
   type CustomTextBox2_Access is access all CustomTextBox2'Class;
   type CustomTextBox2_Access_Array is array (Natural range <>) of CustomTextBox2_Access;
   type CustomTextBox2_Access_Array_Access is access all CustomTextBox2_Access_Array;
   type CustomTextBox2_Access_Array_Access_Array is array (Natural range <>) of CustomTextBox2_Access_Array_Access;
   type CustomTextBox2_Access_Array_Access_Array_Access is access all CustomTextBox2_Access_Array_Access_Array;

   type CustomTextBox2 is new CustomTextBox with null record;

   procedure Initialize (This : in out CustomTextBox2'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CustomTextBox2_Access;

end org.allbinary.animation.text.CustomTextBox2_Package;


