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


with java.io.Writer_Package; use java.io.Writer_Package;

package body org.allbinary.logic.io.NullWriter_Package is

   procedure Initialize_Fields (This : in out NullWriter'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullWriter'Class) is
   begin
      Writer_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullWriter_Access is
      This : constant NullWriter_Access := new NullWriter;
   begin
      NullWriter_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws IOException
   procedure write (This : in out NullWriter; c : Integer) is
   begin
        null;
   end write;

   --  throws IOException
   procedure write (This : in out NullWriter; cbuf : Character_Array_Access; off : Integer; len : Integer) is
   begin
        null;
   end write;

   --  throws IOException
   procedure write (This : in out NullWriter; str : Unbounded_String) is
   begin
        null;
   end write;

   --  throws IOException
   procedure write (This : in out NullWriter; str : Unbounded_String; off : Integer; len : Integer) is
   begin
        null;
   end write;

   --  throws IOException
   procedure flush (This : in out NullWriter) is
   begin
        null;
   end flush;

   --  throws IOException
   procedure close (This : in out NullWriter) is
   begin
        null;
   end close;

begin
   null;
   NULL_WRITER := NullWriter_Package.Create;

end org.allbinary.logic.io.NullWriter_Package;


