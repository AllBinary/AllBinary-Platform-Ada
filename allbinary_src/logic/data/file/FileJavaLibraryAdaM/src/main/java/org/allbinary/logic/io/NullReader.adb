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


with java.io.Reader_Package; use java.io.Reader_Package;

package body org.allbinary.logic.io.NullReader_Package is

   procedure Initialize_Fields (This : in out NullReader'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullReader'Class) is
   begin
      Reader_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullReader_Access is
      This : constant NullReader_Access := new NullReader;
   begin
      NullReader_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws IOException
   function read (This : in out NullReader) return Integer is
   begin
        return -(1);
   end read;

   --  throws IOException
   function read (This : in out NullReader; cbuf : Character_Array_Access; off : Integer; len : Integer) return Integer is
   begin
        return -(1);
   end read;

   --  throws IOException
   function ready (This : in out NullReader) return Boolean is
   begin
        return False;
   end ready;

   --  throws IOException
   function skip (This : in out NullReader; n : Long_Long_Integer) return Long_Long_Integer is
   begin
        return 0;
   end skip;

   procedure close (This : in out NullReader) is
   begin
        null;
   end close;

   procedure read (This : in out NullReader; cbuf : Character_Array_Access; off : Integer; len : Integer) is
      Java_Result : constant Integer := NullReader'Class (This).read (cbuf => cbuf, off => off, len => len);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end read;

   procedure skip (This : in out NullReader; n : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := NullReader'Class (This).skip (n => n);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end skip;

begin
   null;
   NULL_READER := NullReader_Package.Create;

end org.allbinary.logic.io.NullReader_Package;


