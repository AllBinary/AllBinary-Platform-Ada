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


package body org.allbinary.ag.game.vector.HealthVectorData_Package is

   procedure Initialize_Fields (This : in out HealthVectorData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out HealthVectorData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HealthVectorData_Access is
      This : constant HealthVectorData_Access := new HealthVectorData;
   begin
      HealthVectorData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   points := new Integer_Array_Access_Array_Access_Array'(0 => new Integer_Array_Access_Array'(new Integer_Array'(2, 1), new Integer_Array'(3, 2), new Integer_Array'(3, 2), new Integer_Array'(4, 1), new Integer_Array'(4, 1), new Integer_Array'(5, 1), new Integer_Array'(5, 1), new Integer_Array'(6, 2), new Integer_Array'(6, 2), new Integer_Array'(6, 3), new Integer_Array'(6, 3), new Integer_Array'(3, 6), new Integer_Array'(3, 6), new Integer_Array'(0, 3), new Integer_Array'(0, 3), new Integer_Array'(0, 2), new Integer_Array'(0, 2), new Integer_Array'(1, 1), new Integer_Array'(1, 1), new Integer_Array'(2, 1), new Integer_Array'(1000, 1000)));

end org.allbinary.ag.game.vector.HealthVectorData_Package;


