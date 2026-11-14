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
limited with org.allbinary.media.image.ImageArrayRotationUtil_Package;
package org.allbinary.media.image.ImageArrayRotationUtil_Package_References is
   type ImageArrayRotationUtil_Access is access all org.allbinary.media.image.ImageArrayRotationUtil_Package.ImageArrayRotationUtil'Class;
   type ImageArrayRotationUtil_Access_Array is array (Natural range <>) of ImageArrayRotationUtil_Access;
   type ImageArrayRotationUtil_Access_Array_Access is access all ImageArrayRotationUtil_Access_Array;
   type ImageArrayRotationUtil_Access_Array_Access_Array is array (Natural range <>) of ImageArrayRotationUtil_Access_Array_Access;
   type ImageArrayRotationUtil_Access_Array_Access_Array_Access is access all ImageArrayRotationUtil_Access_Array_Access_Array;
   type ImageArrayRotationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayRotationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayRotationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayRotationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayRotationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayRotationUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayRotationUtil_Access_Array_Object'Class then ImageArrayRotationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageArrayRotationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayRotationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayRotationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayRotationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayRotationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayRotationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayRotationUtil_Access_Array_Access_Array_Object'Class then ImageArrayRotationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageArrayRotationUtil_Package_References;

with org.allbinary.media.image.ImageArrayRotationUtil_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
limited with org.allbinary.media.image.ImageProcessedVisitor_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package_References;

package org.allbinary.media.image.ImageArrayRotationUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype ImageArrayRotationUtil_Access is org.allbinary.media.image.ImageArrayRotationUtil_Package_References.ImageArrayRotationUtil_Access;
   function "=" (Left, Right : ImageArrayRotationUtil_Access) return Boolean renames org.allbinary.media.image.ImageArrayRotationUtil_Package_References."=";
   subtype ImageArrayRotationUtil_Access_Array is org.allbinary.media.image.ImageArrayRotationUtil_Package_References.ImageArrayRotationUtil_Access_Array;
   function "=" (Left, Right : ImageArrayRotationUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageArrayRotationUtil_Package_References."=";
   subtype ImageArrayRotationUtil_Access_Array_Access is org.allbinary.media.image.ImageArrayRotationUtil_Package_References.ImageArrayRotationUtil_Access_Array_Access;
   function "=" (Left, Right : ImageArrayRotationUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageArrayRotationUtil_Package_References."=";
   function Java_Box (Value : ImageArrayRotationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageArrayRotationUtil_Package_References.Java_Box;
   function Java_Unbox_ImageArrayRotationUtil_Access_Array (Value : access Java_Object'Class) return ImageArrayRotationUtil_Access_Array_Access renames org.allbinary.media.image.ImageArrayRotationUtil_Package_References.Java_Unbox_ImageArrayRotationUtil_Access_Array;
   subtype ImageArrayRotationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageArrayRotationUtil_Package_References.ImageArrayRotationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageArrayRotationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageArrayRotationUtil_Package_References."=";
   subtype ImageArrayRotationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageArrayRotationUtil_Package_References.ImageArrayRotationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageArrayRotationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageArrayRotationUtil_Package_References."=";
   function Java_Box (Value : ImageArrayRotationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageArrayRotationUtil_Package_References.Java_Box;
   function Java_Unbox_ImageArrayRotationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageArrayRotationUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageArrayRotationUtil_Package_References.Java_Unbox_ImageArrayRotationUtil_Access_Array_Access_Array;

   type ImageArrayRotationUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      TOTAL_ANGLE : Unbounded_String;
   end record;
   instance : ImageArrayRotationUtil_Access;

   procedure Initialize (This : in out ImageArrayRotationUtil'Class);
   function Create return ImageArrayRotationUtil_Access;
   function getInstance return ImageArrayRotationUtil_Access;
   procedure process (This : in out ImageArrayRotationUtil; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class; input : Unbounded_String; visitor_Param : access ImageProcessedVisitor_Package.ImageProcessedVisitor'Class);

end org.allbinary.media.image.ImageArrayRotationUtil_Package;


