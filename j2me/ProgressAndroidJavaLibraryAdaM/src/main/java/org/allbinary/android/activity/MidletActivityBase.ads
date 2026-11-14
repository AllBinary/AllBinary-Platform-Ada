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

with AllBinary_Java;
limited with org.allbinary.android.activity.MidletActivityBase_Package;
package org.allbinary.android.activity.MidletActivityBase_Package_References is
   type MidletActivityBase_Access is access all org.allbinary.android.activity.MidletActivityBase_Package.MidletActivityBase'Class;
   type MidletActivityBase_Access_Array is array (Natural range <>) of MidletActivityBase_Access;
   type MidletActivityBase_Access_Array_Access is access all MidletActivityBase_Access_Array;
   type MidletActivityBase_Access_Array_Access_Array is array (Natural range <>) of MidletActivityBase_Access_Array_Access;
   type MidletActivityBase_Access_Array_Access_Array_Access is access all MidletActivityBase_Access_Array_Access_Array;
   type MidletActivityBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MidletActivityBase_Access_Array_Access;
   end record;
   function Java_Box (Value : MidletActivityBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MidletActivityBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MidletActivityBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MidletActivityBase_Access_Array_Access is (if Value /= null and then Value.all in MidletActivityBase_Access_Array_Object'Class then MidletActivityBase_Access_Array_Object'Class (Value.all).Value else null);
   type MidletActivityBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MidletActivityBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MidletActivityBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MidletActivityBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MidletActivityBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MidletActivityBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MidletActivityBase_Access_Array_Access_Array_Object'Class then MidletActivityBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.activity.MidletActivityBase_Package_References;

with org.allbinary.android.activity.MidletActivityBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.app.Activity_Package; use android.app.Activity_Package;
limited with android.view.MotionEvent_Package;
with android.view.MotionEvent_Package_References;
limited with android.view.View_Package;
with android.view.View_Package_References;
with org.allbinary.android.GenericMotionEventVerifyInterface_Package; use org.allbinary.android.GenericMotionEventVerifyInterface_Package;
limited with org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package_References;
with org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package; use org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;
limited with org.allbinary.game.configuration.event.GameInitializedEvent_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package_References;
with org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package; use org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
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
   package Reference_Types is
   subtype MotionEvent_Access is android.view.MotionEvent_Package_References.MotionEvent_Access;
   use type MotionEvent_Access;
   subtype MotionEvent_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array;
   use type MotionEvent_Access_Array;
   subtype MotionEvent_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access;
   use type MotionEvent_Access_Array_Access;
   subtype MotionEvent_Access_Array_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array;
   use type MotionEvent_Access_Array_Access_Array;
   subtype MotionEvent_Access_Array_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array_Access;
   use type MotionEvent_Access_Array_Access_Array_Access;
   subtype View_Access is android.view.View_Package_References.View_Access;
   use type View_Access;
   subtype View_Access_Array is android.view.View_Package_References.View_Access_Array;
   use type View_Access_Array;
   subtype View_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access;
   use type View_Access_Array_Access;
   subtype View_Access_Array_Access_Array is android.view.View_Package_References.View_Access_Array_Access_Array;
   use type View_Access_Array_Access_Array;
   subtype View_Access_Array_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access_Array_Access;
   use type View_Access_Array_Access_Array_Access;
   subtype GameFeatureEvent_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access;
   use type GameFeatureEvent_Access;
   subtype GameFeatureEvent_Access_Array is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array;
   use type GameFeatureEvent_Access_Array;
   subtype GameFeatureEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access;
   use type GameFeatureEvent_Access_Array_Access;
   subtype GameFeatureEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access_Array;
   use type GameFeatureEvent_Access_Array_Access_Array;
   subtype GameFeatureEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access_Array_Access;
   use type GameFeatureEvent_Access_Array_Access_Array_Access;
   subtype GameInitializedEvent_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access;
   use type GameInitializedEvent_Access;
   subtype GameInitializedEvent_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array;
   use type GameInitializedEvent_Access_Array;
   subtype GameInitializedEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access;
   use type GameInitializedEvent_Access_Array_Access;
   subtype GameInitializedEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array;
   use type GameInitializedEvent_Access_Array_Access_Array;
   subtype GameInitializedEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array_Access;
   use type GameInitializedEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MidletActivityBase_Access is org.allbinary.android.activity.MidletActivityBase_Package_References.MidletActivityBase_Access;
   function "=" (Left, Right : MidletActivityBase_Access) return Boolean renames org.allbinary.android.activity.MidletActivityBase_Package_References."=";
   subtype MidletActivityBase_Access_Array is org.allbinary.android.activity.MidletActivityBase_Package_References.MidletActivityBase_Access_Array;
   function "=" (Left, Right : MidletActivityBase_Access_Array) return Boolean renames org.allbinary.android.activity.MidletActivityBase_Package_References."=";
   subtype MidletActivityBase_Access_Array_Access is org.allbinary.android.activity.MidletActivityBase_Package_References.MidletActivityBase_Access_Array_Access;
   function "=" (Left, Right : MidletActivityBase_Access_Array_Access) return Boolean renames org.allbinary.android.activity.MidletActivityBase_Package_References."=";
   function Java_Box (Value : MidletActivityBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.activity.MidletActivityBase_Package_References.Java_Box;
   function Java_Unbox_MidletActivityBase_Access_Array (Value : access Java_Object'Class) return MidletActivityBase_Access_Array_Access renames org.allbinary.android.activity.MidletActivityBase_Package_References.Java_Unbox_MidletActivityBase_Access_Array;
   subtype MidletActivityBase_Access_Array_Access_Array is org.allbinary.android.activity.MidletActivityBase_Package_References.MidletActivityBase_Access_Array_Access_Array;
   function "=" (Left, Right : MidletActivityBase_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.MidletActivityBase_Package_References."=";
   subtype MidletActivityBase_Access_Array_Access_Array_Access is org.allbinary.android.activity.MidletActivityBase_Package_References.MidletActivityBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MidletActivityBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.MidletActivityBase_Package_References."=";
   function Java_Box (Value : MidletActivityBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.activity.MidletActivityBase_Package_References.Java_Box;
   function Java_Unbox_MidletActivityBase_Access_Array_Access_Array (Value : access Java_Object'Class) return MidletActivityBase_Access_Array_Access_Array_Access renames org.allbinary.android.activity.MidletActivityBase_Package_References.Java_Unbox_MidletActivityBase_Access_Array_Access_Array;

   type MidletActivityBase is new Activity_Package.Activity and GameFeatureListenerInterface and GameInitializedListenerInterface and SimpleProgressActivityInterface and KeyInputViewCompositeInterface and GenericMotionEventVerifyInterface with null record;

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


