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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package is

   procedure Initialize_Fields (This : in out GenericProfileActionScriptJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.defaultMutableTreeNode := DefaultMutableTreeNode_Package.Create (To_Unbounded_String ("Root"));
      This.genericProfileActionScript := null;
      This.actionScriptJTree := null;
      This.jScrollPane1 := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileActionScriptJPanel'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, GenericProfileActionScriptJPanel_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.initComponents;
   end Initialize;

   function Create return GenericProfileActionScriptJPanel_Access is
      This : constant GenericProfileActionScriptJPanel_Access := new GenericProfileActionScriptJPanel;
   begin
      GenericProfileActionScriptJPanel_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateJTree (This : in out GenericProfileActionScriptJPanel) is
      defaultTreeModel : DefaultTreeModel_Access;
   begin
        defaultTreeModel := DefaultTreeModel_Package.Create (This.getGenericProfileActionScript);
        This.getActionScriptJTree.setModel (defaultTreeModel);
        This.repaint;
        This.logUtil.putF (To_Unbounded_String ("Updated UI"), GenericProfileActionScriptJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateJTree"));
   end updateJTree;

   function getGenericProfileActionScript (This : in out GenericProfileActionScriptJPanel) return GenericProfileActionScript_Access is
   begin
        return This.genericProfileActionScript;
   end getGenericProfileActionScript;

   procedure setGenericProfileActionScript (This : in out GenericProfileActionScriptJPanel; genericProfileActionScript_Param : access GenericProfileActionScript_Package.GenericProfileActionScript'Class) is
      genericProfileActionScript : constant GenericProfileActionScript_Access := GenericProfileActionScript_Access (genericProfileActionScript_Param);
   begin
        This.genericProfileActionScript := genericProfileActionScript;
   end setGenericProfileActionScript;

   function getActionScriptJTree (This : in out GenericProfileActionScriptJPanel) return JTree_Access is
   begin
        return This.actionScriptJTree;
   end getActionScriptJTree;

   procedure setActionScriptJTree (This : in out GenericProfileActionScriptJPanel; actionScriptJTree_Param : access JTree_Package.JTree'Class) is
      actionScriptJTree : constant JTree_Access := JTree_Access (actionScriptJTree_Param);
   begin
        This.actionScriptJTree := actionScriptJTree;
   end setActionScriptJTree;

   procedure initComponents (This : in out GenericProfileActionScriptJPanel) is
   begin
        This.jScrollPane1 := JScrollPane_Package.Create;
        This.actionScriptJTree := JTree_Package.Create;
        This.setLayout (GridLayout_Package.Create (1, 0));
        This.actionScriptJTree.setPreferredSize (Dimension_Package.Create (500, 500));
        This.actionScriptJTree.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mouseClicked (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.actionScriptJTreeMouseClicked (evt);
--     end mouseClicked;
--              
--     procedure mouseReleased (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.actionScriptJTreeMouseReleased (evt);
--     end mouseReleased;
);
        This.jScrollPane1.setViewportView (This.actionScriptJTree);
        This.add (This.jScrollPane1);
   end initComponents;

   procedure actionScriptJTreeMouseReleased (This : in out GenericProfileActionScriptJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
      button : Integer;
      treePath : TreePath_Access;
      anyType : Java_Object_Access;
      customTreeNodeInterface : CustomTreeNodeInterface_Access;
      jPopupMenu : JPopupMenu_Access;
   begin
        button := evt.getButton;
        if (button) = (MouseEvent_Package.BUTTON3) then
            treePath := This.getActionScriptJTree.getSelectionPath;
            if (treePath) /= (null) then
                anyType := treePath.getLastPathComponent;
                if (anyType.all in CustomTreeNodeInterface_Package.CustomTreeNodeInterface'Class) then
                    customTreeNodeInterface := CustomTreeNodeInterface_Access (anyType);
                    jPopupMenu := customTreeNodeInterface.getJPopupMenu;
                    jPopupMenu.show (JComponent_Access (evt.getSource), evt.getX, evt.getY);
                end if;
            end if;
        end if;
   end actionScriptJTreeMouseReleased;

   procedure actionScriptJTreeMouseClicked (This : in out GenericProfileActionScriptJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        null;
   end actionScriptJTreeMouseClicked;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package;


