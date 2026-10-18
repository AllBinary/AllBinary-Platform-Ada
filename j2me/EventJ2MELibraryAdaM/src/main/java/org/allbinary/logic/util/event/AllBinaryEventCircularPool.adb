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


with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package body org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   procedure Initialize_Fields (This : in out AllBinaryEventCircularPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryEventCircularPool'Class; max : Integer) is
   begin
      BaseCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        This.OBJECT_ARRAY := new Java_Object_Access_Array'(0 .. (max) - 1 => null);
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (max);
   end Initialize;

   function Create (max : Integer) return AllBinaryEventCircularPool_Access is
      This : constant AllBinaryEventCircularPool_Access := new AllBinaryEventCircularPool;
   begin
      AllBinaryEventCircularPool_Package.Initialize (This.all, max);
      return This;
   end Create;

   procedure initAllBinaryEventCircularPool (This : in out AllBinaryEventCircularPool; allBinaryEventObjectFactoryInterface_Param : access AllBinaryEventObjectFactoryInterface_Package.AllBinaryEventObjectFactoryInterface'Class) is
      allBinaryEventObjectFactoryInterface : constant AllBinaryEventObjectFactoryInterface_Access := AllBinaryEventObjectFactoryInterface_Access (allBinaryEventObjectFactoryInterface_Param);
      size : Integer;
      index : Integer;
   begin
        This.circularIndexUtil.setIndex (0);
        size := This.circularIndexUtil.getSize;
        for index in 0 .. (size) - 1 loop
            This.OBJECT_ARRAY (index) := Java_Object_Access (allBinaryEventObjectFactoryInterface.getInstance);
        end loop;
   end initAllBinaryEventCircularPool;

end org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;


