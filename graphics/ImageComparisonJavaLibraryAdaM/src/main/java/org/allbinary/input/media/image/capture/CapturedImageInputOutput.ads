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
limited with org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;
package org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References is
   type CapturedImageInputOutput_Access is access all org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package.CapturedImageInputOutput'Class;
   type CapturedImageInputOutput_Access_Array is array (Natural range <>) of CapturedImageInputOutput_Access;
   type CapturedImageInputOutput_Access_Array_Access is access all CapturedImageInputOutput_Access_Array;
   type CapturedImageInputOutput_Access_Array_Access_Array is array (Natural range <>) of CapturedImageInputOutput_Access_Array_Access;
   type CapturedImageInputOutput_Access_Array_Access_Array_Access is access all CapturedImageInputOutput_Access_Array_Access_Array;
   type CapturedImageInputOutput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapturedImageInputOutput_Access_Array_Access;
   end record;
   function Java_Box (Value : CapturedImageInputOutput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapturedImageInputOutput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapturedImageInputOutput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapturedImageInputOutput_Access_Array_Access is (if Value /= null and then Value.all in CapturedImageInputOutput_Access_Array_Object'Class then CapturedImageInputOutput_Access_Array_Object'Class (Value.all).Value else null);
   type CapturedImageInputOutput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapturedImageInputOutput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CapturedImageInputOutput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapturedImageInputOutput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapturedImageInputOutput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapturedImageInputOutput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CapturedImageInputOutput_Access_Array_Access_Array_Object'Class then CapturedImageInputOutput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References;

with org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.image.io.ImageIOInterface_Package; use org.allbinary.media.image.io.ImageIOInterface_Package;

package org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageIOInterface_Package renames Standard.org.allbinary.media.image.io.ImageIOInterface_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype CapturedImageInputOutput_Access is org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References.CapturedImageInputOutput_Access;
   function "=" (Left, Right : CapturedImageInputOutput_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References."=";
   subtype CapturedImageInputOutput_Access_Array is org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References.CapturedImageInputOutput_Access_Array;
   function "=" (Left, Right : CapturedImageInputOutput_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References."=";
   subtype CapturedImageInputOutput_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References.CapturedImageInputOutput_Access_Array_Access;
   function "=" (Left, Right : CapturedImageInputOutput_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References."=";
   function Java_Box (Value : CapturedImageInputOutput_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References.Java_Box;
   function Java_Unbox_CapturedImageInputOutput_Access_Array (Value : access Java_Object'Class) return CapturedImageInputOutput_Access_Array_Access renames org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References.Java_Unbox_CapturedImageInputOutput_Access_Array;
   subtype CapturedImageInputOutput_Access_Array_Access_Array is org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References.CapturedImageInputOutput_Access_Array_Access_Array;
   function "=" (Left, Right : CapturedImageInputOutput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References."=";
   subtype CapturedImageInputOutput_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References.CapturedImageInputOutput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CapturedImageInputOutput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References."=";
   function Java_Box (Value : CapturedImageInputOutput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References.Java_Box;
   function Java_Unbox_CapturedImageInputOutput_Access_Array_Access_Array (Value : access Java_Object'Class) return CapturedImageInputOutput_Access_Array_Access_Array_Access renames org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package_References.Java_Unbox_CapturedImageInputOutput_Access_Array_Access_Array;

   type CapturedImageInputOutput is new Java_Object and ImageIOInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CapturedImageInputOutput'Class);
   function Create return CapturedImageInputOutput_Access;
   procedure save (This : in out CapturedImageInputOutput; frame : Long_Long_Integer);
   procedure save (This : in out CapturedImageInputOutput; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; frame : Long_Long_Integer);

end org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;


