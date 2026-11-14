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
limited with org.allbinary.media.image.CanvasTrimUtil_Package;
package org.allbinary.media.image.CanvasTrimUtil_Package_References is
   type CanvasTrimUtil_Access is access all org.allbinary.media.image.CanvasTrimUtil_Package.CanvasTrimUtil'Class;
   type CanvasTrimUtil_Access_Array is array (Natural range <>) of CanvasTrimUtil_Access;
   type CanvasTrimUtil_Access_Array_Access is access all CanvasTrimUtil_Access_Array;
   type CanvasTrimUtil_Access_Array_Access_Array is array (Natural range <>) of CanvasTrimUtil_Access_Array_Access;
   type CanvasTrimUtil_Access_Array_Access_Array_Access is access all CanvasTrimUtil_Access_Array_Access_Array;
   type CanvasTrimUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CanvasTrimUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : CanvasTrimUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CanvasTrimUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CanvasTrimUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CanvasTrimUtil_Access_Array_Access is (if Value /= null and then Value.all in CanvasTrimUtil_Access_Array_Object'Class then CanvasTrimUtil_Access_Array_Object'Class (Value.all).Value else null);
   type CanvasTrimUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CanvasTrimUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CanvasTrimUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CanvasTrimUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CanvasTrimUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CanvasTrimUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CanvasTrimUtil_Access_Array_Access_Array_Object'Class then CanvasTrimUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.CanvasTrimUtil_Package_References;

with org.allbinary.media.image.CanvasTrimUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
limited with org.allbinary.media.image.ImageProcessedVisitor_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package_References;

package org.allbinary.media.image.CanvasTrimUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   subtype ImageProcessorInput_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access;
   use type ImageProcessorInput_Access;
   subtype ImageProcessorInput_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array;
   use type ImageProcessorInput_Access_Array;
   subtype ImageProcessorInput_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access;
   use type ImageProcessorInput_Access_Array_Access;
   subtype ImageProcessorInput_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array;
   use type ImageProcessorInput_Access_Array_Access_Array;
   subtype ImageProcessorInput_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array_Access;
   use type ImageProcessorInput_Access_Array_Access_Array_Access;
   subtype ImageProcessedVisitor_Access is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access;
   use type ImageProcessedVisitor_Access;
   subtype ImageProcessedVisitor_Access_Array is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array;
   use type ImageProcessedVisitor_Access_Array;
   subtype ImageProcessedVisitor_Access_Array_Access is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array_Access;
   use type ImageProcessedVisitor_Access_Array_Access;
   subtype ImageProcessedVisitor_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array_Access_Array;
   use type ImageProcessedVisitor_Access_Array_Access_Array;
   subtype ImageProcessedVisitor_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array_Access_Array_Access;
   use type ImageProcessedVisitor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CanvasTrimUtil_Access is org.allbinary.media.image.CanvasTrimUtil_Package_References.CanvasTrimUtil_Access;
   function "=" (Left, Right : CanvasTrimUtil_Access) return Boolean renames org.allbinary.media.image.CanvasTrimUtil_Package_References."=";
   subtype CanvasTrimUtil_Access_Array is org.allbinary.media.image.CanvasTrimUtil_Package_References.CanvasTrimUtil_Access_Array;
   function "=" (Left, Right : CanvasTrimUtil_Access_Array) return Boolean renames org.allbinary.media.image.CanvasTrimUtil_Package_References."=";
   subtype CanvasTrimUtil_Access_Array_Access is org.allbinary.media.image.CanvasTrimUtil_Package_References.CanvasTrimUtil_Access_Array_Access;
   function "=" (Left, Right : CanvasTrimUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.CanvasTrimUtil_Package_References."=";
   function Java_Box (Value : CanvasTrimUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.CanvasTrimUtil_Package_References.Java_Box;
   function Java_Unbox_CanvasTrimUtil_Access_Array (Value : access Java_Object'Class) return CanvasTrimUtil_Access_Array_Access renames org.allbinary.media.image.CanvasTrimUtil_Package_References.Java_Unbox_CanvasTrimUtil_Access_Array;
   subtype CanvasTrimUtil_Access_Array_Access_Array is org.allbinary.media.image.CanvasTrimUtil_Package_References.CanvasTrimUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasTrimUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.CanvasTrimUtil_Package_References."=";
   subtype CanvasTrimUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.CanvasTrimUtil_Package_References.CanvasTrimUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasTrimUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.CanvasTrimUtil_Package_References."=";
   function Java_Box (Value : CanvasTrimUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.CanvasTrimUtil_Package_References.Java_Box;
   function Java_Unbox_CanvasTrimUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return CanvasTrimUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.CanvasTrimUtil_Package_References.Java_Unbox_CanvasTrimUtil_Access_Array_Access_Array;

   type CanvasTrimUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
   end record;
   instance : CanvasTrimUtil_Access;

   procedure Initialize (This : in out CanvasTrimUtil'Class);
   function Create return CanvasTrimUtil_Access;
   function getInstance return CanvasTrimUtil_Access;
   procedure process (This : in out CanvasTrimUtil; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class; cutCanvasFromLeftReduction : Integer; cutCanvasFromTopReduction : Integer; cutCanvasFromRightReduction : Integer; cutCanvasFromBottomReduction : Integer; visitor_Param : access ImageProcessedVisitor_Package.ImageProcessedVisitor'Class);

end org.allbinary.media.image.CanvasTrimUtil_Package;


