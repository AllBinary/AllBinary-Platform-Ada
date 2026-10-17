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


package body org.allbinary.game.ag.vector.MineVectorData_Package is

   procedure Initialize_Fields (This : in out MineVectorData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MineVectorData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MineVectorData_Access is
      This : constant MineVectorData_Access := new MineVectorData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   points := new Integer_Array_Access_Array_Access_Array'(0 => new Integer_Array_Access_Array'(new Integer_Array'(10, 5), new Integer_Array'(2, 6), new Integer_Array'(1000, 1000), new Integer_Array'(2, 2), new Integer_Array'(10, 9), new Integer_Array'(1000, 1000), new Integer_Array'(10, 2), new Integer_Array'(2, 9), new Integer_Array'(1000, 1000), new Integer_Array'(2, 5), new Integer_Array'(10, 6), new Integer_Array'(1000, 1000), new Integer_Array'(7, 9), new Integer_Array'(5, 2), new Integer_Array'(1000, 1000), new Integer_Array'(7, 2), new Integer_Array'(5, 9), new Integer_Array'(1000, 1000)));

end org.allbinary.game.ag.vector.MineVectorData_Package;


