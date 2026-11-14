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
limited with org.allbinary.animation.text.CustomTextBox2_Package;
package org.allbinary.animation.text.CustomTextBox2_Package_References is
   type CustomTextBox2_Access is access all org.allbinary.animation.text.CustomTextBox2_Package.CustomTextBox2'Class;
   type CustomTextBox2_Access_Array is array (Natural range <>) of CustomTextBox2_Access;
   type CustomTextBox2_Access_Array_Access is access all CustomTextBox2_Access_Array;
   type CustomTextBox2_Access_Array_Access_Array is array (Natural range <>) of CustomTextBox2_Access_Array_Access;
   type CustomTextBox2_Access_Array_Access_Array_Access is access all CustomTextBox2_Access_Array_Access_Array;
   type CustomTextBox2_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTextBox2_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTextBox2_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTextBox2_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTextBox2_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTextBox2_Access_Array_Access is (if Value /= null and then Value.all in CustomTextBox2_Access_Array_Object'Class then CustomTextBox2_Access_Array_Object'Class (Value.all).Value else null);
   type CustomTextBox2_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTextBox2_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTextBox2_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTextBox2_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTextBox2_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTextBox2_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomTextBox2_Access_Array_Access_Array_Object'Class then CustomTextBox2_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.text.CustomTextBox2_Package_References;

with org.allbinary.animation.text.CustomTextBox2_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;

package org.allbinary.animation.text.CustomTextBox2_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;
   package Reference_Types is
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomTextBox2_Access is org.allbinary.animation.text.CustomTextBox2_Package_References.CustomTextBox2_Access;
   function "=" (Left, Right : CustomTextBox2_Access) return Boolean renames org.allbinary.animation.text.CustomTextBox2_Package_References."=";
   subtype CustomTextBox2_Access_Array is org.allbinary.animation.text.CustomTextBox2_Package_References.CustomTextBox2_Access_Array;
   function "=" (Left, Right : CustomTextBox2_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextBox2_Package_References."=";
   subtype CustomTextBox2_Access_Array_Access is org.allbinary.animation.text.CustomTextBox2_Package_References.CustomTextBox2_Access_Array_Access;
   function "=" (Left, Right : CustomTextBox2_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextBox2_Package_References."=";
   function Java_Box (Value : CustomTextBox2_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.text.CustomTextBox2_Package_References.Java_Box;
   function Java_Unbox_CustomTextBox2_Access_Array (Value : access Java_Object'Class) return CustomTextBox2_Access_Array_Access renames org.allbinary.animation.text.CustomTextBox2_Package_References.Java_Unbox_CustomTextBox2_Access_Array;
   subtype CustomTextBox2_Access_Array_Access_Array is org.allbinary.animation.text.CustomTextBox2_Package_References.CustomTextBox2_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTextBox2_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextBox2_Package_References."=";
   subtype CustomTextBox2_Access_Array_Access_Array_Access is org.allbinary.animation.text.CustomTextBox2_Package_References.CustomTextBox2_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTextBox2_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextBox2_Package_References."=";
   function Java_Box (Value : CustomTextBox2_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.text.CustomTextBox2_Package_References.Java_Box;
   function Java_Unbox_CustomTextBox2_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomTextBox2_Access_Array_Access_Array_Access renames org.allbinary.animation.text.CustomTextBox2_Package_References.Java_Unbox_CustomTextBox2_Access_Array_Access_Array;

   type CustomTextBox2 is new CustomTextBox with null record;

   procedure Initialize (This : in out CustomTextBox2'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CustomTextBox2_Access;

end org.allbinary.animation.text.CustomTextBox2_Package;


