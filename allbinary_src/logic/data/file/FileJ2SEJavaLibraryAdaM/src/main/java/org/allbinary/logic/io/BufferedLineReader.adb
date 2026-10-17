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


package body org.allbinary.logic.io.BufferedLineReader_Package is

   procedure Initialize_Fields (This : in out BufferedLineReader'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BufferedLineReader'Class; file : AbFile_Access) is
   begin
      Initialize_Fields (This);
        This.tmpIn := BufferedReader_Package.Create (FileReader_Package.Create (AbFileNativeUtil_Package.get (file)));
   end Initialize;

   function Create (file : AbFile_Access) return BufferedLineReader_Access is
      This : constant BufferedLineReader_Access := new BufferedLineReader;
   begin
      BufferedLineReader_Package.Initialize (This.all, file);
      return This;
   end Create;

   procedure readUpToLines (This : in out BufferedLineReader; readAheadIndex : Long_Long_Integer) is
   begin
        null;
   end readUpToLines;

   --  throws Exception
   function readLine (This : in out BufferedLineReader) return Unbounded_String is
   begin
        return This.tmpIn.readLine;
   end readLine;

   function getSize (This : in out BufferedLineReader) return Long_Long_Integer is
   begin
        return 0;
   end getSize;

   function getCurrent (This : in out BufferedLineReader) return Integer is
   begin
        return 0;
   end getCurrent;

end org.allbinary.logic.io.BufferedLineReader_Package;


