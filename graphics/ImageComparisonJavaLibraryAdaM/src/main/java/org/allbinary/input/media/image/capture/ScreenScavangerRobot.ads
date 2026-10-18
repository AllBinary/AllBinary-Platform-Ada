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
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.Rectangle_Package; use java.awt.Rectangle_Package;
--  with java.awt.Toolkit_Package; use java.awt.Toolkit_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ScreenScavangerRobot is tagged;
   type ScreenScavangerRobot_Access is access all ScreenScavangerRobot'Class;
   type ScreenScavangerRobot_Access_Array is array (Natural range <>) of ScreenScavangerRobot_Access;
   type ScreenScavangerRobot_Access_Array_Access is access all ScreenScavangerRobot_Access_Array;
   type ScreenScavangerRobot_Access_Array_Access_Array is array (Natural range <>) of ScreenScavangerRobot_Access_Array_Access;
   type ScreenScavangerRobot_Access_Array_Access_Array_Access is access all ScreenScavangerRobot_Access_Array_Access_Array;

   type ScreenScavangerRobot is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out ScreenScavangerRobot'Class);
   function Create return ScreenScavangerRobot_Access;
   function getScreenAsBufferedImages (This : in out ScreenScavangerRobot) return BufferedImage_Access_Array_Access;

end org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;


