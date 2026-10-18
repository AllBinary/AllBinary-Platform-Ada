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



package body org.allbinary.business.time.modified.TimeLastModified_Package is

   procedure Initialize_Fields (This : in out TimeLastModified'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TimeLastModified'Class; time : Unbounded_String) is
   begin
        Time_Package.Initialize (This, time);
   end Initialize;

   function Create (time : Unbounded_String) return TimeLastModified_Access is
      This : constant TimeLastModified_Access := new TimeLastModified;
   begin
      TimeLastModified_Package.Initialize (This.all, time);
      return This;
   end Create;

   procedure Initialize (This : in out TimeLastModified'Class; time : Long_Long_Integer) is
   begin
        Time_Package.Initialize (This, time);
   end Initialize;

   function Create (time : Long_Long_Integer) return TimeLastModified_Access is
      This : constant TimeLastModified_Access := new TimeLastModified;
   begin
      TimeLastModified_Package.Initialize (This.all, time);
      return This;
   end Create;

end org.allbinary.business.time.modified.TimeLastModified_Package;


