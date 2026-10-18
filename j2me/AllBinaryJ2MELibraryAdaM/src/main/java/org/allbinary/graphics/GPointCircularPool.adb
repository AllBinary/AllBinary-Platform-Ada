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
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;

package body org.allbinary.graphics.GPointCircularPool_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   procedure Initialize_Fields (This : in out GPointCircularPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GPointCircularPool'Class; size : Integer) is
      index : Integer;
   begin
      BaseCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (size);
        This.OBJECT_ARRAY := new Java_Object_Access_Array'(0 .. (size) - 1 => null);
        for index in reverse 0 .. (size) - (1) loop
            This.OBJECT_ARRAY (index) := Java_Object_Access (CustomGPoint_Package.getInstance3 (0, 0));
        end loop;
   end Initialize;

   function Create (size : Integer) return GPointCircularPool_Access is
      This : constant GPointCircularPool_Access := new GPointCircularPool;
   begin
      GPointCircularPool_Package.Initialize (This.all, size);
      return This;
   end Create;

end org.allbinary.graphics.GPointCircularPool_Package;


