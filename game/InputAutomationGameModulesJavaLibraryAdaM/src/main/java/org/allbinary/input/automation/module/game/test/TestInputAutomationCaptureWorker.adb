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
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package; use org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
with org.allbinary.logic.util.cache.J2SECacheInterface_Package; use org.allbinary.logic.util.cache.J2SECacheInterface_Package;

package body org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package GenericProfileAction_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
   package GenericProfileActionScript_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
   package CapturedBufferedImagesCacheSingleton_Package renames Standard.org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
   package J2SECacheInterface_Package renames Standard.org.allbinary.logic.util.cache.J2SECacheInterface_Package;
   procedure Initialize_Fields (This : in out TestInputAutomationCaptureWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.genericProfileActions := null;
      This.MESSAGE := To_Unbounded_String ("GenericInputAutomationCaptureWorker");
      This.PROCESS_DATA_WORKER_RESULTS := To_Unbounded_String ("processDataWorkerResults");
      This.IMAGE_AVAILABLE_SO_PROCESSING := To_Unbounded_String ("Image Available so processing");
      This.IMAGE_NOT_AVAILABLE := To_Unbounded_String ("Image Not Available");
   end Initialize_Fields;


   procedure Initialize (This : in out TestInputAutomationCaptureWorker'Class; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; genericProfileActions_Param : access GenericProfileActions_Package.GenericProfileActions'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) is
      inputAutomationActionInterface : constant InputAutomationActionInterface_Access := InputAutomationActionInterface_Access (inputAutomationActionInterface_Param);
      genericProfileActions : constant GenericProfileActions_Access := GenericProfileActions_Access (genericProfileActions_Param);
      imageComparatorConstraintsInterface : constant ImageComparatorConstraintsInterface_Access := ImageComparatorConstraintsInterface_Access (imageComparatorConstraintsInterface_Param);
      motionRectangleConstraintsInterface : constant MotionRectangleConstraintsInterface_Access := MotionRectangleConstraintsInterface_Access (motionRectangleConstraintsInterface_Param);
   begin
        AbstractInputAutomationWorker_Package.Initialize (This, inputAutomationActionInterface);
        Initialize_Fields (This);
        This.logUtil.putF (This.MESSAGE, TestInputAutomationCaptureWorker_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        TestInputAutomationCaptureWorker'Class (This).setGenericProfileActions (genericProfileActions);
   end Initialize;

   function Create (inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; genericProfileActions_Param : access GenericProfileActions_Package.GenericProfileActions'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) return TestInputAutomationCaptureWorker_Access is
      This : constant TestInputAutomationCaptureWorker_Access := new TestInputAutomationCaptureWorker;
   begin
      TestInputAutomationCaptureWorker_Package.Initialize (This.all, inputAutomationActionInterface_Param, genericProfileActions_Param, imageComparatorConstraintsInterface_Param, motionRectangleConstraintsInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processDataWorkerResults (This : in out TestInputAutomationCaptureWorker) is
      cacheInterface : J2SECacheInterface_Access;
      anyType : Java_Object_Access;
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
        cacheInterface := J2SECacheInterface_Access (CapturedBufferedImagesCacheSingleton_Package.getInstance);
        if (cacheInterface.keySet.size) > (0) then
            This.logUtil.putF (This.IMAGE_AVAILABLE_SO_PROCESSING, TestInputAutomationCaptureWorker_Access'(This'Unchecked_Access), This.PROCESS_DATA_WORKER_RESULTS);
            anyType := cacheInterface.keySet.toArray (0);
            hashMap := TestInputAutomationCaptureWorker'Class (This).getGenericProfileActions.getHashMap;
            set := hashMap.keySet;
            actionNameArray := set.toArray;
            size := actionNameArray'Length;
            for index in 0 .. (size) - 1 loop
                actionNameString := Java_Unbox (actionNameArray (index));
                genericProfileAction := GenericProfileAction_Access (hashMap.get (Java_Box (actionNameString)));
                genericProfileActionScript := genericProfileAction.getGenericProfileActionScript;
                vector := genericProfileActionScript.getProfileActionConditionInterfaceVector;
            end loop;
            cacheInterface.get (anyType);
        else
            This.logUtil.putF (This.IMAGE_NOT_AVAILABLE, TestInputAutomationCaptureWorker_Access'(This'Unchecked_Access), This.PROCESS_DATA_WORKER_RESULTS);
        end if;
   end processDataWorkerResults;

   --  throws Exception
   procedure process (This : in out TestInputAutomationCaptureWorker) is
   begin
        This.logUtil.putF (This.commonStrings.START, TestInputAutomationCaptureWorker_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        TestInputAutomationCaptureWorker'Class (This).startDataWorkers;
        TestInputAutomationCaptureWorker'Class (This).processDataWorkerResults;
   end process;

   function getGenericProfileActions (This : in out TestInputAutomationCaptureWorker) return GenericProfileActions_Access is
   begin
        return This.genericProfileActions;
   end getGenericProfileActions;

   procedure setGenericProfileActions (This : in out TestInputAutomationCaptureWorker; genericProfileActions_Param : access GenericProfileActions_Package.GenericProfileActions'Class) is
      genericProfileActions : constant GenericProfileActions_Access := GenericProfileActions_Access (genericProfileActions_Param);
   begin
        This.genericProfileActions := genericProfileActions;
   end setGenericProfileActions;

end org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package;


