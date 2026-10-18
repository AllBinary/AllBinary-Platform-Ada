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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
with org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package; use org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;
with org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package; use org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package;

package body org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package GenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
   package SavedCaptureGenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
   package ScreenCaptureImagesWorker_Package renames Standard.org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;
   procedure Initialize_Fields (This : in out GenericProfileCaptureWorkerFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileCaptureWorkerFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GenericProfileCaptureWorkerFactory_Access is
      This : constant GenericProfileCaptureWorkerFactory_Access := new GenericProfileCaptureWorkerFactory;
   begin
      GenericProfileCaptureWorkerFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (genericProfile_Param : access GenericProfile_Package.GenericProfile'Class) return CaptureWorkerInterface_Access is
      genericProfile : constant GenericProfile_Access := GenericProfile_Access (genericProfile_Param);
      vector : BasicArrayList_Access;
      size : Integer;
      genericProfileDataWorkerType : GenericProfileDataWorkerType_Access;
      index : Integer;
   begin
        vector := genericProfile.getGenericProfileDataWorkerTypeVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            genericProfileDataWorkerType := GenericProfileDataWorkerType_Access (vector.get (index));
            if (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.SCREEN_CAPTURE) then
                return CaptureWorkerInterface_Access (ScreenCaptureImagesWorker_Package.Create);
            elsif (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.SAVED_CAPTURE) then
                return CaptureWorkerInterface_Access (SavedCaptureImagesWorker_Package.Create (SavedCaptureGenericProfileDataWorkerType_Access (genericProfileDataWorkerType)));
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No CaptureWorkerInterface specified in GenericProfile")));
   end getInstance;

   procedure getInstance (genericProfile_Param : access GenericProfile_Package.GenericProfile'Class) is
      Java_Result : constant CaptureWorkerInterface_Access := getInstance (genericProfile_Param => genericProfile_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package;


