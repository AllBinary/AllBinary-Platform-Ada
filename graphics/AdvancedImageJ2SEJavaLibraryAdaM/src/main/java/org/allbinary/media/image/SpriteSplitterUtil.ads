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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.image.SpriteSplitterUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type SpriteSplitterUtil is tagged;
   type SpriteSplitterUtil_Access is access all SpriteSplitterUtil'Class;
   type SpriteSplitterUtil_Access_Array is array (Natural range <>) of SpriteSplitterUtil_Access;
   type SpriteSplitterUtil_Access_Array_Access is access all SpriteSplitterUtil_Access_Array;

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
   procedure getInstance;
   procedure process (This : in out SpriteSplitterUtil; imageProcessorInput : ImageProcessorInput_Access; totalFrames : Integer; totalAnimations : Integer; widthReduction : Integer; heightReduction : Integer; increaseWidth : Integer; increaseHeight : Integer; spriteType : Unbounded_String; visitor : ImageProcessedVisitor_Access);

end org.allbinary.media.image.SpriteSplitterUtil_Package;


