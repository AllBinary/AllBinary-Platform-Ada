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


   procedure Initialize (This : in out JListSwingWorker'Class; jList : JList_Access; listModel : ListModel_Access) is
   begin
      SwingWorker_Package.Initialize (This);
      Initialize_Fields (This);
        This.setJList (jList);
        This.setListModel (listModel);
   end Initialize;

   function Create (jList : JList_Access; listModel : ListModel_Access) return JListSwingWorker_Access is
      This : constant JListSwingWorker_Access := new JListSwingWorker;
   begin
      Initialize (This.all, jList, listModel);
      return This;
   end Create;

   function doInBackground (This : in out JListSwingWorker) return Java_Object_Access is
   begin
        return null;
   end doInBackground;

   procedure done (This : in out JListSwingWorker) is
   begin
        This.getJList.setModel (This.getListModel);
   end done;

   function getJList (This : in out JListSwingWorker) return JList_Access is
   begin
        return This.jList;
   end getJList;

   procedure setJList (This : in out JListSwingWorker; jList : JList_Access) is
   begin
        This.jList := jList;
   end setJList;

   function getListModel (This : in out JListSwingWorker) return ListModel_Access is
   begin
        return This.listModel;
   end getListModel;

   procedure setListModel (This : in out JListSwingWorker; listModel : ListModel_Access) is
   begin
        This.listModel := listModel;
   end setListModel;

   procedure doInBackground (This : in out JListSwingWorker) is
      Java_Result : constant Java_Object_Access := JListSwingWorker'Class (This).doInBackground;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doInBackground;

   procedure getJList (This : in out JListSwingWorker) is
      Java_Result : constant JList_Access := JListSwingWorker'Class (This).getJList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getJList;

   procedure getListModel (This : in out JListSwingWorker) is
      Java_Result : constant ListModel_Access := JListSwingWorker'Class (This).getListModel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getListModel;

end org.allbinary.gui.swing.workers.JListSwingWorker_Package;


