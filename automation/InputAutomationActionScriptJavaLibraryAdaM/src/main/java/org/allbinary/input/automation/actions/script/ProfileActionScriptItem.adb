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


with org.allbinary.input.automation.actions.script.JMenuItem_Package; use org.allbinary.input.automation.actions.script.JMenuItem_Package;

package body org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package is

   procedure Initialize_Fields (This : in out ProfileActionScriptItem'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.jPopupMenu := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ProfileActionScriptItem'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
        DefaultMutableTreeNode_Package.Initialize (This, label);
        Initialize_Fields (This);
        ProfileActionScriptItem'Class (This).init;
        This.logUtil.putF (To_Unbounded_String ("Label: ") & label, ProfileActionScriptItem_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return ProfileActionScriptItem_Access is
      This : constant ProfileActionScriptItem_Access := new ProfileActionScriptItem;
   begin
      ProfileActionScriptItem_Package.Initialize (This.all, label, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out ProfileActionScriptItem'Class; label : Unbounded_String) is
   begin
        DefaultMutableTreeNode_Package.Initialize (This, label);
        Initialize_Fields (This);
        ProfileActionScriptItem'Class (This).init;
        This.logUtil.putF (To_Unbounded_String ("Label: ") & label, ProfileActionScriptItem_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (label : Unbounded_String) return ProfileActionScriptItem_Access is
      This : constant ProfileActionScriptItem_Access := new ProfileActionScriptItem;
   begin
      ProfileActionScriptItem_Package.Initialize (This.all, label);
      return This;
   end Create;

   procedure init (This : in out ProfileActionScriptItem) is
      jMenuItemEdit : JMenuItem_Access;
      jMenuItemDelete : JMenuItem_Access;
   begin
        ProfileActionScriptItem'Class (This).setJPopupMenu (JPopupMenu_Package.Create);
        jMenuItemEdit := JMenuItem_Package.Create (EDIT);
        jMenuItemDelete := JMenuItem_Package.Create (DELETE);
        jMenuItemEdit.addActionListener (ProfileActionScriptItem_Access'(This'Unchecked_Access));
        jMenuItemDelete.addActionListener (ProfileActionScriptItem_Access'(This'Unchecked_Access));
        ProfileActionScriptItem'Class (This).getJPopupMenu.add (jMenuItemEdit);
        ProfileActionScriptItem'Class (This).getJPopupMenu.add (jMenuItemDelete);
   end init;

   --  throws Exception
   procedure process (This : in out ProfileActionScriptItem; frame : Long_Long_Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end process;

   function getJPopupMenu (This : in out ProfileActionScriptItem) return JPopupMenu_Access is
   begin
        return This.jPopupMenu;
   end getJPopupMenu;

   procedure showDialog (This : in out ProfileActionScriptItem) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end showDialog;

   procedure actionPerformed (This : in out ProfileActionScriptItem; actionEvent_Param : access ActionEvent_Package.ActionEvent'Class) is
      actionEvent : constant ActionEvent_Access := ActionEvent_Access (actionEvent_Param);
   begin
        if (actionEvent.getActionCommand.compareTo (ProfileActionScriptItem_Package.EDIT)) = (0) then
            ProfileActionScriptItem'Class (This).showDialog;
        end if;
   end actionPerformed;

   procedure setJPopupMenu (This : in out ProfileActionScriptItem; jPopupMenu_Param : access JPopupMenu_Package.JPopupMenu'Class) is
      jPopupMenu : constant JPopupMenu_Access := JPopupMenu_Access (jPopupMenu_Param);
   begin
        This.jPopupMenu := jPopupMenu;
   end setJPopupMenu;

begin
   null;
   EDIT := To_Unbounded_String ("Edit");
   DELETE := To_Unbounded_String ("Delete");
   NEW_CONDITION := To_Unbounded_String ("New Condition");
   NEW_INPUT := To_Unbounded_String ("New Input");
   NEW_OUTPUT := To_Unbounded_String ("New Output");
   NEW_COLOR_AT := To_Unbounded_String ("Color At");
   NEW_TIME_INTERVAL := To_Unbounded_String ("Time Interval");
   NEW_ALWAYS := To_Unbounded_String ("Always On/Off");
   NEW_KEY_INPUT := To_Unbounded_String ("Key");
   NEW_MOUSE_INPUT := To_Unbounded_String ("Mouse");
   NEW_JOYSTICK_INPUT := To_Unbounded_String ("Joystick");
   NEW_IMAGE_OUTPUT := To_Unbounded_String ("Image");

end org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;


