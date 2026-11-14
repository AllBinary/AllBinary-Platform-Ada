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


with android.app.Activity_Package; use android.app.Activity_Package;
with android.view.MotionEvent_Package; use android.view.MotionEvent_Package;
with android.view.MotionEvent_Package_References;
with android.view.View_Package; use android.view.View_Package;
with android.view.View_Package_References;
with org.allbinary.android.GenericMotionEventVerifyInterface_Package; use org.allbinary.android.GenericMotionEventVerifyInterface_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package; use org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package_References;
with org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package; use org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package; use org.allbinary.game.configuration.event.GameInitializedEvent_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package_References;
with org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package; use org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;

package body org.allbinary.android.activity.MidletActivityBase_Package is

   subtype MotionEvent_Access is android.view.MotionEvent_Package_References.MotionEvent_Access;
   function "=" (Left, Right : MotionEvent_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array;
   function "=" (Left, Right : MotionEvent_Access_Array) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access;
   function "=" (Left, Right : MotionEvent_Access_Array_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionEvent_Access_Array_Access_Array) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionEvent_Access_Array_Access_Array_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype View_Access is android.view.View_Package_References.View_Access;
   function "=" (Left, Right : View_Access) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array is android.view.View_Package_References.View_Access_Array;
   function "=" (Left, Right : View_Access_Array) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access;
   function "=" (Left, Right : View_Access_Array_Access) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array_Access_Array is android.view.View_Package_References.View_Access_Array_Access_Array;
   function "=" (Left, Right : View_Access_Array_Access_Array) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access_Array_Access;
   function "=" (Left, Right : View_Access_Array_Access_Array_Access) return Boolean renames android.view.View_Package_References."=";
   subtype GameFeatureEvent_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access;
   function "=" (Left, Right : GameFeatureEvent_Access) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   subtype GameFeatureEvent_Access_Array is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array;
   function "=" (Left, Right : GameFeatureEvent_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   subtype GameFeatureEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access;
   function "=" (Left, Right : GameFeatureEvent_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   subtype GameFeatureEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   subtype GameFeatureEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameFeatureEvent_Package_References."=";
   subtype GameInitializedEvent_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access;
   function "=" (Left, Right : GameInitializedEvent_Access) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array;
   function "=" (Left, Right : GameInitializedEvent_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access;
   function "=" (Left, Right : GameInitializedEvent_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameInitializedEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInitializedEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
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


