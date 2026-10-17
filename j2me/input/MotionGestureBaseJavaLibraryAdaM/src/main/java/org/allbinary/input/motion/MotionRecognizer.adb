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


package body org.allbinary.input.motion.MotionRecognizer_Package is

   procedure Initialize_Fields (This : in out MotionRecognizer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MotionRecognizer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MotionRecognizer_Access is
      This : constant MotionRecognizer_Access := new MotionRecognizer;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure processStartMotionEvent (This : in out MotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        null;
   end processStartMotionEvent;

   --  throws Exception
   procedure processEndMotionEvent (This : in out MotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        null;
   end processEndMotionEvent;

   --  throws Exception
   procedure processDraggedMotionEvent (This : in out MotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        null;
   end processDraggedMotionEvent;

end org.allbinary.input.motion.MotionRecognizer_Package;


