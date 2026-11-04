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

limited with org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package;
package org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References is
   type GenericProfileCaptureWorkerFactory_Access is access all org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package.GenericProfileCaptureWorkerFactory'Class;
   type GenericProfileCaptureWorkerFactory_Access_Array is array (Natural range <>) of GenericProfileCaptureWorkerFactory_Access;
   type GenericProfileCaptureWorkerFactory_Access_Array_Access is access all GenericProfileCaptureWorkerFactory_Access_Array;
   type GenericProfileCaptureWorkerFactory_Access_Array_Access_Array is array (Natural range <>) of GenericProfileCaptureWorkerFactory_Access_Array_Access;
   type GenericProfileCaptureWorkerFactory_Access_Array_Access_Array_Access is access all GenericProfileCaptureWorkerFactory_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References;

with org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References;
limited with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References;

package org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package is

   package GenericProfile_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
   package CaptureWorkerInterface_Package renames Standard.org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
   package Reference_Types is
   subtype GenericProfile_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access;
   use type GenericProfile_Access;
   subtype GenericProfile_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array;
   use type GenericProfile_Access_Array;
   subtype GenericProfile_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access;
   use type GenericProfile_Access_Array_Access;
   subtype GenericProfile_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array;
   use type GenericProfile_Access_Array_Access_Array;
   subtype GenericProfile_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array_Access;
   use type GenericProfile_Access_Array_Access_Array_Access;
   subtype CaptureWorkerInterface_Access is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access;
   use type CaptureWorkerInterface_Access;
   subtype CaptureWorkerInterface_Access_Array is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array;
   use type CaptureWorkerInterface_Access_Array;
   subtype CaptureWorkerInterface_Access_Array_Access is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array_Access;
   use type CaptureWorkerInterface_Access_Array_Access;
   subtype CaptureWorkerInterface_Access_Array_Access_Array is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array_Access_Array;
   use type CaptureWorkerInterface_Access_Array_Access_Array;
   subtype CaptureWorkerInterface_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array_Access_Array_Access;
   use type CaptureWorkerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfileCaptureWorkerFactory_Access is org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References.GenericProfileCaptureWorkerFactory_Access;
   function "=" (Left, Right : GenericProfileCaptureWorkerFactory_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References."=";
   subtype GenericProfileCaptureWorkerFactory_Access_Array is org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References.GenericProfileCaptureWorkerFactory_Access_Array;
   function "=" (Left, Right : GenericProfileCaptureWorkerFactory_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References."=";
   subtype GenericProfileCaptureWorkerFactory_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References.GenericProfileCaptureWorkerFactory_Access_Array_Access;
   function "=" (Left, Right : GenericProfileCaptureWorkerFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References."=";
   subtype GenericProfileCaptureWorkerFactory_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References.GenericProfileCaptureWorkerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfileCaptureWorkerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References."=";
   subtype GenericProfileCaptureWorkerFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References.GenericProfileCaptureWorkerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfileCaptureWorkerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package_References."=";

   type GenericProfileCaptureWorkerFactory is new Java_Object with null record;

   procedure Initialize (This : in out GenericProfileCaptureWorkerFactory'Class);
   function Create return GenericProfileCaptureWorkerFactory_Access;
   function getInstance (genericProfile_Param : access GenericProfile_Package.GenericProfile'Class) return CaptureWorkerInterface_Access;
   procedure getInstance (genericProfile_Param : access GenericProfile_Package.GenericProfile'Class);

end org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package;


