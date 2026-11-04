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

limited with org.allbinary.media.image.SpriteSplitterUtil_Package;
package org.allbinary.media.image.SpriteSplitterUtil_Package_References is
   type SpriteSplitterUtil_Access is access all org.allbinary.media.image.SpriteSplitterUtil_Package.SpriteSplitterUtil'Class;
   type SpriteSplitterUtil_Access_Array is array (Natural range <>) of SpriteSplitterUtil_Access;
   type SpriteSplitterUtil_Access_Array_Access is access all SpriteSplitterUtil_Access_Array;
   type SpriteSplitterUtil_Access_Array_Access_Array is array (Natural range <>) of SpriteSplitterUtil_Access_Array_Access;
   type SpriteSplitterUtil_Access_Array_Access_Array_Access is access all SpriteSplitterUtil_Access_Array_Access_Array;
end org.allbinary.media.image.SpriteSplitterUtil_Package_References;

with org.allbinary.media.image.SpriteSplitterUtil_Package_References;
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
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
limited with org.allbinary.media.image.ImageProcessedVisitor_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package_References;

package org.allbinary.media.image.SpriteSplitterUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
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


   subtype SpriteSplitterUtil_Access is org.allbinary.media.image.SpriteSplitterUtil_Package_References.SpriteSplitterUtil_Access;
   function "=" (Left, Right : SpriteSplitterUtil_Access) return Boolean renames org.allbinary.media.image.SpriteSplitterUtil_Package_References."=";
   subtype SpriteSplitterUtil_Access_Array is org.allbinary.media.image.SpriteSplitterUtil_Package_References.SpriteSplitterUtil_Access_Array;
   function "=" (Left, Right : SpriteSplitterUtil_Access_Array) return Boolean renames org.allbinary.media.image.SpriteSplitterUtil_Package_References."=";
   subtype SpriteSplitterUtil_Access_Array_Access is org.allbinary.media.image.SpriteSplitterUtil_Package_References.SpriteSplitterUtil_Access_Array_Access;
   function "=" (Left, Right : SpriteSplitterUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.SpriteSplitterUtil_Package_References."=";
   subtype SpriteSplitterUtil_Access_Array_Access_Array is org.allbinary.media.image.SpriteSplitterUtil_Package_References.SpriteSplitterUtil_Access_Array_Access_Array;
   function "=" (Left, Right : SpriteSplitterUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.SpriteSplitterUtil_Package_References."=";
   subtype SpriteSplitterUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.SpriteSplitterUtil_Package_References.SpriteSplitterUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpriteSplitterUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.SpriteSplitterUtil_Package_References."=";

   type SpriteSplitterUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonSeps : CommonSeps_Access;
      commonStrings : CommonStrings_Access;
      ANIMATIONS_LABELS : Unbounded_String_Array_Access;
      DIRECTIONAL_ANIMATIONS : Unbounded_String;
      HORIZONTAL_ANIMATIONS : Unbounded_String;
      HORIZONTAL_SPRITE : Unbounded_String;
      ROW_NAME : Unbounded_String_Array_Access;
      U_ROW : Unbounded_String;
   end record;
   instance : SpriteSplitterUtil_Access;

   procedure Initialize (This : in out SpriteSplitterUtil'Class);
   function Create return SpriteSplitterUtil_Access;
   function getInstance return SpriteSplitterUtil_Access;
   procedure process (This : in out SpriteSplitterUtil; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class; totalFrames : Integer; totalAnimations : Integer; widthReduction : Integer; heightReduction : Integer; increaseWidth : Integer; increaseHeight : Integer; spriteType : Unbounded_String; visitor_Param : access ImageProcessedVisitor_Package.ImageProcessedVisitor'Class);

end org.allbinary.media.image.SpriteSplitterUtil_Package;


