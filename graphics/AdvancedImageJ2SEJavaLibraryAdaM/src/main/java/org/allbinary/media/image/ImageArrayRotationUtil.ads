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
--  with java.io.IOException_Package; use java.io.IOException_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.image.ImageJ2SERotationUtil_Package; use org.allbinary.media.image.ImageJ2SERotationUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package; use org.allbinary.media.image.ImageProcessedVisitor_Package;

package org.allbinary.media.image.ImageArrayRotationUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageArrayRotationUtil is tagged;
   type ImageArrayRotationUtil_Access is access all ImageArrayRotationUtil'Class;
   type ImageArrayRotationUtil_Access_Array is array (Natural range <>) of ImageArrayRotationUtil_Access;
   type ImageArrayRotationUtil_Access_Array_Access is access all ImageArrayRotationUtil_Access_Array;

   type ImageArrayRotationUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      TOTAL_ANGLE : Unbounded_String;
   end record;
   instance : ImageArrayRotationUtil_Access;

   procedure Initialize (This : in out ImageArrayRotationUtil'Class);
   function Create return ImageArrayRotationUtil_Access;
   function getInstance return ImageArrayRotationUtil_Access;
   procedure process (This : in out ImageArrayRotationUtil; imageProcessorInput : ImageProcessorInput_Access; input : Unbounded_String; visitor : ImageProcessedVisitor_Access);

end org.allbinary.media.image.ImageArrayRotationUtil_Package;


