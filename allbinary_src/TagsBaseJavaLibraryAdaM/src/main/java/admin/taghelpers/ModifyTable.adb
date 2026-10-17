-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body admin.taghelpers.ModifyTable_Package is

   procedure Initialize_Fields (This : in out ModifyTable'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.tagStrings := TagStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ModifyTable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ModifyTable_Access is
      This : constant ModifyTable_Access := new ModifyTable;
   begin
      ModifyTable_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function insert (This : in out ModifyTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end insert;

   --  throws Exception
   function delete (This : in out ModifyTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end delete;

   --  throws Exception
   function update (This : in out ModifyTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end update;

end admin.taghelpers.ModifyTable_Package;


