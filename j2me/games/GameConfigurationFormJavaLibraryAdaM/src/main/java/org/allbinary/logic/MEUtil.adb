-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.logic.MEUtil_Package is

   procedure Initialize_Fields (This : in out MEUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MEUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MEUtil_Access is
      This : constant MEUtil_Access := new MEUtil;
   begin
      MEUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MEUtil_Access is
   begin
        return MEUtil_Package.instance;
   end getInstance;

   procedure appendItem (This : in out MEUtil; form_Param : access CommandForm_Package.CommandForm'Class; item_Param : access Item_Package.Item'Class) is
      form : constant CommandForm_Access := CommandForm_Access (form_Param);
      item : constant Item_Access := Item_Access (item_Param);
   begin
        form.append (item);
   end appendItem;

begin
   null;
   instance := MEUtil_Package.Create;

end org.allbinary.logic.MEUtil_Package;


