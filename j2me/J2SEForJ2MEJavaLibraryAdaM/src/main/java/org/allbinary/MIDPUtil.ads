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

with AllBinary_Java;
limited with org.allbinary.MIDPUtil_Package;
package org.allbinary.MIDPUtil_Package_References is
   type MIDPUtil_Access is access all org.allbinary.MIDPUtil_Package.MIDPUtil'Class;
   type MIDPUtil_Access_Array is array (Natural range <>) of MIDPUtil_Access;
   type MIDPUtil_Access_Array_Access is access all MIDPUtil_Access_Array;
   type MIDPUtil_Access_Array_Access_Array is array (Natural range <>) of MIDPUtil_Access_Array_Access;
   type MIDPUtil_Access_Array_Access_Array_Access is access all MIDPUtil_Access_Array_Access_Array;
   type MIDPUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MIDPUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : MIDPUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MIDPUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MIDPUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MIDPUtil_Access_Array_Access is (if Value /= null and then Value.all in MIDPUtil_Access_Array_Object'Class then MIDPUtil_Access_Array_Object'Class (Value.all).Value else null);
   type MIDPUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MIDPUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MIDPUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MIDPUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MIDPUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MIDPUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MIDPUtil_Access_Array_Access_Array_Object'Class then MIDPUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.MIDPUtil_Package_References;

with org.allbinary.MIDPUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with javax.microedition.lcdui.Form_Package;
with javax.microedition.lcdui.Form_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.Item_Package_References;
limited with javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;

package org.allbinary.MIDPUtil_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Form_Package renames Standard.javax.microedition.lcdui.Form_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   package Reference_Types is
   subtype Form_Access is javax.microedition.lcdui.Form_Package_References.Form_Access;
   use type Form_Access;
   subtype Form_Access_Array is javax.microedition.lcdui.Form_Package_References.Form_Access_Array;
   use type Form_Access_Array;
   subtype Form_Access_Array_Access is javax.microedition.lcdui.Form_Package_References.Form_Access_Array_Access;
   use type Form_Access_Array_Access;
   subtype Form_Access_Array_Access_Array is javax.microedition.lcdui.Form_Package_References.Form_Access_Array_Access_Array;
   use type Form_Access_Array_Access_Array;
   subtype Form_Access_Array_Access_Array_Access is javax.microedition.lcdui.Form_Package_References.Form_Access_Array_Access_Array_Access;
   use type Form_Access_Array_Access_Array_Access;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype Item_Access is javax.microedition.lcdui.Item_Package_References.Item_Access;
   use type Item_Access;
   subtype Item_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array;
   use type Item_Access_Array;
   subtype Item_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access;
   use type Item_Access_Array_Access;
   subtype Item_Access_Array_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array;
   use type Item_Access_Array_Access_Array;
   subtype Item_Access_Array_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array_Access;
   use type Item_Access_Array_Access_Array_Access;
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   use type Player_Access;
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   use type Player_Access_Array;
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   use type Player_Access_Array_Access;
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   use type Player_Access_Array_Access_Array;
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   use type Player_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MIDPUtil_Access is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access;
   function "=" (Left, Right : MIDPUtil_Access) return Boolean renames org.allbinary.MIDPUtil_Package_References."=";
   subtype MIDPUtil_Access_Array is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access_Array;
   function "=" (Left, Right : MIDPUtil_Access_Array) return Boolean renames org.allbinary.MIDPUtil_Package_References."=";
   subtype MIDPUtil_Access_Array_Access is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access_Array_Access;
   function "=" (Left, Right : MIDPUtil_Access_Array_Access) return Boolean renames org.allbinary.MIDPUtil_Package_References."=";
   function Java_Box (Value : MIDPUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.MIDPUtil_Package_References.Java_Box;
   function Java_Unbox_MIDPUtil_Access_Array (Value : access Java_Object'Class) return MIDPUtil_Access_Array_Access renames org.allbinary.MIDPUtil_Package_References.Java_Unbox_MIDPUtil_Access_Array;
   subtype MIDPUtil_Access_Array_Access_Array is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MIDPUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.MIDPUtil_Package_References."=";
   subtype MIDPUtil_Access_Array_Access_Array_Access is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MIDPUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.MIDPUtil_Package_References."=";
   function Java_Box (Value : MIDPUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.MIDPUtil_Package_References.Java_Box;
   function Java_Unbox_MIDPUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return MIDPUtil_Access_Array_Access_Array_Access renames org.allbinary.MIDPUtil_Package_References.Java_Unbox_MIDPUtil_Access_Array_Access_Array;

   type MIDPUtil is new Java_Object with null record;
   instance : MIDPUtil_Access;

   procedure Initialize (This : in out MIDPUtil'Class);
   function Create return MIDPUtil_Access;
   function getInstance return MIDPUtil_Access;
   function createImageWH (This : in out MIDPUtil; width : Integer; height : Integer) return Image_Access;
   procedure createImageWH (This : in out MIDPUtil; width : Integer; height : Integer);
   function createImageFromByteArray (This : in out MIDPUtil; imageData : Short_Short_Integer_Array_Access; imageOffset : Integer; imageLength : Integer) return Image_Access;
   procedure createImageFromByteArray (This : in out MIDPUtil; imageData : Short_Short_Integer_Array_Access; imageOffset : Integer; imageLength : Integer);
   function createImageFromInputStream (This : in out MIDPUtil; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access;
   procedure createImageFromInputStream (This : in out MIDPUtil; inputStream_Param : access InputStream_Package.InputStream'Class);
   function createPlayerFromInputStream (This : in out MIDPUtil; inputStream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String) return Player_Access;
   procedure createPlayerFromInputStream (This : in out MIDPUtil; inputStream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String);
   function appendItem (This : in out MIDPUtil; form_Param : access Form_Package.Form'Class; item_Param : access Item_Package.Item'Class) return Integer;
   procedure appendItem (This : in out MIDPUtil; form_Param : access Form_Package.Form'Class; item_Param : access Item_Package.Item'Class);

end org.allbinary.MIDPUtil_Package;


