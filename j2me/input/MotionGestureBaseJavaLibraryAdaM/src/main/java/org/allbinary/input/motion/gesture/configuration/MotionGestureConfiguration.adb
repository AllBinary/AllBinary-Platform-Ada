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


with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package; use org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package MotionGestureToMotionGestureActionAssociation_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype CompleteMotionGestureInputEvent_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out MotionGestureConfiguration'Class) is
   begin
      null;
      This.diagonalMotionGestureAllowed := True;
      This.diagonalTolerance := 7;
      This.minimumMotionGesture := 9;
      This.button := StringUtil_Package.getInstance.EMPTY_STRING;
      This.color := BasicColor_Access (BasicColorFactory_Package.getInstance.BLUE);
      This.executingActions := True;
      This.mouseButtonMask := 0;
      This.activeCommands := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out MotionGestureConfiguration'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MotionGestureConfiguration_Access is
      This : constant MotionGestureConfiguration_Access := new MotionGestureConfiguration;
   begin
      MotionGestureConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addMotionGestureAction (This : in out MotionGestureConfiguration; list_Param : access BasicArrayList_Package.BasicArrayList'Class; commandAction_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      commandAction : constant CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (commandAction_Param);
   begin
        This.activeCommands.add (Java_Object_Access (MotionGestureToMotionGestureActionAssociation_Package.Create (list, commandAction)));
   end addMotionGestureAction;

   procedure clearMotionGestureAction (This : in out MotionGestureConfiguration) is
   begin
        This.activeCommands.clear;
   end clearMotionGestureAction;

   function getAssociateCommandActionsList (This : in out MotionGestureConfiguration) return BasicArrayList_Access is
   begin
        return This.activeCommands;
   end getAssociateCommandActionsList;

   function isDiagonalMotionGestureAllowed (This : in out MotionGestureConfiguration) return Boolean is
   begin
        return This.diagonalMotionGestureAllowed;
   end isDiagonalMotionGestureAllowed;

   function isExecutingActionsAllowed (This : in out MotionGestureConfiguration) return Boolean is
   begin
        return This.executingActions;
   end isExecutingActionsAllowed;

   procedure setExecutingActionsAllowed (This : in out MotionGestureConfiguration; executingActionAllowed : Boolean) is
   begin
        This.executingActions := executingActionAllowed;
   end setExecutingActionsAllowed;

   procedure setDiagonalMotionGestureAllowed (This : in out MotionGestureConfiguration; diagonalMotionGestureAllowed : Boolean) is
   begin
        This.diagonalMotionGestureAllowed := diagonalMotionGestureAllowed;
   end setDiagonalMotionGestureAllowed;

   function getDiagonalTolerance (This : in out MotionGestureConfiguration) return Integer is
   begin
        return This.diagonalTolerance;
   end getDiagonalTolerance;

   procedure setDiagonalTolerance (This : in out MotionGestureConfiguration; diagonalTolerance : Integer) is
   begin
        This.diagonalTolerance := diagonalTolerance;
   end setDiagonalTolerance;

   function getMinimumMotionGesture (This : in out MotionGestureConfiguration) return Integer is
   begin
        return This.minimumMotionGesture;
   end getMinimumMotionGesture;

   procedure setMinimumMotionGesture (This : in out MotionGestureConfiguration; minimumMotionGesture : Integer) is
   begin
        This.minimumMotionGesture := minimumMotionGesture;
   end setMinimumMotionGesture;

   function getButton (This : in out MotionGestureConfiguration) return Unbounded_String is
   begin
        return This.button;
   end getButton;

   procedure setButton (This : in out MotionGestureConfiguration; button : Unbounded_String) is
   begin
        This.button := button;
   end setButton;

   function getColor (This : in out MotionGestureConfiguration) return BasicColor_Access is
   begin
        return This.color;
   end getColor;

   procedure setColor (This : in out MotionGestureConfiguration; color_Param : access BasicColor_Package.BasicColor'Class) is
      color : constant BasicColor_Access := BasicColor_Access (color_Param);
   begin
        This.color := color;
   end setColor;

   function getMouseButtonMask (This : in out MotionGestureConfiguration) return Integer is
   begin
        return This.mouseButtonMask;
   end getMouseButtonMask;

   procedure setMouseButtonMask (This : in out MotionGestureConfiguration; mouseButtonMask : Integer) is
   begin
        This.mouseButtonMask := mouseButtonMask;
   end setMouseButtonMask;

end org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;


