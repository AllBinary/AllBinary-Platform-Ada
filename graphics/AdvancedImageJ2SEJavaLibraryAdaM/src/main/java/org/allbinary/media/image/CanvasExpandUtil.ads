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

limited with org.allbinary.media.image.CanvasExpandUtil_Package;
package org.allbinary.media.image.CanvasExpandUtil_Package_References is
   type CanvasExpandUtil_Access is access all org.allbinary.media.image.CanvasExpandUtil_Package.CanvasExpandUtil'Class;
   type CanvasExpandUtil_Access_Array is array (Natural range <>) of CanvasExpandUtil_Access;
   type CanvasExpandUtil_Access_Array_Access is access all CanvasExpandUtil_Access_Array;
   type CanvasExpandUtil_Access_Array_Access_Array is array (Natural range <>) of CanvasExpandUtil_Access_Array_Access;
   type CanvasExpandUtil_Access_Array_Access_Array_Access is access all CanvasExpandUtil_Access_Array_Access_Array;
end org.allbinary.media.image.CanvasExpandUtil_Package_References;

with org.allbinary.media.image.CanvasExpandUtil_Package_References;
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
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
limited with org.allbinary.media.image.ImageProcessedVisitor_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package_References;

package org.allbinary.media.image.CanvasExpandUtil_Package is

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


   subtype CanvasExpandUtil_Access is org.allbinary.media.image.CanvasExpandUtil_Package_References.CanvasExpandUtil_Access;
   function "=" (Left, Right : CanvasExpandUtil_Access) return Boolean renames org.allbinary.media.image.CanvasExpandUtil_Package_References."=";
   subtype CanvasExpandUtil_Access_Array is org.allbinary.media.image.CanvasExpandUtil_Package_References.CanvasExpandUtil_Access_Array;
   function "=" (Left, Right : CanvasExpandUtil_Access_Array) return Boolean renames org.allbinary.media.image.CanvasExpandUtil_Package_References."=";
   subtype CanvasExpandUtil_Access_Array_Access is org.allbinary.media.image.CanvasExpandUtil_Package_References.CanvasExpandUtil_Access_Array_Access;
   function "=" (Left, Right : CanvasExpandUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.CanvasExpandUtil_Package_References."=";
   subtype CanvasExpandUtil_Access_Array_Access_Array is org.allbinary.media.image.CanvasExpandUtil_Package_References.CanvasExpandUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasExpandUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.CanvasExpandUtil_Package_References."=";
   subtype CanvasExpandUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.CanvasExpandUtil_Package_References.CanvasExpandUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasExpandUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.CanvasExpandUtil_Package_References."=";

   type CanvasExpandUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
   end record;
   instance : CanvasExpandUtil_Access;

   procedure Initialize (This : in out CanvasExpandUtil'Class);
   function Create return CanvasExpandUtil_Access;
   function getInstance return CanvasExpandUtil_Access;
   procedure process (This : in out CanvasExpandUtil; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class; increaseX : Integer; increaseY : Integer; visitor_Param : access ImageProcessedVisitor_Package.ImageProcessedVisitor'Class);

end org.allbinary.media.image.CanvasExpandUtil_Package;


