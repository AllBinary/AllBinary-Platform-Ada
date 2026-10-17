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


package body org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package is

   procedure Initialize_Fields (This : in out PopupCommandFormInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PopupCommandFormInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas'Class; form_Param : access ScrollSelectionForm'Class; popupMenuInputProcessor_Param : access PopupMenuInputProcessor'Class) is
      gameKeyEventList : BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCanvas : MyCanvas_Access := MyCanvas_Access (gameCanvas_Param);
      form : ScrollSelectionForm_Access := ScrollSelectionForm_Access (form_Param);
      popupMenuInputProcessor : PopupMenuInputProcessor_Access := PopupMenuInputProcessor_Access (popupMenuInputProcessor_Param);
   begin
        CommandFormInputProcessor_Package.Initialize (This, gameKeyEventList, playerInputId, gameCanvas, form);
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas'Class; form_Param : access ScrollSelectionForm'Class; popupMenuInputProcessor_Param : access PopupMenuInputProcessor'Class) return PopupCommandFormInputProcessor_Access is
      This : constant PopupCommandFormInputProcessor_Access := new PopupCommandFormInputProcessor;
   begin
      PopupCommandFormInputProcessor_Package.Initialize (This.all, gameKeyEventList_Param, playerInputId, gameCanvas_Param, form_Param, popupMenuInputProcessor_Param);
      return This;
   end Create;

   --  throws Exception
   function processInput (This : in out PopupCommandFormInputProcessor; key : Integer) return Integer is
   begin
        return CommandFormInputProcessor (This).processInput (key);
   end processInput;

   --  throws Exception
   procedure processMotionInput (This : in out PopupCommandFormInputProcessor; motionGestureEvent_Param : access MotionGestureEvent'Class) is
      motionGestureEvent : MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        CommandFormInputProcessor (This).processMotionInput (motionGestureEvent);
   end processMotionInput;

   procedure processInput (This : in out PopupCommandFormInputProcessor; key : Integer) is
      Java_Result : constant Integer := PopupCommandFormInputProcessor'Class (This).processInput (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processInput;

end org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor_Package;


