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


package body org.allbinary.logic.io.AbFileInputStream_Package is

   procedure Initialize_Fields (This : in out AbFileInputStream'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbFileInputStream'Class; fileInputStream_Param : access FileInputStream_Package.FileInputStream'Class) is
      fileInputStream : constant FileInputStream_Access := FileInputStream_Access (fileInputStream_Param);
   begin
      InputStream_Package.Initialize (This);
      Initialize_Fields (This);
        This.fileInputStream := fileInputStream;
   end Initialize;

   function Create (fileInputStream_Param : access FileInputStream_Package.FileInputStream'Class) return AbFileInputStream_Access is
      This : constant AbFileInputStream_Access := new AbFileInputStream;
   begin
      AbFileInputStream_Package.Initialize (This.all, fileInputStream_Param);
      return This;
   end Create;

   procedure mark (This : in out AbFileInputStream; readlimit : Integer) is
   begin
        This.fileInputStream.mark (readlimit);
   end mark;

   function markSupported (This : in out AbFileInputStream) return Boolean is
   begin
        return This.fileInputStream.markSupported;
   end markSupported;

   --  throws IOException
   procedure reset (This : in out AbFileInputStream) is
   begin
        This.fileInputStream.reset;
   end reset;

   --  throws IOException
   function available (This : in out AbFileInputStream) return Integer is
   begin
        return This.fileInputStream.available;
   end available;

   --  throws IOException
   procedure close (This : in out AbFileInputStream) is
   begin
        This.fileInputStream.close;
   end close;

   function getChannel (This : in out AbFileInputStream) return FileChannel_Access is
   begin
        return This.fileInputStream.getChannel;
   end getChannel;

   --  throws IOException
   function read (This : in out AbFileInputStream) return Integer is
   begin
        return This.fileInputStream.read;
   end read;

   --  throws IOException
   function read (This : in out AbFileInputStream; b : Short_Short_Integer_Array_Access) return Integer is
   begin
        return This.fileInputStream.read (b);
   end read;

   --  throws IOException
   function read (This : in out AbFileInputStream; buffer : Short_Short_Integer_Array_Access; offset : Integer; count : Integer) return Integer is
   begin
        return This.fileInputStream.read (buffer, offset, count);
   end read;

   --  throws IOException
   function skip (This : in out AbFileInputStream; n : Long_Long_Integer) return Long_Long_Integer is
   begin
        return This.fileInputStream.skip (n);
   end skip;

   procedure read (This : in out AbFileInputStream; b : Short_Short_Integer_Array_Access) is
      Java_Result : constant Integer := AbFileInputStream'Class (This).read (b);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end read;

   procedure read (This : in out AbFileInputStream; buffer : Short_Short_Integer_Array_Access; offset : Integer; count : Integer) is
      Java_Result : constant Integer := AbFileInputStream'Class (This).read (buffer, offset, count);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end read;

   procedure skip (This : in out AbFileInputStream; n : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := AbFileInputStream'Class (This).skip (n);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end skip;

end org.allbinary.logic.io.AbFileInputStream_Package;


