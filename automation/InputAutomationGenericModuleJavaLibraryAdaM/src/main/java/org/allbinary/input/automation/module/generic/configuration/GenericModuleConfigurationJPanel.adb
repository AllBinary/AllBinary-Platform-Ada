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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package;

package body org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package GenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
   package GenericProfileActions_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
   package GenericProfileActionsJPanel_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package;
   procedure Initialize_Fields (This : in out GenericModuleConfigurationJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.genericProfiles := null;
      This.selectedGenericProfile := null;
      This.blankGenericProfileActionsJPanel := null;
      This.buttonGroup2 := null;
      This.captureComparisonJCheckBox := null;
      This.captureMotionAnalysisJCheckBox := null;
      This.deleteProfileJButton := null;
      This.genericJTabbedPane := null;
      This.genericProfilesJList := null;
      This.genericProfilesJPanel := null;
      This.genericProfilesJScrollPane := null;
      This.jLabel1 := null;
      This.jLabel2 := null;
      This.jLabel3 := null;
      This.jPanel1 := null;
      This.newProfileJButton := null;
      This.newProfileJDialog := null;
      This.newProfileNameJLabel := null;
      This.newProfileNameJTextField := null;
      This.okNewProfileJButton := null;
      This.savedCaptureJRadioButton := null;
      This.screenCaptureJRadioButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericModuleConfigurationJPanel'Class) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        GenericModuleConfigurationJPanel'Class (This).initComponents;
        GenericModuleConfigurationJPanel'Class (This).setGenericProfiles (GenericProfiles_Package.Create (GenericProfiles_Package.DEFAULT_FILE));
        GenericModuleConfigurationJPanel'Class (This).selectFirstElement;
   end Initialize;

   function Create return GenericModuleConfigurationJPanel_Access is
      This : constant GenericModuleConfigurationJPanel_Access := new GenericModuleConfigurationJPanel;
   begin
      GenericModuleConfigurationJPanel_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initComponents (This : in out GenericModuleConfigurationJPanel) is
      newProfileJDialogLayout : GroupLayout_Access;
      jPanel1Layout : GroupLayout_Access;
      genericProfilesJPanelLayout : GroupLayout_Access;
      blankGenericProfileActionsJPanelLayout : GroupLayout_Access;
   begin
        This.newProfileJDialog := JDialog_Package.Create;
        This.okNewProfileJButton := JButton_Package.Create;
        This.newProfileNameJLabel := JLabel_Package.Create;
        This.newProfileNameJTextField := JTextField_Package.Create;
        This.buttonGroup2 := ButtonGroup_Package.Create;
        This.genericJTabbedPane := JTabbedPane_Package.Create;
        This.genericProfilesJPanel := JPanel_Package.Create;
        This.genericProfilesJScrollPane := JScrollPane_Package.Create;
        This.genericProfilesJList := JList_Package.Create;
        This.newProfileJButton := JButton_Package.Create;
        This.deleteProfileJButton := JButton_Package.Create;
        This.jPanel1 := JPanel_Package.Create;
        This.screenCaptureJRadioButton := JRadioButton_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        This.savedCaptureJRadioButton := JRadioButton_Package.Create;
        This.captureMotionAnalysisJCheckBox := JCheckBox_Package.Create;
        This.captureComparisonJCheckBox := JCheckBox_Package.Create;
        This.jLabel3 := JLabel_Package.Create;
        This.blankGenericProfileActionsJPanel := JPanel_Package.Create;
        This.newProfileJDialog.setMinimumSize (Dimension_Package.Create (250, 150));
        This.newProfileJDialog.setResizable (False);
        This.okNewProfileJButton.setText (To_Unbounded_String ("Ok"));
        This.okNewProfileJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericModuleConfigurationJPanel'Class (This).okNewProfileJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.newProfileNameJLabel.setText (To_Unbounded_String ("New Profile Name"));
        newProfileJDialogLayout := GroupLayout_Package.Create (This.newProfileJDialog.getContentPane);
        This.newProfileJDialog.getContentPane.setLayout (newProfileJDialogLayout);
        newProfileJDialogLayout.setHorizontalGroup (newProfileJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (newProfileJDialogLayout.createSequentialGroup.addGroup (newProfileJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (newProfileJDialogLayout.createSequentialGroup.addGap (80, 80, 80).addComponent (This.newProfileNameJLabel)).addGroup (newProfileJDialogLayout.createSequentialGroup.addGap (30, 30, 30).addComponent (This.newProfileNameJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 180, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addGroup (newProfileJDialogLayout.createSequentialGroup.addGap (100, 100, 100).addComponent (This.okNewProfileJButton))).addContainerGap (35, Short_Integer'Last)));
        newProfileJDialogLayout.setVerticalGroup (newProfileJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (newProfileJDialogLayout.createSequentialGroup.addGap (10, 10, 10).addComponent (This.newProfileNameJLabel).addGap (16, 16, 16).addComponent (This.newProfileNameJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addGap (20, 20, 20).addComponent (This.okNewProfileJButton)));
        GenericModuleConfigurationJPanel'Class (This).setLayout (GridLayout_Package.Create (1, 0));
        GenericModuleConfigurationJPanel'Class (This).setMinimumSize (Dimension_Package.Create (400, 300));
        GenericModuleConfigurationJPanel'Class (This).setPreferredSize (Dimension_Package.Create (700, 700));
        This.genericJTabbedPane.setToolTipText (This.stringUtil.EMPTY_STRING);
        This.genericJTabbedPane.setMinimumSize (Dimension_Package.Create (800, 600));
        This.genericProfilesJPanel.setMinimumSize (Dimension_Package.Create (400, 300));
        This.genericProfilesJPanel.setPreferredSize (Dimension_Package.Create (0, 0));
        This.genericProfilesJList.addListSelectionListener (ListSelectionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure valueChanged (This : in out ; evt_Param : access ListSelectionEvent_Package.ListSelectionEvent'Class) is
--        evt : constant ListSelectionEvent_Access := ListSelectionEvent_Access (evt_Param);
--     begin
--                  GenericModuleConfigurationJPanel'Class (This).genericProfilesJListValueChanged (evt);
--     end valueChanged;
);
        This.genericProfilesJScrollPane.setViewportView (This.genericProfilesJList);
        This.newProfileJButton.setText (To_Unbounded_String ("New"));
        This.newProfileJButton.setToolTipText (To_Unbounded_String ("Creates a new profile"));
        This.newProfileJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericModuleConfigurationJPanel'Class (This).newProfileJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.deleteProfileJButton.setText (To_Unbounded_String ("Delete"));
        This.deleteProfileJButton.setToolTipText (To_Unbounded_String ("Deletes the selected profile"));
        This.deleteProfileJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericModuleConfigurationJPanel'Class (This).deleteProfileJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jPanel1.setPreferredSize (Dimension_Package.Create (1000, 100));
        This.screenCaptureJRadioButton.setText (To_Unbounded_String ("Screen Captures"));
        This.screenCaptureJRadioButton.setToolTipText (To_Unbounded_String ("Records the screen into memory for logical processing"));
        This.screenCaptureJRadioButton.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.screenCaptureJRadioButton.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.screenCaptureJRadioButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericModuleConfigurationJPanel'Class (This).screenCaptureJRadioButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel1.setText (To_Unbounded_String ("Profile Options"));
        This.jLabel2.setText (To_Unbounded_String ("Process From:"));
        This.savedCaptureJRadioButton.setText (To_Unbounded_String ("Saved Images"));
        This.savedCaptureJRadioButton.setToolTipText (To_Unbounded_String ("Loads images from files for logical processing.  Usually for debugging your profile actions"));
        This.savedCaptureJRadioButton.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.savedCaptureJRadioButton.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.savedCaptureJRadioButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericModuleConfigurationJPanel'Class (This).savedCaptureJRadioButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.captureMotionAnalysisJCheckBox.setText (To_Unbounded_String ("Motion Analysis"));
        This.captureMotionAnalysisJCheckBox.setToolTipText (To_Unbounded_String ("Uses image comparison and contraints to locate moving objects"));
        This.captureMotionAnalysisJCheckBox.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.captureMotionAnalysisJCheckBox.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.captureMotionAnalysisJCheckBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericModuleConfigurationJPanel'Class (This).captureMotionAnalysisJCheckBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.captureComparisonJCheckBox.setText (To_Unbounded_String ("Comparison"));
        This.captureComparisonJCheckBox.setToolTipText (To_Unbounded_String ("Compares the last two input images for multi image logic"));
        This.captureComparisonJCheckBox.setBorder (javax_Package.swing.BorderFactory.createEmptyBorder (0, 0, 0, 0));
        This.captureComparisonJCheckBox.setMargin (Insets_Package.Create (0, 0, 0, 0));
        This.captureComparisonJCheckBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  GenericModuleConfigurationJPanel'Class (This).captureComparisonJCheckBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel3.setText (To_Unbounded_String ("Image Processing:"));
        This.jLabel3.setToolTipText (To_Unbounded_String ("Turns on/off various extended image processing"));
        jPanel1Layout := GroupLayout_Package.Create (This.jPanel1);
        This.jPanel1.setLayout (jPanel1Layout);
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (jPanel1Layout.createSequentialGroup.addGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.screenCaptureJRadioButton).addComponent (This.jLabel1).addComponent (This.jLabel2).addComponent (This.savedCaptureJRadioButton).addComponent (This.captureMotionAnalysisJCheckBox).addComponent (This.captureComparisonJCheckBox).addComponent (This.jLabel3)).addContainerGap (22, Short_Integer'Last)));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (jPanel1Layout.createSequentialGroup.addComponent (This.jLabel1).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel2).addGap (7, 7, 7).addComponent (This.screenCaptureJRadioButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.savedCaptureJRadioButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel3).addGap (7, 7, 7).addComponent (This.captureComparisonJCheckBox).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.captureMotionAnalysisJCheckBox).addContainerGap (106, Short_Integer'Last)));
        genericProfilesJPanelLayout := GroupLayout_Package.Create (This.genericProfilesJPanel);
        This.genericProfilesJPanel.setLayout (genericProfilesJPanelLayout);
        genericProfilesJPanelLayout.setHorizontalGroup (genericProfilesJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (genericProfilesJPanelLayout.createSequentialGroup.addGroup (genericProfilesJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (genericProfilesJPanelLayout.createSequentialGroup.addComponent (This.newProfileJButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.deleteProfileJButton)).addGroup (genericProfilesJPanelLayout.createSequentialGroup.addComponent (This.genericProfilesJScrollPane, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 119, Short_Integer'Last))).addContainerGap));
        genericProfilesJPanelLayout.setVerticalGroup (genericProfilesJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (genericProfilesJPanelLayout.createSequentialGroup.addGroup (genericProfilesJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.newProfileJButton).addComponent (This.deleteProfileJButton)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (genericProfilesJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 246, Short_Integer'Last).addComponent (This.genericProfilesJScrollPane, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 246, Short_Integer'Last))));
        This.genericJTabbedPane.addTab (To_Unbounded_String ("Profiles"), This.genericProfilesJPanel);
        blankGenericProfileActionsJPanelLayout := GroupLayout_Package.Create (This.blankGenericProfileActionsJPanel);
        This.blankGenericProfileActionsJPanel.setLayout (blankGenericProfileActionsJPanelLayout);
        blankGenericProfileActionsJPanelLayout.setHorizontalGroup (blankGenericProfileActionsJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 395, Short_Integer'Last));
        blankGenericProfileActionsJPanelLayout.setVerticalGroup (blankGenericProfileActionsJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 275, Short_Integer'Last));
        This.genericJTabbedPane.addTab (To_Unbounded_String ("Actions"), This.blankGenericProfileActionsJPanel);
        GenericModuleConfigurationJPanel'Class (This).add (This.genericJTabbedPane);
   end initComponents;

   procedure savedCaptureJRadioButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            if This.savedCaptureJRadioButton.isSelected then
                This.logUtil.putF (To_Unbounded_String ("Selected"), GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("savedCaptureJRadioButtonActionPerformed"));
                GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.add (GenericProfileDataWorkerType_Package.SAVED_CAPTURE);
                GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.remove (GenericProfileDataWorkerType_Package.SCREEN_CAPTURE);
                This.screenCaptureJRadioButton.setSelected (False);
                GenericModuleConfigurationJPanel'Class (This).getGenericProfiles.save;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("savedCaptureJRadioButtonActionPerformed"), e);
                end;
        end;
   end savedCaptureJRadioButtonActionPerformed;

   procedure screenCaptureJRadioButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            if This.screenCaptureJRadioButton.isSelected then
                This.logUtil.putF (To_Unbounded_String ("Selected"), GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("screenCaptureJRadioButtonActionPerformed"));
                GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.add (GenericProfileDataWorkerType_Package.SCREEN_CAPTURE);
                GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.remove (GenericProfileDataWorkerType_Package.SAVED_CAPTURE);
                This.savedCaptureJRadioButton.setSelected (False);
                GenericModuleConfigurationJPanel'Class (This).getGenericProfiles.save;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("screenCaptureJRadioButtonActionPerformed"), e);
                end;
        end;
   end screenCaptureJRadioButtonActionPerformed;

   procedure captureMotionAnalysisJCheckBoxActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            if This.captureMotionAnalysisJCheckBox.isSelected then
                GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.add (GenericProfileDataWorkerType_Package.MOTION);
            else
                GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.remove (GenericProfileDataWorkerType_Package.MOTION);
            end if;
            GenericModuleConfigurationJPanel'Class (This).getGenericProfiles.save;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("captureComparisonJCheckBoxActionPerformed"), e);
                end;
        end;
   end captureMotionAnalysisJCheckBoxActionPerformed;

   procedure captureComparisonJCheckBoxActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            if This.captureComparisonJCheckBox.isSelected then
                GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.add (GenericProfileDataWorkerType_Package.COMPARISON);
            else
                GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.remove (GenericProfileDataWorkerType_Package.COMPARISON);
            end if;
            GenericModuleConfigurationJPanel'Class (This).getGenericProfiles.save;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("captureComparisonJCheckBoxActionPerformed"), e);
                end;
        end;
   end captureComparisonJCheckBoxActionPerformed;

   --  throws Exception
   procedure updateProfileUI (This : in out GenericModuleConfigurationJPanel; profileNameString : Unbounded_String) is
      genericProfileActionsJPanel : GenericProfileActionsJPanel_Access;
      layout : GroupLayout_Access;
   begin
        GenericModuleConfigurationJPanel'Class (This).getBlankGenericProfileActionsJPanel.removeAll;
        if (profileNameString) /= (Null_Unbounded_String) then
            genericProfileActionsJPanel := GenericProfileActionsJPanel_Package.Create;
            GenericModuleConfigurationJPanel'Class (This).setSelectedGenericProfile (GenericModuleConfigurationJPanel'Class (This).getGenericProfiles.get (profileNameString));
            GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.setGenericProfileActions (GenericProfileActions_Package.Create (genericProfileActionsJPanel, profileNameString));
            genericProfileActionsJPanel.setGenericProfileActions (GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.getGenericProfileActions);
            genericProfileActionsJPanel.selectFirstElement;
            layout := GroupLayout_Access (GenericModuleConfigurationJPanel'Class (This).getBlankGenericProfileActionsJPanel.getLayout);
            layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 395, Short_Integer'Last).addComponent (genericProfileActionsJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
            layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 256, Short_Integer'Last).addComponent (genericProfileActionsJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
            GenericModuleConfigurationJPanel'Class (This).updateProfileOptions;
            This.logUtil.putF (To_Unbounded_String ("Setting Configuration Profile JPanel"), GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateProfileUI"));
        else
            This.logUtil.putF (To_Unbounded_String ("Null Configuration Profile"), GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateProfileUI"));
        end if;
   end updateProfileUI;

   --  throws Exception
   procedure selectFirstElement (This : in out GenericModuleConfigurationJPanel) is
   begin
        This.genericProfilesJList.setModel (GenericModuleConfigurationJPanel'Class (This).getGenericProfiles.getDefaultListModelHelper.getListModel);
        if (This.genericProfilesJList.getModel.getSize) > (0) then
            This.genericProfilesJList.setSelectedValue (This.genericProfilesJList.getModel.getElementAt (0), True);
            GenericModuleConfigurationJPanel'Class (This).updateProfileUI (Java_Unbox (This.genericProfilesJList.getModel.getElementAt (0)));
        end if;
   end selectFirstElement;

   --  throws Exception
   procedure updateProfileOptions (This : in out GenericModuleConfigurationJPanel) is
      genericProfile : GenericProfile_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      genericProfileDataWorkerType : GenericProfileDataWorkerType_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateProfileOptions"));
        genericProfile := GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile;
        vector := genericProfile.getGenericProfileDataWorkerTypeVector;
        This.screenCaptureJRadioButton.setSelected (False);
        This.savedCaptureJRadioButton.setSelected (False);
        This.captureComparisonJCheckBox.setSelected (False);
        This.captureMotionAnalysisJCheckBox.setSelected (False);
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            genericProfileDataWorkerType := GenericProfileDataWorkerType_Access (vector.get (index));
            This.logUtil.putF (genericProfile.getName & To_Unbounded_String (" has GenericProfileDataWorkerType: ") & genericProfileDataWorkerType.toString, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateProfileOptions"));
            if (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.SCREEN_CAPTURE) then
                This.logUtil.putF (To_Unbounded_String ("Screen Capture Selected"), GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateProfileOptions"));
                This.screenCaptureJRadioButton.setSelected (True);
            elsif (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.SAVED_CAPTURE) then
                This.logUtil.putF (To_Unbounded_String ("Saved Capture Selected"), GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateProfileOptions"));
                This.savedCaptureJRadioButton.setSelected (True);
            elsif (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.COMPARISON) then
                This.logUtil.putF (To_Unbounded_String ("Checking Comparison Box"), GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateProfileOptions"));
                This.captureComparisonJCheckBox.setSelected (True);
            elsif (genericProfileDataWorkerType) = (GenericProfileDataWorkerType_Package.MOTION) then
                This.logUtil.putF (To_Unbounded_String ("Checking Motion Box"), GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateProfileOptions"));
                This.captureMotionAnalysisJCheckBox.setSelected (True);
            end if;
        end loop;
        if (not (This.screenCaptureJRadioButton.isSelected)) and then (not (This.savedCaptureJRadioButton.isSelected)) then
            This.screenCaptureJRadioButton.setSelected (True);
            GenericModuleConfigurationJPanel'Class (This).getSelectedGenericProfile.add (GenericProfileDataWorkerType_Package.SCREEN_CAPTURE);
        end if;
        This.logUtil.putF (This.commonStrings.END_Id, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("updateProfileOptions"));
   end updateProfileOptions;

   function getBlankGenericProfileActionsJPanel (This : in out GenericModuleConfigurationJPanel) return JPanel_Access is
   begin
        return This.blankGenericProfileActionsJPanel;
   end getBlankGenericProfileActionsJPanel;

   procedure setBlankGenericProfileActionsJPanel (This : in out GenericModuleConfigurationJPanel; blankGenericProfileActionsJPanel_Param : access JPanel_Package.JPanel'Class) is
      blankGenericProfileActionsJPanel : constant JPanel_Access := JPanel_Access (blankGenericProfileActionsJPanel_Param);
   begin
        This.blankGenericProfileActionsJPanel := blankGenericProfileActionsJPanel;
   end setBlankGenericProfileActionsJPanel;

   function getGenericProfiles (This : in out GenericModuleConfigurationJPanel) return GenericProfiles_Access is
   begin
        return This.genericProfiles;
   end getGenericProfiles;

   procedure setGenericProfiles (This : in out GenericModuleConfigurationJPanel; genericProfiles_Param : access GenericProfiles_Package.GenericProfiles'Class) is
      genericProfiles : constant GenericProfiles_Access := GenericProfiles_Access (genericProfiles_Param);
   begin
        This.genericProfiles := genericProfiles;
   end setGenericProfiles;

   function getSelectedGenericProfile (This : in out GenericModuleConfigurationJPanel) return GenericProfile_Access is
   begin
        return This.selectedGenericProfile;
   end getSelectedGenericProfile;

   procedure setSelectedGenericProfile (This : in out GenericModuleConfigurationJPanel; selectedGenericProfile_Param : access GenericProfile_Package.GenericProfile'Class) is
      selectedGenericProfile : constant GenericProfile_Access := GenericProfile_Access (selectedGenericProfile_Param);
   begin
        This.selectedGenericProfile := selectedGenericProfile;
   end setSelectedGenericProfile;

   procedure genericProfilesJListValueChanged (This : in out GenericModuleConfigurationJPanel; evt_Param : access ListSelectionEvent_Package.ListSelectionEvent'Class) is
      evt : constant ListSelectionEvent_Access := ListSelectionEvent_Access (evt_Param);
      profileNameString : Unbounded_String;
   begin
        begin
            profileNameString := Java_Unbox (This.genericProfilesJList.getSelectedValue);
            GenericModuleConfigurationJPanel'Class (This).updateProfileUI (profileNameString);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("genericProfilesJListValueChanged"), e);
                end;
        end;
   end genericProfilesJListValueChanged;

   procedure deleteProfileJButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      anyType : Java_Object_Access_Array_Access;
      nextSelectedValueString : Unbounded_String;
      index : Integer;
   begin
        begin
            anyType := This.genericProfilesJList.getSelectedValues;
            for index in 0 .. (anyType'Length) - 1 loop
                nextSelectedValueString := Java_Unbox (anyType (index));
                GenericModuleConfigurationJPanel'Class (This).getGenericProfiles.remove (nextSelectedValueString);
            end loop;
            GenericModuleConfigurationJPanel'Class (This).selectFirstElement;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("deleteProfileJButtonActionPerformed"), e);
                end;
        end;
   end deleteProfileJButtonActionPerformed;

   procedure okNewProfileJButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      newProfileName : Unbounded_String;
   begin
        begin
            newProfileName := This.newProfileNameJTextField.getText;
            GenericModuleConfigurationJPanel'Class (This).getGenericProfiles.add (newProfileName);
            This.genericProfilesJList.setModel (GenericModuleConfigurationJPanel'Class (This).getGenericProfiles.getDefaultListModelHelper.getListModel);
            This.genericProfilesJList.setSelectedValue (newProfileName, True);
            This.newProfileJDialog.setVisible (False);
            GenericModuleConfigurationJPanel'Class (This).updateProfileUI (newProfileName);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GenericModuleConfigurationJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("okNewProfileJButtonActionPerformed"), e);
                end;
        end;
   end okNewProfileJButtonActionPerformed;

   procedure newProfileJButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.newProfileJDialog.setVisible (True);
   end newProfileJButtonActionPerformed;

end org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package;


