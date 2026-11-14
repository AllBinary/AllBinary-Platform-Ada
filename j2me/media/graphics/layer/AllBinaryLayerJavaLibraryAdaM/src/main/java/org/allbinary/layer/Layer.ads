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
limited with org.allbinary.layer.Layer_Package;
package org.allbinary.layer.Layer_Package_References is
   type Layer_Access is access all org.allbinary.layer.Layer_Package.Layer'Class;
   type Layer_Access_Array is array (Natural range <>) of Layer_Access;
   type Layer_Access_Array_Access is access all Layer_Access_Array;
   type Layer_Access_Array_Access_Array is array (Natural range <>) of Layer_Access_Array_Access;
   type Layer_Access_Array_Access_Array_Access is access all Layer_Access_Array_Access_Array;
   type Layer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Layer_Access_Array_Access;
   end record;
   function Java_Box (Value : Layer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Layer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Layer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Layer_Access_Array_Access is (if Value /= null and then Value.all in Layer_Access_Array_Object'Class then Layer_Access_Array_Object'Class (Value.all).Value else null);
   type Layer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Layer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Layer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Layer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Layer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Layer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Layer_Access_Array_Access_Array_Object'Class then Layer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.Layer_Package_References;

with org.allbinary.layer.Layer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;

package org.allbinary.layer.Layer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   function "=" (Left, Right : Layer_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   function "=" (Left, Right : Layer_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   function Java_Box (Value : Layer_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.Layer_Package_References.Java_Box;
   function Java_Unbox_Layer_Access_Array (Value : access Java_Object'Class) return Layer_Access_Array_Access renames org.allbinary.layer.Layer_Package_References.Java_Unbox_Layer_Access_Array;
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   function "=" (Left, Right : Layer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   function Java_Box (Value : Layer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.Layer_Package_References.Java_Box;
   function Java_Unbox_Layer_Access_Array_Access_Array (Value : access Java_Object'Class) return Layer_Access_Array_Access_Array_Access renames org.allbinary.layer.Layer_Package_References.Java_Unbox_Layer_Access_Array_Access_Array;

   type Layer is new Java_Object with record
      logUtil : LogUtil_Access;
      x : Integer;
      y : Integer;
      z : Integer;
      width : Integer;
      height : Integer;
      visible : Boolean;
   end record;
   ID : Integer;

   procedure Initialize (This : in out Layer'Class; width : Integer; height : Integer);
   function Create (width : Integer; height : Integer) return Layer_Access;
   procedure setPosition (This : in out Layer; x : Integer; y : Integer; z : Integer);
   procedure moveDXY (This : in out Layer; dx : Integer; dy : Integer);
   procedure moveDXYZ (This : in out Layer; dx : Integer; dy : Integer; dz : Integer);
   function getXP (This : in out Layer) return Integer;
   function getYP (This : in out Layer) return Integer;
   function getZP (This : in out Layer) return Integer;
   function getWidth (This : in out Layer) return Integer;
   function getHeight (This : in out Layer) return Integer;
   function getDepth (This : in out Layer) return Long_Long_Integer;
   procedure setVisible (This : in out Layer; visible : Boolean);
   function isVisible (This : in out Layer) return Boolean;
   procedure paint (This : in out Layer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setLayerWidth (This : in out Layer; width : Integer);
   procedure setLayerHeight (This : in out Layer; height : Integer);
   procedure toStringAppend (This : in out Layer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);

end org.allbinary.layer.Layer_Package;


