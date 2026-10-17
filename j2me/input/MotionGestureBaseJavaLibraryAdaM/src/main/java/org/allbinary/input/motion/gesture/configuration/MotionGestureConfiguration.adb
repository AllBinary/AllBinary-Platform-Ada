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


package body org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package is

   procedure Initialize_Fields (This : in out MotionGestureConfiguration'Class) is
   begin
      null;
      This.diagonalMotionGestureAllowed := True;
      This.diagonalTolerance := 7;
      This.minimumMotionGesture := 9;
      This.button := StringUtil_Package.getInstance.EMPTY_STRING;
      This.color := BasicColorFactory_Package.getInstance.BLUE;
      This.executingActions := True;
      This.mouseButtonMask := 0;
      This.activeCommands := BasicArrayListD_Package.Create;
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

   procedure addMotionGestureAction (This : in out MotionGestureConfiguration; list : BasicArrayList_Access; commandAction : CompleteMotionGestureInputEvent_Access) is
   begin
        This.activeCommands.add (MotionGestureToMotionGestureActionAssociation_Package.Create (list, commandAction));
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

   procedure setColor (This : in out MotionGestureConfiguration; color : BasicColor_Access) is
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


