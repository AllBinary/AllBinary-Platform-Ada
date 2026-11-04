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

limited with org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;
package org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References is
   type ScreenScavangerRobot_Access is access all org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package.ScreenScavangerRobot'Class;
   type ScreenScavangerRobot_Access_Array is array (Natural range <>) of ScreenScavangerRobot_Access;
   type ScreenScavangerRobot_Access_Array_Access is access all ScreenScavangerRobot_Access_Array;
   type ScreenScavangerRobot_Access_Array_Access_Array is array (Natural range <>) of ScreenScavangerRobot_Access_Array_Access;
   type ScreenScavangerRobot_Access_Array_Access_Array_Access is access all ScreenScavangerRobot_Access_Array_Access_Array;
end org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References;

with org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype ScreenScavangerRobot_Access is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access;
   function "=" (Left, Right : ScreenScavangerRobot_Access) return Boolean renames org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References."=";
   subtype ScreenScavangerRobot_Access_Array is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access_Array;
   function "=" (Left, Right : ScreenScavangerRobot_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References."=";
   subtype ScreenScavangerRobot_Access_Array_Access is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access_Array_Access;
   function "=" (Left, Right : ScreenScavangerRobot_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References."=";
   subtype ScreenScavangerRobot_Access_Array_Access_Array is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenScavangerRobot_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References."=";
   subtype ScreenScavangerRobot_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenScavangerRobot_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References."=";

   type ScreenScavangerRobot is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out ScreenScavangerRobot'Class);
   function Create return ScreenScavangerRobot_Access;
   function getScreenAsBufferedImages (This : in out ScreenScavangerRobot) return BufferedImage_Access_Array_Access;

end org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;


