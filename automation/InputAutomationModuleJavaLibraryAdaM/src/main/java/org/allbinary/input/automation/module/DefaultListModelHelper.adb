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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package body org.allbinary.input.automation.module.DefaultListModelHelper_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out DefaultListModelHelper'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out DefaultListModelHelper'Class) is
   begin
      Initialize_Fields (This);
        This.vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.defaultListModel := DefaultListModel_Package.Create;
   end Initialize;

   function Create return DefaultListModelHelper_Access is
      This : constant DefaultListModelHelper_Access := new DefaultListModelHelper;
   begin
      DefaultListModelHelper_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initDefaultModelList (This : in out DefaultListModelHelper) is
      size : Integer;
      moduleName : Unbounded_String;
      index : Integer;
   begin
        This.defaultListModel := DefaultListModel_Package.Create;
        size := This.vector.size;
        for index in 0 .. (size) - 1 loop
            moduleName := Java_Unbox (This.vector.get (index));
            This.defaultListModel.addElement (moduleName);
        end loop;
   end initDefaultModelList;

   function getListModel (This : in out DefaultListModelHelper) return ListModel_Access is
   begin
        return ListModel_Access (This.defaultListModel);
   end getListModel;

   procedure add (This : in out DefaultListModelHelper; string_Id : Unbounded_String) is
   begin
        This.vector.add (string_Id);
   end add;

   procedure remove (This : in out DefaultListModelHelper; string_Id : Unbounded_String) is
   begin
        This.vector.remove (string_Id);
   end remove;

end org.allbinary.input.automation.module.DefaultListModelHelper_Package;


