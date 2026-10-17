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


package body org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package is

   procedure Initialize_Fields (This : in out OnlyTouchButtonRecognizer'Class) is
   begin
      null;
      
      This.touchButtonProcessing := False;
   end Initialize_Fields;


   procedure Initialize (This : in out OnlyTouchButtonRecognizer'Class) is
   begin
      MotionRecognizer_Package.Initialize (This);
      Initialize_Fields (This);
        This.touchButtonRecognizer := TouchButtonRecognizer_Package.Create;
   end Initialize;

   function Create return OnlyTouchButtonRecognizer_Access is
      This : constant OnlyTouchButtonRecognizer_Access := new OnlyTouchButtonRecognizer;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processStartMotionEvent (This : in out OnlyTouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        if This.touchButtonRecognizer.pressTouchButtonInput (x, y, deviceId) then
            This.touchButtonProcessing := True;
        end if;
   end processStartMotionEvent;

   --  throws Exception
   procedure processEndMotionEvent (This : in out OnlyTouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        if This.touchButtonProcessing then
            This.touchButtonProcessing := False;
        end if;
        if This.touchButtonRecognizer.releaseTouchButtonInput (x, y, deviceId) then
            return;
        end if;
   end processEndMotionEvent;

   --  throws Exception
   procedure processDraggedMotionEvent (This : in out OnlyTouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        if This.touchButtonProcessing then
            This.touchButtonRecognizer.pressTouchButtonInput (x, y, deviceId);
        end if;
   end processDraggedMotionEvent;

end org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package;


