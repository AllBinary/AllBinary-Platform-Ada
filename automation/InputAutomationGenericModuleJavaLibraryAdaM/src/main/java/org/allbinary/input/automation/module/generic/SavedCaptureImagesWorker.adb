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


package body org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package is

   procedure Initialize_Fields (This : in out SavedCaptureImagesWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.running := False;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SavedCaptureImagesWorker'Class; savedCaptureGenericProfileDataWorkerType_Param : access SavedCaptureGenericProfileDataWorkerType_Package.SavedCaptureGenericProfileDataWorkerType'Class) is
      savedCaptureGenericProfileDataWorkerType : constant SavedCaptureGenericProfileDataWorkerType_Access := SavedCaptureGenericProfileDataWorkerType_Access (savedCaptureGenericProfileDataWorkerType_Param);
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        This.savedCaptureGenericProfileDataWorkerType := savedCaptureGenericProfileDataWorkerType;
        This.screenScavangerRobot := ScreenScavangerRobot_Package.Create;
        SavedCaptureImagesWorker_Package.index := ProcessingFrameIndexFactory_Package.next;
   end Initialize;

   function Create (savedCaptureGenericProfileDataWorkerType_Param : access SavedCaptureGenericProfileDataWorkerType_Package.SavedCaptureGenericProfileDataWorkerType'Class) return SavedCaptureImagesWorker_Access is
      This : constant SavedCaptureImagesWorker_Access := new SavedCaptureImagesWorker;
   begin
      SavedCaptureImagesWorker_Package.Initialize (This.all, savedCaptureGenericProfileDataWorkerType_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setThread (This : in out SavedCaptureImagesWorker; thread_Param : access Thread_Package.Thread'Class) is
      thread : constant Thread_Access := Thread_Access (thread_Param);
   begin
        null;
   end setThread;

   function isRunning (This : in out SavedCaptureImagesWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out SavedCaptureImagesWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   procedure run (This : in out SavedCaptureImagesWorker) is
      timeHelper : TimeDelayHelper_Access;
      frame : Long_Long_Integer;
      filePathStringBuffer : StringMaker_Access;
      filePath : Unbounded_String;
      file : File_Access;
      bufferedImage : BufferedImage_Access;
      capturedImageEvent : CapturedImageWorkerResultsEvent_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, SavedCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            while This.isRunning loop
                timeHelper.setStartTimeTNT;
                frame := index;
                filePathStringBuffer := StringMaker_Package.Create;
                filePathStringBuffer.append (This.savedCaptureGenericProfileDataWorkerType.getPath);
                filePathStringBuffer.append (LongUtil_Package.fillIn (frame.toString));
                filePathStringBuffer.append (MediaDataFactory_Package.getInstance.JPG.getExtension);
                filePath := filePathStringBuffer.toString;
                This.logUtil.putF (To_Unbounded_String ("Loading Image File Path: ") & filePath, SavedCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
                file := File_Package.Create (filePath);
                if file.isFile then
                    bufferedImage := ImageIO_Package.read (file);
                    SavedCaptureImagesWorker_Package.index := SavedCaptureImagesWorker_Package.index + 1;
                    CapturedBufferedImagesCacheSingleton_Package.getInstance.add (BufferedImageFrameCacheable_Package.Create (bufferedImage, frame));
                    capturedImageEvent := CapturedImageWorkerResultsEvent_Package.Create (SavedCaptureImagesWorker_Access'(This'Unchecked_Access), frame, bufferedImage);
                    This.fireEvent (capturedImageEvent);
                else
                    This.logUtil.putF (To_Unbounded_String ("Could Not Load File: ") & filePath, SavedCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
                end if;
                This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), SavedCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
                This.setRunning (False);
            end loop;
            This.logUtil.putF (This.commonStrings.END_Id, SavedCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, SavedCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

begin
   null;
   index := 0;

end org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package;


