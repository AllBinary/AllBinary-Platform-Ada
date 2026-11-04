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


with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package;
with org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References;
with org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package;

package body org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package is

   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   function "=" (Left, Right : MyCanvas_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   function "=" (Left, Right : MotionGestureEvent_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
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
   subtype PopupMenuInputProcessor_Access is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access;
   function "=" (Left, Right : PopupMenuInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   subtype PopupMenuInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array;
   function "=" (Left, Right : PopupMenuInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   subtype PopupMenuInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array_Access;
   function "=" (Left, Right : PopupMenuInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   subtype PopupMenuInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : PopupMenuInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   subtype PopupMenuInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PopupMenuInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out PopupCommandFormInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PopupCommandFormInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class; popupMenuInputProcessor_Param : access PopupMenuInputProcessor_Package.PopupMenuInputProcessor'Class) is
      gameKeyEventList : constant BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCanvas : constant MyCanvas_Access := MyCanvas_Access (gameCanvas_Param);
      form : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (form_Param);
      popupMenuInputProcessor : constant PopupMenuInputProcessor_Access := PopupMenuInputProcessor_Access (popupMenuInputProcessor_Param);
   begin
        CommandFormInputProcessor_Package.Initialize (This, gameKeyEventList, playerInputId, gameCanvas, form);
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class; popupMenuInputProcessor_Param : access PopupMenuInputProcessor_Package.PopupMenuInputProcessor'Class) return PopupCommandFormInputProcessor_Access is
      This : constant PopupCommandFormInputProcessor_Access := new PopupCommandFormInputProcessor;
   begin
      PopupCommandFormInputProcessor_Package.Initialize (This.all, gameKeyEventList_Param, playerInputId, gameCanvas_Param, form_Param, popupMenuInputProcessor_Param);
      return This;
   end Create;

   --  throws Exception
   function processInput (This : in out PopupCommandFormInputProcessor; key : Integer) return Integer is
   begin
        return CommandFormInputProcessor_Package.CommandFormInputProcessor (This).processInput (key);
   end processInput;

   --  throws Exception
   procedure processMotionInput (This : in out PopupCommandFormInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        CommandFormInputProcessor_Package.CommandFormInputProcessor (This).processMotionInput (motionGestureEvent);
   end processMotionInput;

   procedure processInput (This : in out PopupCommandFormInputProcessor; key : Integer) is
      Java_Result : constant Integer := PopupCommandFormInputProcessor'Class (This).processInput (key => key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processInput;

end org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package;


