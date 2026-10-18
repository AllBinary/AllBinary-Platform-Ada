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



package body org.allbinary.logic.java.number.LongData_Package is

   procedure Initialize_Fields (This : in out LongData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LongData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LongData_Access is
      This : constant LongData_Access := new LongData;
   begin
      LongData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   MAX_LONG_LENGTH := Length (Long_Long_Integer'Last.toString);

end org.allbinary.logic.java.number.LongData_Package;


