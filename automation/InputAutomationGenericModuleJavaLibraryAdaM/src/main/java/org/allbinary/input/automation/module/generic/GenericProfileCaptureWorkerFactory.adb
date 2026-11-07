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
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package; use org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References;
with org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package; use org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;
with org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package; use org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References;

package body org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package GenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
   package SavedCaptureGenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
   package ScreenCaptureImagesWorker_Package renames Standard.org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;
   subtype GenericProfile_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access;
   function "=" (Left, Right : GenericProfile_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";
   subtype GenericProfile_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array;
   function "=" (Left, Right : GenericProfile_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";
   subtype GenericProfile_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access;
   function "=" (Left, Right : GenericProfile_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";
   subtype GenericProfile_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfile_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";
   subtype GenericProfile_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfile_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";
   subtype CaptureWorkerInterface_Access is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access;
   function "=" (Left, Right : CaptureWorkerInterface_Access) return Boolean renames org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References."=";
   subtype CaptureWorkerInterface_Access_Array is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array;
   function "=" (Left, Right : CaptureWorkerInterface_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References."=";
   subtype CaptureWorkerInterface_Access_Array_Access is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array_Access;
   function "=" (Left, Right : CaptureWorkerInterface_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References."=";
   subtype CaptureWorkerInterface_Access_Array_Access_Array is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CaptureWorkerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References."=";
   subtype CaptureWorkerInterface_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CaptureWorkerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References."=";
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
            if org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References."=" (genericProfileDataWorkerType, GenericProfileDataWorkerType_Package.SCREEN_CAPTURE) then
                return CaptureWorkerInterface_Access (ScreenCaptureImagesWorker_Package.Create);
            elsif org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References."=" (genericProfileDataWorkerType, GenericProfileDataWorkerType_Package.SAVED_CAPTURE) then
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


