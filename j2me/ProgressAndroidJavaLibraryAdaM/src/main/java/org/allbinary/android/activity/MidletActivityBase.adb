-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.android.activity.MidletActivityBase_Package is

   procedure Initialize_Fields (This : in out MidletActivityBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MidletActivityBase'Class) is
   begin
      Activity_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return MidletActivityBase_Access is
      This : constant MidletActivityBase_Access := new MidletActivityBase;
   begin
      MidletActivityBase_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onGameFeatureChange (This : in out MidletActivityBase; gameFeatureEvent_Param : access GameFeatureEvent_Package.GameFeatureEvent'Class) is
      gameFeatureEvent : constant GameFeatureEvent_Access := GameFeatureEvent_Access (gameFeatureEvent_Param);
   begin
        null;
   end onGameFeatureChange;

   procedure onEvent (This : in out MidletActivityBase; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        null;
   end onEvent;

   procedure onGameInitialized (This : in out MidletActivityBase; gameInitializedEvent_Param : access GameInitializedEvent_Package.GameInitializedEvent'Class) is
      gameInitializedEvent : constant GameInitializedEvent_Access := GameInitializedEvent_Access (gameInitializedEvent_Param);
   begin
        null;
   end onGameInitialized;

   --  throws Exception
   procedure onSetProgress (This : in out MidletActivityBase; value : Integer; text : Unbounded_String) is
   begin
        null;
   end onSetProgress;

   --  throws Exception
   procedure onDismissProgress (This : in out MidletActivityBase; animationSequence : Integer_Array_Access) is
   begin
        null;
   end onDismissProgress;

   --  throws Exception
   procedure onShowProgress (This : in out MidletActivityBase; indeterminate : Boolean; animationSequence : Integer_Array_Access) is
   begin
        null;
   end onShowProgress;

   function getRootView (This : in out MidletActivityBase) return View_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRootView;

   function getView (This : in out MidletActivityBase) return View_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getView;

   procedure setKeyInputView (This : in out MidletActivityBase; keyInputView_Param : access View_Package.View'Class) is
      keyInputView : constant View_Access := View_Access (keyInputView_Param);
   begin
        null;
   end setKeyInputView;

   function onGenericMotionEvent (This : in out MidletActivityBase; event_Param : access MotionEvent_Package.MotionEvent'Class) return Boolean is
      event : constant MotionEvent_Access := MotionEvent_Access (event_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end onGenericMotionEvent;

   procedure onGenericMotionEvent (This : in out MidletActivityBase; event_Param : access MotionEvent_Package.MotionEvent'Class) is
      Java_Result : constant Boolean := MidletActivityBase'Class (This).onGenericMotionEvent (event_Param => event_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onGenericMotionEvent;

end org.allbinary.android.activity.MidletActivityBase_Package;


