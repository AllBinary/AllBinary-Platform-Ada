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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package is

   procedure Initialize_Fields (This : in out GenericProfileActionsJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.genericProfileActions := null;
      This.genericProfileActionJPanel := null;
      This.blankGenericProfileActionJPanel := null;
      This.deleteActionJButton := null;
      This.genericProfileActionsJList := null;
      This.genericProfileActionsJPanel := null;
      This.genericProfileActionsJScrollPane := null;
      This.newActionJButton := null;
      This.newProfileActionJDialog := null;
      This.newProfileActionJLabel := null;
      This.newProfileActionJTextField := null;
      This.okNewProfileActionJButton := null;
      This.saveJButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileActionsJPanel'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
   end Initialize;

   function Create return GenericProfileActionsJPanel_Access is
      This : constant GenericProfileActionsJPanel_Access := new GenericProfileActionsJPanel;
   begin
      GenericProfileActionsJPanel_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initComponents (This : in out GenericProfileActionsJPanel) is
      newProfileActionJDialogLayout : GroupLayout_Access;
      blankGenericProfileActionJPanelLayout : GroupLayout_Access;
      genericProfileActionsJPanelLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.newProfileActionJDialog := JDialog_Package.Create;
        This.newProfileActionJLabel := JLabel_Package.Create;
        This.okNewProfileActionJButton := JButton_Package.Create;
        This.newProfileActionJTextField := JTextField_Package.Create;
        This.genericProfileActionsJPanel := JPanel_Package.Create;
        This.genericProfileActionsJScrollPane := JScrollPane_Package.Create;
        This.genericProfileActionsJList := JList_Package.Create;
        This.newActionJButton := JButton_Package.Create;
        This.deleteActionJButton := JButton_Package.Create;
        This.saveJButton := JButton_Package.Create;
        This.blankGenericProfileActionJPanel := JPanel_Package.Create;
        This.newProfileActionJDialog.setMinimumSize (Dimension_Package.Create (250, 150));
        This.newProfileActionJDialog.setResizable (False);
        This.newProfileActionJLabel.setText (To_Unbounded_String ("New Action Name"));
        This.okNewProfileActionJButton.setText (To_Unbounded_String ("Ok"));
        This.okNewProfileActionJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.okNewProfileActionJButtonActionPerformed (evt);
--     end actionPerformed;
);
        newProfileActionJDialogLayout := GroupLayout_Package.Create (This.newProfileActionJDialog.getContentPane);
        This.newProfileActionJDialog.getContentPane.setLayout (newProfileActionJDialogLayout);
        newProfileActionJDialogLayout.setHorizontalGroup (newProfileActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (newProfileActionJDialogLayout.createSequentialGroup.addGroup (newProfileActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (newProfileActionJDialogLayout.createSequentialGroup.addGap (93, 93, 93).addComponent (This.okNewProfileActionJButton)).addGroup (newProfileActionJDialogLayout.createSequentialGroup.addGap (75, 75, 75).addComponent (This.newProfileActionJLabel)).addGroup (newProfileActionJDialogLayout.createSequentialGroup.addGap (29, 29, 29).addComponent (This.newProfileActionJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 178, javax_Package.swing.GroupLayout.PREFERRED_SIZE))).addContainerGap (34, Short_Package.MAX_VALUE)));
        newProfileActionJDialogLayout.setVerticalGroup (newProfileActionJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, newProfileActionJDialogLayout.createSequentialGroup.addContainerGap.addComponent (This.newProfileActionJLabel).addGap (21, 21, 21).addComponent (This.newProfileActionJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED, 20, Short_Package.MAX_VALUE).addComponent (This.okNewProfileActionJButton).addContainerGap));
        This.genericProfileActionsJPanel.setPreferredSize (Dimension_Package.Create (10000, 10000));
        This.genericProfileActionsJList.addListSelectionListener (ListSelectionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure valueChanged (This : in out ; evt : ListSelectionEvent_Access) is
--     begin
--                  This.genericProfileActionsJListValueChanged (evt);
--     end valueChanged;
);
        This.genericProfileActionsJScrollPane.setViewportView (This.genericProfileActionsJList);
        This.newActionJButton.setText (To_Unbounded_String ("New"));
        This.newActionJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.newActionJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.deleteActionJButton.setText (To_Unbounded_String ("Delete"));
        This.deleteActionJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.deleteActionJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.saveJButton.setText (To_Unbounded_String ("Save"));
        This.saveJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.saveJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.blankGenericProfileActionJPanel.setMinimumSize (Dimension_Package.Create (500, 300));
        blankGenericProfileActionJPanelLayout := GroupLayout_Package.Create (This.blankGenericProfileActionJPanel);
        This.blankGenericProfileActionJPanel.setLayout (blankGenericProfileActionJPanelLayout);
        blankGenericProfileActionJPanelLayout.setHorizontalGroup (blankGenericProfileActionJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 500, Short_Package.MAX_VALUE));
        blankGenericProfileActionJPanelLayout.setVerticalGroup (blankGenericProfileActionJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 296, Short_Package.MAX_VALUE));
        genericProfileActionsJPanelLayout := GroupLayout_Package.Create (This.genericProfileActionsJPanel);
        This.genericProfileActionsJPanel.setLayout (genericProfileActionsJPanelLayout);
        genericProfileActionsJPanelLayout.setHorizontalGroup (genericProfileActionsJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (genericProfileActionsJPanelLayout.createSequentialGroup.addComponent (This.genericProfileActionsJScrollPane, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 95, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.blankGenericProfileActionJPanel, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)).addGroup (genericProfileActionsJPanelLayout.createSequentialGroup.addComponent (This.newActionJButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.deleteActionJButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.saveJButton).addContainerGap));
        genericProfileActionsJPanelLayout.setVerticalGroup (genericProfileActionsJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (genericProfileActionsJPanelLayout.createSequentialGroup.addGroup (genericProfileActionsJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.newActionJButton).addComponent (This.deleteActionJButton).addComponent (This.saveJButton)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (genericProfileActionsJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, False).addComponent (This.blankGenericProfileActionJPanel, 0, 296, Short_Package.MAX_VALUE).addComponent (This.genericProfileActionsJScrollPane, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 296, Short_Package.MAX_VALUE)).addContainerGap (javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)));
        layout := GroupLayout_Package.Create (This'Unchecked_Access);
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.genericProfileActionsJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 596, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addContainerGap (javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.genericProfileActionsJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 336, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
   end initComponents;

   procedure setModel (This : in out GenericProfileActionsJPanel) is
      defaultListModelHelper : DefaultListModelHelper_Access;
   begin
        defaultListModelHelper := This.getGenericProfileActions.getDefaultListModelHelper;
        if (defaultListModelHelper.getListModel.getSize) > (0) then
            This.genericProfileActionsJList.setModel (defaultListModelHelper.getListModel);
        end if;
   end setModel;

   procedure saveJButtonActionPerformed (This : in out GenericProfileActionsJPanel; evt : ActionEvent_Access) is
   begin
        begin
            This.getGenericProfileActions.save;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("saveJButtonActionPerformed"), e);
                end;
        end;
   end saveJButtonActionPerformed;

   procedure updateProfileActionUI (This : in out GenericProfileActionsJPanel; profileActionNameString : Unbounded_String) is
      genericProfileAction : GenericProfileAction_Access;
      layout : GroupLayout_Access;
   begin
        This.blankGenericProfileActionJPanel.removeAll;
        if (profileActionNameString) /= (Null_Unbounded_String) then
            genericProfileAction := This.getGenericProfileActions.getAction (profileActionNameString);
            This.setGenericProfileActionJPanel (GenericProfileActionJPanel_Package.Create);
            This.getGenericProfileActionJPanel.setGenericProfileAction (genericProfileAction);
            This.getGenericProfileActionJPanel.updateProfileActionUI;
            layout := GroupLayout_Access (This.blankGenericProfileActionJPanel.getLayout);
            layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 395, Short_Package.MAX_VALUE).addComponent (This.getGenericProfileActionJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
            layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 256, Short_Package.MAX_VALUE).addComponent (This.getGenericProfileActionJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
            This.logUtil.putF (To_Unbounded_String ("Setting Configuration Profile Actions JPanel"), This'Unchecked_Access, To_Unbounded_String ("genericProfileActionsJListValueChanged"));
        end if;
   end updateProfileActionUI;

   procedure genericProfileActionsJListValueChanged (This : in out GenericProfileActionsJPanel; evt : ListSelectionEvent_Access) is
      profileActionNameString : Unbounded_String;
   begin
        begin
            profileActionNameString := Unbounded_String (This.genericProfileActionsJList.getSelectedValue);
            This.updateProfileActionUI (profileActionNameString);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("genericProfileActionsJListValueChanged"), e);
                end;
        end;
   end genericProfileActionsJListValueChanged;

   procedure okNewProfileActionJButtonActionPerformed (This : in out GenericProfileActionsJPanel; evt : ActionEvent_Access) is
      newActionName : Unbounded_String;
   begin
        begin
            newActionName := This.newProfileActionJTextField.getText;
            This.getGenericProfileActions.add (newActionName);
            This.setModel;
            This.genericProfileActionsJList.setSelectedValue (newActionName, True);
            This.newProfileActionJDialog.setVisible (False);
            This.updateProfileActionUI (newActionName);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("okNewProfileActionJButtonActionPerformed"), e);
                end;
        end;
   end okNewProfileActionJButtonActionPerformed;

   procedure deleteActionJButtonActionPerformed (This : in out GenericProfileActionsJPanel; evt : ActionEvent_Access) is
      anyType : Java_Object_Access_Array_Access;
      nextSelectedValueString : Unbounded_String;
      index : Integer;
   begin
        begin
            anyType := This.genericProfileActionsJList.getSelectedValues;
            for index in 0 .. (anyType'Length) - 1 loop
                nextSelectedValueString := Unbounded_String (anyType (index));
                This.getGenericProfileActions.remove (nextSelectedValueString);
            end loop;
            This.selectFirstElement;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("deleteActionJButtonActionPerformed"), e);
                end;
        end;
   end deleteActionJButtonActionPerformed;

   --  throws Exception
   procedure selectFirstElement (This : in out GenericProfileActionsJPanel) is
   begin
        This.setModel;
        if (This.genericProfileActionsJList.getModel.getSize) > (0) then
            This.genericProfileActionsJList.setSelectedValue (This.genericProfileActionsJList.getModel.getElementAt (0), True);
            This.updateProfileActionUI (Unbounded_String (This.genericProfileActionsJList.getModel.getElementAt (0)));
        else
            This.blankGenericProfileActionJPanel.removeAll;
            This.blankGenericProfileActionJPanel.repaint;
        end if;
   end selectFirstElement;

   function getGenericProfileActionJPanel (This : in out GenericProfileActionsJPanel) return GenericProfileActionJPanel_Access is
   begin
        return This.genericProfileActionJPanel;
   end getGenericProfileActionJPanel;

   procedure setGenericProfileActionJPanel (This : in out GenericProfileActionsJPanel; genericProfileActionJPanel : GenericProfileActionJPanel_Access) is
   begin
        This.genericProfileActionJPanel := genericProfileActionJPanel;
   end setGenericProfileActionJPanel;

   function getGenericProfileActions (This : in out GenericProfileActionsJPanel) return GenericProfileActions_Access is
   begin
        return This.genericProfileActions;
   end getGenericProfileActions;

   procedure setGenericProfileActions (This : in out GenericProfileActionsJPanel; genericProfileActions : GenericProfileActions_Access) is
   begin
        This.genericProfileActions := genericProfileActions;
   end setGenericProfileActions;

   procedure newActionJButtonActionPerformed (This : in out GenericProfileActionsJPanel; evt : ActionEvent_Access) is
   begin
        This.newProfileActionJDialog.setVisible (True);
   end newActionJButtonActionPerformed;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package;


