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
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package; use org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
with org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package; use org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;
with org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package; use org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package;

package org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package GenericProfile_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
   package GenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
   package SavedCaptureGenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
   package CaptureWorkerInterface_Package renames Standard.org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
   package ScreenCaptureImagesWorker_Package renames Standard.org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;

   type GenericProfileCaptureWorkerFactory is tagged;
   type GenericProfileCaptureWorkerFactory_Access is access all GenericProfileCaptureWorkerFactory'Class;
   type GenericProfileCaptureWorkerFactory_Access_Array is array (Natural range <>) of GenericProfileCaptureWorkerFactory_Access;
   type GenericProfileCaptureWorkerFactory_Access_Array_Access is access all GenericProfileCaptureWorkerFactory_Access_Array;

   type GenericProfileCaptureWorkerFactory is new Java_Object with null record;

   procedure Initialize (This : in out GenericProfileCaptureWorkerFactory'Class);
   function Create return GenericProfileCaptureWorkerFactory_Access;
   function getInstance (genericProfile : GenericProfile_Access) return CaptureWorkerInterface_Access;
   procedure getInstance (genericProfile : GenericProfile_Access);

end org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package;


