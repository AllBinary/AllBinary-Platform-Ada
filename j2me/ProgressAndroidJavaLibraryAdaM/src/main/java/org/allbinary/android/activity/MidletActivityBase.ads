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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.app.Activity_Package; use android.app.Activity_Package;
with android.view.MotionEvent_Package; use android.view.MotionEvent_Package;
with android.view.View_Package; use android.view.View_Package;
with org.allbinary.android.GenericMotionEventVerifyInterface_Package; use org.allbinary.android.GenericMotionEventVerifyInterface_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package; use org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package; use org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package; use org.allbinary.game.configuration.event.GameInitializedEvent_Package;
with org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package; use org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.android.activity.SimpleProgressActivityInterface_Package; use org.allbinary.android.activity.SimpleProgressActivityInterface_Package;
with org.allbinary.android.activity.KeyInputViewCompositeInterface_Package; use org.allbinary.android.activity.KeyInputViewCompositeInterface_Package;

package org.allbinary.android.activity.MidletActivityBase_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package MotionEvent_Package renames Standard.android.view.MotionEvent_Package;
   package View_Package renames Standard.android.view.View_Package;
   package GenericMotionEventVerifyInterface_Package renames Standard.org.allbinary.android.GenericMotionEventVerifyInterface_Package;
   package GameFeatureEvent_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEvent_Package;
   package GameFeatureListenerInterface_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;
   package GameInitializedEvent_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedEvent_Package;
   package GameInitializedListenerInterface_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type MidletActivityBase is tagged;
   type MidletActivityBase_Access is access all MidletActivityBase'Class;
   type MidletActivityBase_Access_Array is array (Natural range <>) of MidletActivityBase_Access;
   type MidletActivityBase_Access_Array_Access is access all MidletActivityBase_Access_Array;

   type MidletActivityBase is new Activity and GameFeatureListenerInterface and GameInitializedListenerInterface and SimpleProgressActivityInterface and KeyInputViewCompositeInterface and GenericMotionEventVerifyInterface with null record;

   procedure Initialize (This : in out MidletActivityBase'Class);
   function Create return MidletActivityBase_Access;
   procedure onGameFeatureChange (This : in out MidletActivityBase; gameFeatureEvent_Param : access GameFeatureEvent_Package.GameFeatureEvent'Class);
   procedure onEvent (This : in out MidletActivityBase; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onGameInitialized (This : in out MidletActivityBase; gameInitializedEvent_Param : access GameInitializedEvent_Package.GameInitializedEvent'Class);
   procedure onSetProgress (This : in out MidletActivityBase; value : Integer; text : Unbounded_String);
   procedure onDismissProgress (This : in out MidletActivityBase; animationSequence : Integer_Array_Access);
   procedure onShowProgress (This : in out MidletActivityBase; indeterminate : Boolean; animationSequence : Integer_Array_Access);
   function getRootView (This : in out MidletActivityBase) return View_Access;
   function getView (This : in out MidletActivityBase) return View_Access;
   procedure setKeyInputView (This : in out MidletActivityBase; keyInputView_Param : access View_Package.View'Class);
   function onGenericMotionEvent (This : in out MidletActivityBase; event_Param : access MotionEvent_Package.MotionEvent'Class) return Boolean;
   procedure onGenericMotionEvent (This : in out MidletActivityBase; event_Param : access MotionEvent_Package.MotionEvent'Class);

end org.allbinary.android.activity.MidletActivityBase_Package;


