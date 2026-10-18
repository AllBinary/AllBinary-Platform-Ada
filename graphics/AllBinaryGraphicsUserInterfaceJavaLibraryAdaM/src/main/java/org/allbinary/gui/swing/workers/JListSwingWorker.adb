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



package body org.allbinary.gui.swing.workers.JListSwingWorker_Package is

   procedure Initialize_Fields (This : in out JListSwingWorker'Class) is
   begin
      null;
      This.jList := null;
      This.listModel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out JListSwingWorker'Class; jList_Param : access JList_Package.JList'Class; listModel_Param : access ListModel_Package.ListModel'Class) is
      jList : constant JList_Access := JList_Access (jList_Param);
      listModel : constant ListModel_Access := ListModel_Access (listModel_Param);
   begin
      SwingWorker_Package.Initialize (This);
      Initialize_Fields (This);
        JListSwingWorker'Class (This).setJList (jList);
        JListSwingWorker'Class (This).setListModel (listModel);
   end Initialize;

   function Create (jList_Param : access JList_Package.JList'Class; listModel_Param : access ListModel_Package.ListModel'Class) return JListSwingWorker_Access is
      This : constant JListSwingWorker_Access := new JListSwingWorker;
   begin
      JListSwingWorker_Package.Initialize (This.all, jList_Param, listModel_Param);
      return This;
   end Create;

   function doInBackground (This : in out JListSwingWorker) return Java_Object_Access is
   begin
        return null;
   end doInBackground;

   procedure done (This : in out JListSwingWorker) is
   begin
        JListSwingWorker'Class (This).getJList.setModel (JListSwingWorker'Class (This).getListModel);
   end done;

   function getJList (This : in out JListSwingWorker) return JList_Access is
   begin
        return This.jList;
   end getJList;

   procedure setJList (This : in out JListSwingWorker; jList_Param : access JList_Package.JList'Class) is
      jList : constant JList_Access := JList_Access (jList_Param);
   begin
        This.jList := jList;
   end setJList;

   function getListModel (This : in out JListSwingWorker) return ListModel_Access is
   begin
        return This.listModel;
   end getListModel;

   procedure setListModel (This : in out JListSwingWorker; listModel_Param : access ListModel_Package.ListModel'Class) is
      listModel : constant ListModel_Access := ListModel_Access (listModel_Param);
   begin
        This.listModel := listModel;
   end setListModel;

end org.allbinary.gui.swing.workers.JListSwingWorker_Package;


