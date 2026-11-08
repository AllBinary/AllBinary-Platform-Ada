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


with java.io.OutputStream_Package; use java.io.OutputStream_Package;

package body org.allbinary.logic.io.NullOutputStream_Package is

   procedure Initialize_Fields (This : in out NullOutputStream'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullOutputStream'Class) is
   begin
      OutputStream_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullOutputStream_Access is
      This : constant NullOutputStream_Access := new NullOutputStream;
   begin
      NullOutputStream_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws IOException
   procedure write (This : in out NullOutputStream; b : Integer) is
   begin
        null;
   end write;

   --  throws IOException
   procedure write (This : in out NullOutputStream; b : Short_Short_Integer_Array_Access; off : Integer; len : Integer) is
   begin
        null;
   end write;

   procedure close (This : in out NullOutputStream) is
   begin
        null;
   end close;

begin
   null;
   NULL_OUTPUT_STREAM := NullOutputStream_Package.Create;

end org.allbinary.logic.io.NullOutputStream_Package;


