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


package body org.allbinary.input.motion.AllMotionRecognizer_Package is

   procedure Initialize_Fields (This : in out AllMotionRecognizer'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllMotionRecognizer'Class) is
   begin
      Initialize_Fields (This);
        This.id := Java_Post_Increment (AllMotionRecognizer_Package.index);
   end Initialize;

   function Create return AllMotionRecognizer_Access is
      This : constant AllMotionRecognizer_Access := new AllMotionRecognizer;
   begin
      AllMotionRecognizer_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processStartMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        null;
   end processStartMotionEvent;

   --  throws Exception
   procedure processEndMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        null;
   end processEndMotionEvent;

   --  throws Exception
   procedure processDraggedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        null;
   end processDraggedMotionEvent;

   --  throws Exception
   procedure processMovedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        null;
   end processMovedMotionEvent;

   --  throws Exception
   procedure processScrolledMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        null;
   end processScrolledMotionEvent;

   function getId (This : in out AllMotionRecognizer) return Integer is
   begin
        return This.id;
   end getId;

begin
   null;
   index := 0;

end org.allbinary.input.motion.AllMotionRecognizer_Package;


