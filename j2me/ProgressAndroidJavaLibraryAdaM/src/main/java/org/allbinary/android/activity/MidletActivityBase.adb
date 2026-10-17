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


   procedure onGameFeatureChange (This : in out MidletActivityBase; gameFeatureEvent : GameFeatureEvent_Access) is
   begin
        null;
   end onGameFeatureChange;

   procedure onEvent (This : in out MidletActivityBase; eventObject : AllBinaryEventObject_Access) is
   begin
        null;
   end onEvent;

   procedure onGameInitialized (This : in out MidletActivityBase; gameInitializedEvent : GameInitializedEvent_Access) is
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
   end getRootView;

   function getView (This : in out MidletActivityBase) return View_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getView;

   procedure setKeyInputView (This : in out MidletActivityBase; keyInputView : View_Access) is
   begin
        null;
   end setKeyInputView;

   function onGenericMotionEvent (This : in out MidletActivityBase; event : MotionEvent_Access) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end onGenericMotionEvent;

   procedure onGenericMotionEvent (This : in out MidletActivityBase; event : MotionEvent_Access) is
      Java_Result : constant Boolean := MidletActivityBase'Class (This).onGenericMotionEvent (event);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onGenericMotionEvent;

end org.allbinary.android.activity.MidletActivityBase_Package;


