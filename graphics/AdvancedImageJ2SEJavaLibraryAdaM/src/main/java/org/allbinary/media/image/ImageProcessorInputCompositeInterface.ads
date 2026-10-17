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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;

package org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package is


   type ImageProcessorInputCompositeInterface is interface;
   type ImageProcessorInputCompositeInterface_Access is access all ImageProcessorInputCompositeInterface'Class;
   type ImageProcessorInputCompositeInterface_Access_Array is array (Natural range <>) of ImageProcessorInputCompositeInterface_Access;
   type ImageProcessorInputCompositeInterface_Access_Array_Access is access all ImageProcessorInputCompositeInterface_Access_Array;
   function getImageProcessorInput (This : in out ImageProcessorInputCompositeInterface) return ImageProcessorInput_Access is abstract;
   procedure setImageProcessorInput (This : in out ImageProcessorInputCompositeInterface; imageProcessorInput_Param : access ImageProcessorInput'Class) is abstract;

end org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;


