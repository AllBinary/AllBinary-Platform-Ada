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


package body org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package is

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


   procedure Initialize (This : in out TestInputAutomationCaptureWorker'Class; inputAutomationActionInterface : InputAutomationActionInterface_Access; genericProfileActions : GenericProfileActions_Access; imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access; motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access) is
   begin
        AbstractInputAutomationWorker_Package.Initialize (This, inputAutomationActionInterface);
        Initialize_Fields (This);
        This.logUtil.putF (This.MESSAGE, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.setGenericProfileActions (genericProfileActions);
   end Initialize;

   function Create (inputAutomationActionInterface : InputAutomationActionInterface_Access; genericProfileActions : GenericProfileActions_Access; imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access; motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access) return TestInputAutomationCaptureWorker_Access is
      This : constant TestInputAutomationCaptureWorker_Access := new TestInputAutomationCaptureWorker;
   begin
      Initialize (This.all, inputAutomationActionInterface, genericProfileActions, imageComparatorConstraintsInterface, motionRectangleConstraintsInterface);
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
            This.logUtil.putF (This.IMAGE_AVAILABLE_SO_PROCESSING, This'Unchecked_Access, This.PROCESS_DATA_WORKER_RESULTS);
            anyType := cacheInterface.keySet.toArray (0);
            hashMap := This.getGenericProfileActions.getHashMap;
            set := hashMap.keySet;
            actionNameArray := set.toArray;
            size := actionNameArray'Length;
            for index in 0 .. (size) - 1 loop
                actionNameString := Unbounded_String (actionNameArray (index));
                genericProfileAction := GenericProfileAction_Access (hashMap.get (actionNameString));
                genericProfileActionScript := genericProfileAction.getGenericProfileActionScript;
                vector := genericProfileActionScript.getProfileActionConditionInterfaceVector;
            end loop;
            cacheInterface.get (anyType);
        else
            This.logUtil.putF (This.IMAGE_NOT_AVAILABLE, This'Unchecked_Access, This.PROCESS_DATA_WORKER_RESULTS);
        end if;
   end processDataWorkerResults;

   --  throws Exception
   procedure process (This : in out TestInputAutomationCaptureWorker) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.PROCESS);
        This.startDataWorkers;
        This.processDataWorkerResults;
   end process;

   function getGenericProfileActions (This : in out TestInputAutomationCaptureWorker) return GenericProfileActions_Access is
   begin
        return This.genericProfileActions;
   end getGenericProfileActions;

   procedure setGenericProfileActions (This : in out TestInputAutomationCaptureWorker; genericProfileActions : GenericProfileActions_Access) is
   begin
        This.genericProfileActions := genericProfileActions;
   end setGenericProfileActions;

   procedure getGenericProfileActions (This : in out TestInputAutomationCaptureWorker) is
      Java_Result : constant GenericProfileActions_Access := TestInputAutomationCaptureWorker'Class (This).getGenericProfileActions;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGenericProfileActions;

end org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package;


