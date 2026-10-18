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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package; use org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
with org.allbinary.logic.util.cache.J2SECacheInterface_Package; use org.allbinary.logic.util.cache.J2SECacheInterface_Package;
with org.allbinary.media.image.comparison.ImageComparisonWorker_Package; use org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
with org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package; use org.allbinary.input.automation.module.generic_Id.GenericProfileCaptureWorkerFactory_Package;
with org.allbinary.input.automation.module.generic_Id.CaptureWorkerUtil_Package; use org.allbinary.input.automation.module.generic_Id.CaptureWorkerUtil_Package;

package body org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package GenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
   package GenericProfileAction_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
   package GenericProfileActionScript_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
   package CapturedBufferedImagesCacheSingleton_Package renames Standard.org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
   package J2SECacheInterface_Package renames Standard.org.allbinary.logic.util.cache.J2SECacheInterface_Package;
   package ImageComparisonWorker_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
   package MotionRectanglesWorker_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
   procedure Initialize_Fields (This : in out GenericInputAutomationWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.PROCESS_DATA_WORKER_RESULTS := To_Unbounded_String ("processDataWorkerResults");
      This.lastFrame := -(1);
      This.frame := 0;
      This.genericProfile := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericInputAutomationWorker'Class; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; genericProfile_Param : access GenericProfile_Package.GenericProfile'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class) is
      inputAutomationActionInterface : constant InputAutomationActionInterface_Access := InputAutomationActionInterface_Access (inputAutomationActionInterface_Param);
      genericProfile : constant GenericProfile_Access := GenericProfile_Access (genericProfile_Param);
      motionRectangleConstraintsInterface : constant MotionRectangleConstraintsInterface_Access := MotionRectangleConstraintsInterface_Access (motionRectangleConstraintsInterface_Param);
      imageComparatorConstraintsInterface : constant ImageComparatorConstraintsInterface_Access := ImageComparatorConstraintsInterface_Access (imageComparatorConstraintsInterface_Param);
      vector : BasicArrayList_Access;
      size : Integer;
      genericProfileDataWorkerType : GenericProfileDataWorkerType_Access;
      index : Integer;
   begin
        AbstractInputAutomationWorker_Package.Initialize (This, inputAutomationActionInterface);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, GenericInputAutomationWorker_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        GenericInputAutomationWorker'Class (This).setCaptureWorker (GenericProfileCaptureWorkerFactory_Package.getInstance (genericProfile));
        GenericInputAutomationWorker'Class (This).setInputAutomationActionInterface (inputAutomationActionInterface);
        GenericInputAutomationWorker'Class (This).setImageComparisonWorker (ImageComparisonWorker_Package.Create (imageComparatorConstraintsInterface));
        GenericInputAutomationWorker'Class (This).setMotionRectanglesWorker (MotionRectanglesWorker_Package.Create (motionRectangleConstraintsInterface));
        GenericInputAutomationWorker'Class (This).setGenericProfile (genericProfile);
        vector := GenericInputAutomationWorker'Class (This).getGenericProfile.getGenericProfileDataWorkerTypeVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            genericProfileDataWorkerType := GenericProfileDataWorkerType_Access (vector.get (index));
            This.logUtil.putF (To_Unbounded_String ("Adding Listener: ") & Java_Image (genericProfileDataWorkerType), GenericInputAutomationWorker_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            if (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.COMPARISON) then
                GenericInputAutomationWorker'Class (This).getCaptureWorker.addListenerInterface (GenericInputAutomationWorker'Class (This).getImageComparisonWorker);
            elsif (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.MOTION) then
                GenericInputAutomationWorker'Class (This).getImageComparisonWorker.addListenerInterface (GenericInputAutomationWorker'Class (This).getMotionRectanglesWorker);
            end if;
        end loop;
   end Initialize;

   function Create (inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; genericProfile_Param : access GenericProfile_Package.GenericProfile'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class) return GenericInputAutomationWorker_Access is
      This : constant GenericInputAutomationWorker_Access := new GenericInputAutomationWorker;
   begin
      GenericInputAutomationWorker_Package.Initialize (This.all, inputAutomationActionInterface_Param, genericProfile_Param, motionRectangleConstraintsInterface_Param, imageComparatorConstraintsInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processDataWorkerResults (This : in out GenericInputAutomationWorker) is
      cacheInterface : J2SECacheInterface_Access;
      keyArray : Java_Object_Access_Array_Access;
      hashMap : HashMap_Access;
      set : Set_Access;
      actionNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      actionNameString : Unbounded_String;
      genericProfileAction : GenericProfileAction_Access;
      genericProfileActionScript : GenericProfileActionScript_Access;
      vector : BasicArrayList_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, GenericInputAutomationWorker_Access'(This'Unchecked_Access), This.PROCESS_DATA_WORKER_RESULTS);
        GenericInputAutomationWorker'Class (This).waitForDataWorkers;
        cacheInterface := J2SECacheInterface_Access (CapturedBufferedImagesCacheSingleton_Package.getInstance);
        keyArray := cacheInterface.keySet.toArray;
        if (keyArray'Length) > (0) then
            This.logUtil.putF (To_Unbounded_String ("Image Available"), GenericInputAutomationWorker_Access'(This'Unchecked_Access), This.PROCESS_DATA_WORKER_RESULTS);
            GenericInputAutomationWorker'Class (This).setFrame (Long_Long_Integer (keyArray ((keyArray'Length) - (1))));
            if (GenericInputAutomationWorker'Class (This).getFrame) > (This.lastFrame) then
                This.logUtil.putF (To_Unbounded_String ("Processing new frame: ") & Java_Image (GenericInputAutomationWorker'Class (This).getFrame), GenericInputAutomationWorker_Access'(This'Unchecked_Access), This.PROCESS_DATA_WORKER_RESULTS);
                hashMap := GenericInputAutomationWorker'Class (This).getGenericProfile.getGenericProfileActions.getHashMap;
                set := hashMap.keySet;
                This.logUtil.putF (To_Unbounded_String ("Processing ") & Java_Image (set.size) & To_Unbounded_String ("Actions"), GenericInputAutomationWorker_Access'(This'Unchecked_Access), This.PROCESS_DATA_WORKER_RESULTS);
                actionNameArray := set.toArray;
                size := actionNameArray'Length;
                for index in 0 .. (size) - 1 loop
                    actionNameString := Java_Unbox (actionNameArray (index));
                    This.logUtil.putF (To_Unbounded_String ("Processing Action: ") & actionNameString, GenericInputAutomationWorker_Access'(This'Unchecked_Access), This.PROCESS_DATA_WORKER_RESULTS);
                    genericProfileAction := GenericProfileAction_Access (hashMap.get (Java_Box (actionNameString)));
                    genericProfileActionScript := genericProfileAction.getGenericProfileActionScript;
                    vector := genericProfileActionScript.getProfileActionConditionInterfaceVector;
                    CaptureWorkerUtil_Package.processProfileActionConditions (vector, GenericInputAutomationWorker'Class (This).getFrame);
                end loop;
                This.lastFrame := GenericInputAutomationWorker'Class (This).getFrame;
            end if;
        else
            This.logUtil.putF (To_Unbounded_String ("Image Not Available"), GenericInputAutomationWorker_Access'(This'Unchecked_Access), This.PROCESS_DATA_WORKER_RESULTS);
        end if;
   end processDataWorkerResults;

   --  throws Exception
   procedure process (This : in out GenericInputAutomationWorker) is
   begin
        This.logUtil.putF (This.commonStrings.START, GenericInputAutomationWorker_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        GenericInputAutomationWorker'Class (This).startDataWorkers;
        GenericInputAutomationWorker'Class (This).processDataWorkerResults;
   end process;

   function getGenericProfile (This : in out GenericInputAutomationWorker) return GenericProfile_Access is
   begin
        return This.genericProfile;
   end getGenericProfile;

   procedure setGenericProfile (This : in out GenericInputAutomationWorker; genericProfile_Param : access GenericProfile_Package.GenericProfile'Class) is
      genericProfile : constant GenericProfile_Access := GenericProfile_Access (genericProfile_Param);
   begin
        This.genericProfile := genericProfile;
   end setGenericProfile;

   function getFrame (This : in out GenericInputAutomationWorker) return Long_Long_Integer is
   begin
        return This.frame;
   end getFrame;

   procedure setFrame (This : in out GenericInputAutomationWorker; frame : Long_Long_Integer) is
   begin
        This.frame := frame;
   end setFrame;

end org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package;


