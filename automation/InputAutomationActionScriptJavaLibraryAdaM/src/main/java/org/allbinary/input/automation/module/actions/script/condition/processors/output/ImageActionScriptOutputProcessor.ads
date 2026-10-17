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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package; use org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package;
with org.allbinary.input.media.image.InputImageType_Package; use org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.io.ImageIOInterface_Package; use org.allbinary.media.image.io.ImageIOInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package InputImageIOInterfaceFactory_Package renames Standard.org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package;
   package InputImageType_Package renames Standard.org.allbinary.input.media.image.InputImageType_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageIOInterface_Package renames Standard.org.allbinary.media.image.io.ImageIOInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageActionScriptOutputProcessor is tagged;
   type ImageActionScriptOutputProcessor_Access is access all ImageActionScriptOutputProcessor'Class;
   type ImageActionScriptOutputProcessor_Access_Array is array (Natural range <>) of ImageActionScriptOutputProcessor_Access;
   type ImageActionScriptOutputProcessor_Access_Array_Access is access all ImageActionScriptOutputProcessor_Access_Array;

   type ImageActionScriptOutputProcessor is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ImageActionScriptOutputProcessor'Class);
   function Create return ImageActionScriptOutputProcessor_Access;
   procedure process (imageActionScriptOutputInterface_Param : access ImageActionScriptOutputInterface_Package.ImageActionScriptOutputInterface'Class; frame : Long_Long_Integer);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package;


