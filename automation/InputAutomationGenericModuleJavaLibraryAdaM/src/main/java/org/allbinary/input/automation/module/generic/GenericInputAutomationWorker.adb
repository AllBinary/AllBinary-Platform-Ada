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


package body org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package is

   procedure Initialize_Fields (This : in out GenericInputAutomationWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.PROCESS_DATA_WORKER_RESULTS := To_Unbounded_String ("processDataWorkerResults");
      This.lastFrame := -(1);
      This.frame := null;
      This.genericProfile := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericInputAutomationWorker'Class; inputAutomationActionInterface : InputAutomationActionInterface_Access; genericProfile : GenericProfile_Access; motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access; imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access) is
      vector : BasicArrayList_Access;
      size : Integer;
      genericProfileDataWorkerType : GenericProfileDataWorkerType_Access;
      index : Integer;
   begin
        AbstractInputAutomationWorker_Package.Initialize (This, inputAutomationActionInterface);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.setCaptureWorker (GenericProfileCaptureWorkerFactory_Package.getInstance (genericProfile));
        This.setInputAutomationActionInterface (inputAutomationActionInterface);
        This.setImageComparisonWorker (ImageComparisonWorker_Package.Create (imageComparatorConstraintsInterface));
        This.setMotionRectanglesWorker (MotionRectanglesWorker_Package.Create (motionRectangleConstraintsInterface));
        This.setGenericProfile (genericProfile);
        vector := This.getGenericProfile.getGenericProfileDataWorkerTypeVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            genericProfileDataWorkerType := GenericProfileDataWorkerType_Access (vector.get (index));
            This.logUtil.putF (To_Unbounded_String ("Adding Listener: ") & Java_Image (genericProfileDataWorkerType), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            if (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.COMPARISON) then
                This.getCaptureWorker.addListenerInterface (This.getImageComparisonWorker);
            elsif (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.MOTION) then
                This.getImageComparisonWorker.addListenerInterface (This.getMotionRectanglesWorker);
            end if;
        end loop;
   end Initialize;

   function Create (inputAutomationActionInterface : InputAutomationActionInterface_Access; genericProfile : GenericProfile_Access; motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access; imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access) return GenericInputAutomationWorker_Access is
      This : constant GenericInputAutomationWorker_Access := new GenericInputAutomationWorker;
   begin
      GenericInputAutomationWorker_Package.Initialize (This.all, inputAutomationActionInterface, genericProfile, motionRectangleConstraintsInterface, imageComparatorConstraintsInterface);
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
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.PROCESS_DATA_WORKER_RESULTS);
        This.waitForDataWorkers;
        cacheInterface := J2SECacheInterface_Access (CapturedBufferedImagesCacheSingleton_Package.getInstance);
        keyArray := cacheInterface.keySet.toArray;
        if (keyArray'Length) > (0) then
            This.logUtil.putF (To_Unbounded_String ("Image Available"), This'Unchecked_Access, This.PROCESS_DATA_WORKER_RESULTS);
            This.setFrame (Long_Long_Integer (keyArray ((keyArray'Length) - (1))));
            if (This.getFrame) > (This.lastFrame) then
                This.logUtil.putF (To_Unbounded_String ("Processing new frame: ") & Java_Image (This.getFrame), This'Unchecked_Access, This.PROCESS_DATA_WORKER_RESULTS);
                hashMap := This.getGenericProfile.getGenericProfileActions.getHashMap;
                set := hashMap.keySet;
                This.logUtil.putF (To_Unbounded_String ("Processing ") & Java_Image (set.size) & To_Unbounded_String ("Actions"), This'Unchecked_Access, This.PROCESS_DATA_WORKER_RESULTS);
                actionNameArray := set.toArray;
                size := actionNameArray'Length;
                for index in 0 .. (size) - 1 loop
                    actionNameString := Unbounded_String (actionNameArray (index));
                    This.logUtil.putF (To_Unbounded_String ("Processing Action: ") & actionNameString, This'Unchecked_Access, This.PROCESS_DATA_WORKER_RESULTS);
                    genericProfileAction := GenericProfileAction_Access (hashMap.get (actionNameString));
                    genericProfileActionScript := genericProfileAction.getGenericProfileActionScript;
                    vector := genericProfileActionScript.getProfileActionConditionInterfaceVector;
                    CaptureWorkerUtil_Package.processProfileActionConditions (vector, This.getFrame);
                end loop;
                This.lastFrame := This.getFrame;
            end if;
        else
            This.logUtil.putF (To_Unbounded_String ("Image Not Available"), This'Unchecked_Access, This.PROCESS_DATA_WORKER_RESULTS);
        end if;
   end processDataWorkerResults;

   --  throws Exception
   procedure process (This : in out GenericInputAutomationWorker) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.PROCESS);
        This.startDataWorkers;
        This.processDataWorkerResults;
   end process;

   function getGenericProfile (This : in out GenericInputAutomationWorker) return GenericProfile_Access is
   begin
        return This.genericProfile;
   end getGenericProfile;

   procedure setGenericProfile (This : in out GenericInputAutomationWorker; genericProfile : GenericProfile_Access) is
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


