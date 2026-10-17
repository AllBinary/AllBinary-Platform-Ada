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


package body admin.taghelpers.Table_Package is

   procedure Initialize_Fields (This : in out Table'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out Table'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Table_Access is
      This : constant Table_Access := new Table;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function drop (This : in out Table) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end drop;

   --  throws Exception
   function create (This : in out Table) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end create;

   --  throws Exception
   function restore (This : in out Table) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end restore;

   --  throws Exception
   function backup (This : in out Table) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end backup;

   --  throws Exception
   function insert (This : in out Table) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end insert;

   --  throws Exception
   function delete (This : in out Table) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end delete;

   --  throws Exception
   function update (This : in out Table) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end update;

   procedure drop (This : in out Table) is
      Java_Result : constant Unbounded_String := Table'Class (This).drop;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drop;

   procedure create (This : in out Table) is
      Java_Result : constant Unbounded_String := Table'Class (This).create;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure restore (This : in out Table) is
      Java_Result : constant Unbounded_String := Table'Class (This).restore;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restore;

   procedure backup (This : in out Table) is
      Java_Result : constant Unbounded_String := Table'Class (This).backup;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backup;

   procedure insert (This : in out Table) is
      Java_Result : constant Unbounded_String := Table'Class (This).insert;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insert;

   procedure delete (This : in out Table) is
      Java_Result : constant Unbounded_String := Table'Class (This).delete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

   procedure update (This : in out Table) is
      Java_Result : constant Unbounded_String := Table'Class (This).update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

end admin.taghelpers.Table_Package;


