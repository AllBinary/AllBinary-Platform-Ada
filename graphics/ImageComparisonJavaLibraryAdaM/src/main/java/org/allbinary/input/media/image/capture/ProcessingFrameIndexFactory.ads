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

package org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package is


   type ProcessingFrameIndexFactory is tagged;
   type ProcessingFrameIndexFactory_Access is access all ProcessingFrameIndexFactory'Class;
   type ProcessingFrameIndexFactory_Access_Array is array (Natural range <>) of ProcessingFrameIndexFactory_Access;
   type ProcessingFrameIndexFactory_Access_Array_Access is access all ProcessingFrameIndexFactory_Access_Array;
   type ProcessingFrameIndexFactory_Access_Array_Access_Array is array (Natural range <>) of ProcessingFrameIndexFactory_Access_Array_Access;
   type ProcessingFrameIndexFactory_Access_Array_Access_Array_Access is access all ProcessingFrameIndexFactory_Access_Array_Access_Array;

   type ProcessingFrameIndexFactory is new Java_Object with null record;
   currentFrame : Long_Long_Integer;

   procedure Initialize (This : in out ProcessingFrameIndexFactory'Class);
   function Create return ProcessingFrameIndexFactory_Access;
   function next return Long_Long_Integer;

end org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package;


