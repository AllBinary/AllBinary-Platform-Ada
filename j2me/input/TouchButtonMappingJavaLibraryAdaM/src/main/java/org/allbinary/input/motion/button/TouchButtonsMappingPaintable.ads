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
limited with org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package;
package org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References is
   type TouchButtonsMappingPaintable_Access is access all org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package.TouchButtonsMappingPaintable'Class;
   type TouchButtonsMappingPaintable_Access_Array is array (Natural range <>) of TouchButtonsMappingPaintable_Access;
   type TouchButtonsMappingPaintable_Access_Array_Access is access all TouchButtonsMappingPaintable_Access_Array;
   type TouchButtonsMappingPaintable_Access_Array_Access_Array is array (Natural range <>) of TouchButtonsMappingPaintable_Access_Array_Access;
   type TouchButtonsMappingPaintable_Access_Array_Access_Array_Access is access all TouchButtonsMappingPaintable_Access_Array_Access_Array;
   type TouchButtonsMappingPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonsMappingPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonsMappingPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonsMappingPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonsMappingPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonsMappingPaintable_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonsMappingPaintable_Access_Array_Object'Class then TouchButtonsMappingPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonsMappingPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonsMappingPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonsMappingPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonsMappingPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonsMappingPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonsMappingPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonsMappingPaintable_Access_Array_Access_Array_Object'Class then TouchButtonsMappingPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References;

with org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References;

package org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype TouchButtonLocationHelper_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access;
   use type TouchButtonLocationHelper_Access;
   subtype TouchButtonLocationHelper_Access_Array is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array;
   use type TouchButtonLocationHelper_Access_Array;
   subtype TouchButtonLocationHelper_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access;
   use type TouchButtonLocationHelper_Access_Array_Access;
   subtype TouchButtonLocationHelper_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access_Array;
   use type TouchButtonLocationHelper_Access_Array_Access_Array;
   subtype TouchButtonLocationHelper_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access_Array_Access;
   use type TouchButtonLocationHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonsMappingPaintable_Access is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   subtype TouchButtonsMappingPaintable_Access_Array is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   subtype TouchButtonsMappingPaintable_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   function Java_Box (Value : TouchButtonsMappingPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.Java_Box;
   function Java_Unbox_TouchButtonsMappingPaintable_Access_Array (Value : access Java_Object'Class) return TouchButtonsMappingPaintable_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.Java_Unbox_TouchButtonsMappingPaintable_Access_Array;
   subtype TouchButtonsMappingPaintable_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   subtype TouchButtonsMappingPaintable_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   function Java_Box (Value : TouchButtonsMappingPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.Java_Box;
   function Java_Unbox_TouchButtonsMappingPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonsMappingPaintable_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.Java_Unbox_TouchButtonsMappingPaintable_Access_Array_Access_Array;

   type TouchButtonsMappingPaintable is new Paintable with record
      logUtil : LogUtil_Access;
      foregroundColor : Integer;
      paintableTable : Paintable_Access_Array_Access_Array_Access;
      touchButtonLocationHelper : TouchButtonLocationHelper_Access;
   end record;

   procedure Initialize (This : in out TouchButtonsMappingPaintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return TouchButtonsMappingPaintable_Access;
   procedure init (This : in out TouchButtonsMappingPaintable);
   function createPaintableTable (This : in out TouchButtonsMappingPaintable) return Paintable_Access_Array_Access_Array_Access;
   procedure paint (This : in out TouchButtonsMappingPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package;


