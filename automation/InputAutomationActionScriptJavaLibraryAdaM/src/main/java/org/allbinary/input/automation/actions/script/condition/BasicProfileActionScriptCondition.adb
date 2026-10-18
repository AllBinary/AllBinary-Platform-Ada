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


package body org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package is

   procedure Initialize_Fields (This : in out BasicProfileActionScriptCondition'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.profileActionProcessorInterfaceVector := null;
      This.profileActionConditionInterfaceVector := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicProfileActionScriptCondition'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      nodeList : NodeList_Access;
      actionItemNode : Node_Access;
      index : Integer;
   begin
        ProfileActionScriptItem_Package.Initialize (This, label, node);
        Initialize_Fields (This);
        BasicProfileActionScriptCondition'Class (This).init;
        nodeList := node.getChildNodes;
        for index in 0 .. (nodeList.getLength) - 1 loop
            actionItemNode := nodeList.item (index);
            if (actionItemNode.getNodeType) = (Node_Package.ELEMENT_NODE) then
                if (actionItemNode.getNodeName.compareTo (GenericProfileActionScriptConditionData_Package.NAME)) = (0) then
                    BasicProfileActionScriptCondition'Class (This).addCondition (ProfileActionScriptConditionFactory_Package.getInstance (actionItemNode));
                elsif (actionItemNode.getNodeName.compareTo (GenericProfileActionScriptInputData_Package.NAME)) = (0) then
                    BasicProfileActionScriptCondition'Class (This).addProcessor (ProfileActionScriptInputFactory_Package.getInstance (actionItemNode));
                elsif (actionItemNode.getNodeName.compareTo (GenericProfileActionScriptOutputData_Package.NAME)) = (0) then
                    BasicProfileActionScriptCondition'Class (This).addProcessor (ProfileActionScriptOutputFactory_Package.getInstance (actionItemNode));
                end if;
            end if;
        end loop;
   end Initialize;

   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptCondition_Access is
      This : constant BasicProfileActionScriptCondition_Access := new BasicProfileActionScriptCondition;
   begin
      BasicProfileActionScriptCondition_Package.Initialize (This.all, label, node_Param);
      return This;
   end Create;

   --  throws Exception
   procedure addProcessorNodes (This : in out BasicProfileActionScriptCondition; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      nodeList : NodeList_Access;
      processorActionItemNode : Node_Access;
      index : Integer;
   begin
        nodeList := node.getChildNodes;
        for index in 0 .. (nodeList.getLength) - 1 loop
            processorActionItemNode := nodeList.item (index);
            if (processorActionItemNode.getNodeName.compareTo (GenericProfileActionScriptInputData_Package.NAME)) = (0) then
                BasicProfileActionScriptCondition'Class (This).addProcessor (ProfileActionScriptInputFactory_Package.getInstance (processorActionItemNode));
            elsif (processorActionItemNode.getNodeName.compareTo (GenericProfileActionScriptOutputData_Package.NAME)) = (0) then
                BasicProfileActionScriptCondition'Class (This).addProcessor (ProfileActionScriptOutputFactory_Package.getInstance (processorActionItemNode));
            end if;
        end loop;
   end addProcessorNodes;

   procedure Initialize (This : in out BasicProfileActionScriptCondition'Class; label : Unbounded_String) is
   begin
        ProfileActionScriptItem_Package.Initialize (This, label);
        Initialize_Fields (This);
        BasicProfileActionScriptCondition'Class (This).init;
   end Initialize;

   function Create (label : Unbounded_String) return BasicProfileActionScriptCondition_Access is
      This : constant BasicProfileActionScriptCondition_Access := new BasicProfileActionScriptCondition;
   begin
      BasicProfileActionScriptCondition_Package.Initialize (This.all, label);
      return This;
   end Create;

   procedure init (This : in out BasicProfileActionScriptCondition) is
   begin
        BasicProfileActionScriptCondition'Class (This).setProfileActionProcessorInterfaceVector (BasicArrayListD_Package.Create);
        BasicProfileActionScriptCondition'Class (This).setProfileActionConditionInterfaceVector (BasicArrayListD_Package.Create);
        BasicProfileActionScriptCondition'Class (This).getJPopupMenu.add (BasicProfileActionScriptCondition'Class (This).getConditionJPopupMenu);
        BasicProfileActionScriptCondition'Class (This).getJPopupMenu.add (BasicProfileActionScriptCondition'Class (This).getInputJPopupMenu);
        BasicProfileActionScriptCondition'Class (This).getJPopupMenu.add (BasicProfileActionScriptCondition'Class (This).getOutputJPopupMenu);
   end init;

   function getConditionJPopupMenu (This : in out BasicProfileActionScriptCondition) return JMenu_Access is
      jMenu : JMenu_Access;
      jMenuItemColorAt : JMenuItem_Access;
      jMenuItemAlways : JMenuItem_Access;
      jMenuItemTimeInterval : JMenuItem_Access;
   begin
        jMenu := JMenu_Package.Create (NEW_CONDITION);
        jMenuItemColorAt := JMenuItem_Package.Create (NEW_COLOR_AT);
        jMenuItemAlways := JMenuItem_Package.Create (NEW_ALWAYS);
        jMenuItemTimeInterval := JMenuItem_Package.Create (NEW_TIME_INTERVAL);
        jMenuItemColorAt.addActionListener (BasicProfileActionScriptCondition_Access'(This'Unchecked_Access));
        jMenuItemAlways.addActionListener (BasicProfileActionScriptCondition_Access'(This'Unchecked_Access));
        jMenuItemTimeInterval.addActionListener (BasicProfileActionScriptCondition_Access'(This'Unchecked_Access));
        jMenu.add (jMenuItemColorAt);
        jMenu.add (jMenuItemAlways);
        jMenu.add (jMenuItemTimeInterval);
        return jMenu;
   end getConditionJPopupMenu;

   function getInputJPopupMenu (This : in out BasicProfileActionScriptCondition) return JMenu_Access is
      jMenu : JMenu_Access;
      jMenuItemKey : JMenuItem_Access;
      jMenuItemMouse : JMenuItem_Access;
      jMenuItemJoystick : JMenuItem_Access;
   begin
        jMenu := JMenu_Package.Create (NEW_INPUT);
        jMenuItemKey := JMenuItem_Package.Create (NEW_KEY_INPUT);
        jMenuItemMouse := JMenuItem_Package.Create (NEW_MOUSE_INPUT);
        jMenuItemJoystick := JMenuItem_Package.Create (NEW_JOYSTICK_INPUT);
        jMenuItemKey.addActionListener (BasicProfileActionScriptCondition_Access'(This'Unchecked_Access));
        jMenuItemMouse.addActionListener (BasicProfileActionScriptCondition_Access'(This'Unchecked_Access));
        jMenuItemJoystick.addActionListener (BasicProfileActionScriptCondition_Access'(This'Unchecked_Access));
        jMenu.add (jMenuItemKey);
        jMenu.add (jMenuItemMouse);
        jMenu.add (jMenuItemJoystick);
        return jMenu;
   end getInputJPopupMenu;

   function getOutputJPopupMenu (This : in out BasicProfileActionScriptCondition) return JMenu_Access is
      jMenu : JMenu_Access;
      jMenuItemImage : JMenuItem_Access;
   begin
        jMenu := JMenu_Package.Create (NEW_OUTPUT);
        jMenuItemImage := JMenuItem_Package.Create (NEW_IMAGE_OUTPUT);
        jMenuItemImage.addActionListener (BasicProfileActionScriptCondition_Access'(This'Unchecked_Access));
        jMenu.add (jMenuItemImage);
        return jMenu;
   end getOutputJPopupMenu;

   procedure addProcessor (This : in out BasicProfileActionScriptCondition; profileActionProcessorInterface_Param : access ProfileActionScriptProcessorInterface_Package.ProfileActionScriptProcessorInterface'Class) is
      profileActionProcessorInterface : constant ProfileActionScriptProcessorInterface_Access := ProfileActionScriptProcessorInterface_Access (profileActionProcessorInterface_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, BasicProfileActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("addInput"));
        BasicProfileActionScriptCondition'Class (This).getProfileActionProcessorInterfaceVector.add (profileActionProcessorInterface);
        BasicProfileActionScriptCondition'Class (This).add (profileActionProcessorInterface);
   end addProcessor;

   procedure removeProcessor (This : in out BasicProfileActionScriptCondition; profileActionProcessorInterface_Param : access ProfileActionScriptProcessorInterface_Package.ProfileActionScriptProcessorInterface'Class) is
      profileActionProcessorInterface : constant ProfileActionScriptProcessorInterface_Access := ProfileActionScriptProcessorInterface_Access (profileActionProcessorInterface_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, BasicProfileActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("removeInput"));
        BasicProfileActionScriptCondition'Class (This).getProfileActionProcessorInterfaceVector.remove (profileActionProcessorInterface);
        BasicProfileActionScriptCondition'Class (This).remove (profileActionProcessorInterface);
   end removeProcessor;

   procedure removeCondition (This : in out BasicProfileActionScriptCondition; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class) is
      profileActionScriptNodeInterface : constant ProfileActionScriptNodeInterface_Access := ProfileActionScriptNodeInterface_Access (profileActionScriptNodeInterface_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, BasicProfileActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("removeCondition"));
        BasicProfileActionScriptCondition'Class (This).getProfileActionConditionInterfaceVector.remove (profileActionScriptNodeInterface);
        BasicProfileActionScriptCondition'Class (This).remove (profileActionScriptNodeInterface);
   end removeCondition;

   procedure addCondition (This : in out BasicProfileActionScriptCondition; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class) is
      profileActionScriptNodeInterface : constant ProfileActionScriptNodeInterface_Access := ProfileActionScriptNodeInterface_Access (profileActionScriptNodeInterface_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, BasicProfileActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("addCondition"));
        BasicProfileActionScriptCondition'Class (This).getProfileActionConditionInterfaceVector.add (profileActionScriptNodeInterface);
        BasicProfileActionScriptCondition'Class (This).add (profileActionScriptNodeInterface);
   end addCondition;

   --  throws Exception
   function toXmlNode (This : in out BasicProfileActionScriptCondition; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      profileActionConditionInterfaceVector : BasicArrayList_Access;
      size : Integer;
      profileActionConditionInterface : ProfileActionScriptConditionInterface_Access;
      index : Integer;
      profileActionProcessorInterfaceVector : BasicArrayList_Access;
      size2 : Integer;
      profileActionProcessorInterface : ProfileActionScriptProcessorInterface_Access;
   begin
        node := document.createElement (GenericProfileActionScriptConditionData_Package.NAME);
        profileActionConditionInterfaceVector := BasicProfileActionScriptCondition'Class (This).getProfileActionConditionInterfaceVector;
        size := profileActionConditionInterfaceVector.size;
        for index in 0 .. (size) - 1 loop
            profileActionConditionInterface := ProfileActionScriptConditionInterface_Access (profileActionConditionInterfaceVector.get (index));
            node.appendChild (profileActionConditionInterface.toXmlNode (document));
        end loop;
        profileActionProcessorInterfaceVector := BasicProfileActionScriptCondition'Class (This).getProfileActionProcessorInterfaceVector;
        size2 := profileActionProcessorInterfaceVector.size;
        for index in 0 .. (size2) - 1 loop
            profileActionProcessorInterface := ProfileActionScriptProcessorInterface_Access (profileActionProcessorInterfaceVector.get (index));
            node.appendChild (profileActionProcessorInterface.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   function getProfileActionConditionInterfaceVector (This : in out BasicProfileActionScriptCondition) return BasicArrayList_Access is
   begin
        return This.profileActionConditionInterfaceVector;
   end getProfileActionConditionInterfaceVector;

   procedure setProfileActionConditionInterfaceVector (This : in out BasicProfileActionScriptCondition; profileActionConditionInterfaceVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      profileActionConditionInterfaceVector : constant BasicArrayList_Access := BasicArrayList_Access (profileActionConditionInterfaceVector_Param);
   begin
        This.profileActionConditionInterfaceVector := profileActionConditionInterfaceVector;
   end setProfileActionConditionInterfaceVector;

   procedure actionPerformed (This : in out BasicProfileActionScriptCondition; actionEvent_Param : access ActionEvent_Package.ActionEvent'Class) is
      actionEvent : constant ActionEvent_Access := ActionEvent_Access (actionEvent_Param);
      profileActionScriptNodeInterface : ProfileActionScriptNodeInterface_Access;
   begin
        begin
            ProfileActionScriptItem (This).actionPerformed (actionEvent);
            if (actionEvent.getActionCommand.compareTo (DELETE)) = (0) then
                if (BasicProfileActionScriptCondition'Class (This).getParent.all in ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class) then
                    profileActionScriptNodeInterface := ProfileActionScriptNodeInterface_Access (BasicProfileActionScriptCondition'Class (This).getParent);
                    profileActionScriptNodeInterface.removeCondition (BasicProfileActionScriptCondition_Access'(This'Unchecked_Access));
                    JTreeInterfaceFactory_Package.getInstance.getJTreeInterface.updateJTree;
                end if;
            elsif (actionEvent.getActionCommand.compareTo (NEW_COLOR_AT)) = (0) then
                BasicProfileActionScriptCondition'Class (This).addCondition (ColorAtActionScriptCondition_Package.Create);
                BasicProfileActionScriptCondition'Class (This).updateTree;
            elsif (actionEvent.getActionCommand.compareTo (NEW_ALWAYS)) = (0) then
                BasicProfileActionScriptCondition'Class (This).addCondition (AlwaysActionScriptCondition_Package.Create);
                BasicProfileActionScriptCondition'Class (This).updateTree;
            elsif (actionEvent.getActionCommand.compareTo (NEW_TIME_INTERVAL)) = (0) then
                BasicProfileActionScriptCondition'Class (This).addCondition (TimeIntervalActionScriptCondition_Package.Create);
                BasicProfileActionScriptCondition'Class (This).updateTree;
            elsif (actionEvent.getActionCommand.compareTo (NEW_KEY_INPUT)) = (0) then
                BasicProfileActionScriptCondition'Class (This).addProcessor (KeyboardActionScriptInput_Package.Create);
                BasicProfileActionScriptCondition'Class (This).updateTree;
            elsif (actionEvent.getActionCommand.compareTo (NEW_MOUSE_INPUT)) = (0) then
                BasicProfileActionScriptCondition'Class (This).addProcessor (MouseActionScriptInput_Package.Create);
                BasicProfileActionScriptCondition'Class (This).updateTree;
            elsif (actionEvent.getActionCommand.compareTo (NEW_IMAGE_OUTPUT)) = (0) then
                BasicProfileActionScriptCondition'Class (This).addProcessor (ImageActionScriptOutput_Package.Create);
                BasicProfileActionScriptCondition'Class (This).updateTree;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Error"), BasicProfileActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("actionPerformed"), e);
                end;
        end;
   end actionPerformed;

   function getProfileActionProcessorInterfaceVector (This : in out BasicProfileActionScriptCondition) return BasicArrayList_Access is
   begin
        return This.profileActionProcessorInterfaceVector;
   end getProfileActionProcessorInterfaceVector;

   procedure setProfileActionProcessorInterfaceVector (This : in out BasicProfileActionScriptCondition; profileActionProcessorInterfaceVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      profileActionProcessorInterfaceVector : constant BasicArrayList_Access := BasicArrayList_Access (profileActionProcessorInterfaceVector_Param);
   begin
        This.profileActionProcessorInterfaceVector := profileActionProcessorInterfaceVector;
   end setProfileActionProcessorInterfaceVector;

   procedure updateTree (This : in out BasicProfileActionScriptCondition) is
      treePath : TreePath_Access;
   begin
        JTreeInterfaceFactory_Package.getInstance.getJTreeInterface.updateJTree;
        treePath := TreePath_Package.Create (BasicProfileActionScriptCondition_Access'(This'Unchecked_Access));
        JTreeInterfaceFactory_Package.getInstance.getJTreeInterface.getActionScriptJTree.expandPath (treePath);
   end updateTree;

   --  throws Exception
   function shouldProcess (This : in out BasicProfileActionScriptCondition; frame : Long_Long_Integer) return Boolean is
      profileActionConditionInterfaceVector : BasicArrayList_Access;
      size : Integer;
      profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access;
      index : Integer;
   begin
        profileActionConditionInterfaceVector := BasicProfileActionScriptCondition'Class (This).getProfileActionConditionInterfaceVector;
        size := profileActionConditionInterfaceVector.size;
        for index in 0 .. (size) - 1 loop
            profileActionScriptConditionInterface := ProfileActionScriptConditionInterface_Access (profileActionConditionInterfaceVector.get (index));
            if not (profileActionScriptConditionInterface.shouldProcess (frame)) then
                return False;
            end if;
        end loop;
        return True;
   end shouldProcess;

   --  throws Exception
   procedure process (This : in out BasicProfileActionScriptCondition; frame : Long_Long_Integer) is
      profileActionProcessorInterfaceVector : BasicArrayList_Access;
      size : Integer;
      profileActionScriptProcessorInterface : ProfileActionScriptProcessorInterface_Access;
      index : Integer;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Start - Processing ")).appendint (BasicProfileActionScriptCondition'Class (This).getProfileActionProcessorInterfaceVector.size).append (To_Unbounded_String (" inputs")).toString, BasicProfileActionScriptCondition_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        profileActionProcessorInterfaceVector := BasicProfileActionScriptCondition'Class (This).getProfileActionProcessorInterfaceVector;
        size := profileActionProcessorInterfaceVector.size;
        for index in 0 .. (size) - 1 loop
            profileActionScriptProcessorInterface := ProfileActionScriptProcessorInterface_Access (profileActionProcessorInterfaceVector.get (index));
            profileActionScriptProcessorInterface.process (frame);
        end loop;
   end process;

   procedure toXmlNode (This : in out BasicProfileActionScriptCondition; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicProfileActionScriptCondition'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure shouldProcess (This : in out BasicProfileActionScriptCondition; frame : Long_Long_Integer) is
      Java_Result : constant Boolean := BasicProfileActionScriptCondition'Class (This).shouldProcess (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldProcess;

end org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;


