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



package body org.allbinary.game.configuration.persistance.NullRecordComparator_Package is

   procedure Initialize_Fields (This : in out NullRecordComparator'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullRecordComparator'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullRecordComparator_Access is
      This : constant NullRecordComparator_Access := new NullRecordComparator;
   begin
      NullRecordComparator_Package.Initialize (This.all);
      return This;
   end Create;


   function compare (This : in out NullRecordComparator; rec1 : Short_Short_Integer_Array_Access; rec2 : Short_Short_Integer_Array_Access) return Integer is
   begin
        return 0;
   end compare;

   procedure compare (This : in out NullRecordComparator; rec1 : Short_Short_Integer_Array_Access; rec2 : Short_Short_Integer_Array_Access) is
      Java_Result : constant Integer := NullRecordComparator'Class (This).compare (rec1, rec2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compare;

begin
   null;
   NULL_RECORD_COMPARATOR := NullRecordComparator_Package.Create;

end org.allbinary.game.configuration.persistance.NullRecordComparator_Package;


