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


package body admin.taghelpers.BasicTable_Package is

   procedure Initialize_Fields (This : in out BasicTable'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicTable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicTable_Access is
      This : constant BasicTable_Access := new BasicTable;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function drop (This : in out BasicTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end drop;

   --  throws Exception
   function create (This : in out BasicTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end create;

   --  throws Exception
   function restore (This : in out BasicTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end restore;

   --  throws Exception
   function backup (This : in out BasicTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end backup;

   procedure drop (This : in out BasicTable) is
      Java_Result : constant Unbounded_String := BasicTable'Class (This).drop;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drop;

   procedure create (This : in out BasicTable) is
      Java_Result : constant Unbounded_String := BasicTable'Class (This).create;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure restore (This : in out BasicTable) is
      Java_Result : constant Unbounded_String := BasicTable'Class (This).restore;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restore;

   procedure backup (This : in out BasicTable) is
      Java_Result : constant Unbounded_String := BasicTable'Class (This).backup;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backup;

end admin.taghelpers.BasicTable_Package;


