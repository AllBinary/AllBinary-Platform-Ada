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


package body org.allbinary.game.configuration.persistance.NullRecordFilter_Package is

   procedure Initialize_Fields (This : in out NullRecordFilter'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullRecordFilter'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullRecordFilter_Access is
      This : constant NullRecordFilter_Access := new NullRecordFilter;
   begin
      NullRecordFilter_Package.Initialize (This.all);
      return This;
   end Create;


   function matches (This : in out NullRecordFilter; candidate : Short_Short_Integer_Array_Access) return Boolean is
   begin
        return True;
   end matches;

   procedure matches (This : in out NullRecordFilter; candidate : Short_Short_Integer_Array_Access) is
      Java_Result : constant Boolean := NullRecordFilter'Class (This).matches (candidate);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end matches;

begin
   null;
   NULL_RECORD_FILTER := NullRecordFilter_Package.Create;

end org.allbinary.game.configuration.persistance.NullRecordFilter_Package;


