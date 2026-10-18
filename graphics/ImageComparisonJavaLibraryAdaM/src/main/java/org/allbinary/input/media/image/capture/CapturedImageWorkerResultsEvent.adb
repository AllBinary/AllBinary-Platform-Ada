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


package body org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package is

   procedure Initialize_Fields (This : in out CapturedImageWorkerResultsEvent'Class) is
   begin
      null;
      
      This.bufferedImage := null;
   end Initialize_Fields;


   procedure Initialize (This : in out CapturedImageWorkerResultsEvent'Class; anyType_Param : access Java_Object'Class; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.frame := frame;
        CapturedImageWorkerResultsEvent'Class (This).setBufferedImage (bufferedImage);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return CapturedImageWorkerResultsEvent_Access is
      This : constant CapturedImageWorkerResultsEvent_Access := new CapturedImageWorkerResultsEvent;
   begin
      CapturedImageWorkerResultsEvent_Package.Initialize (This.all, anyType_Param, frame, bufferedImage_Param);
      return This;
   end Create;

   function getBufferedImage (This : in out CapturedImageWorkerResultsEvent) return BufferedImage_Access is
   begin
        return This.bufferedImage;
   end getBufferedImage;

   procedure setBufferedImage (This : in out CapturedImageWorkerResultsEvent; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        This.bufferedImage := bufferedImage;
   end setBufferedImage;

   function getFrame (This : in out CapturedImageWorkerResultsEvent) return Long_Long_Integer is
   begin
        return This.frame;
   end getFrame;

end org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;


