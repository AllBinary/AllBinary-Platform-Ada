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


package body org.allbinary.layer.AllBinaryLayerCircularPool_Package is

   procedure Initialize_Fields (This : in out AllBinaryLayerCircularPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryLayerCircularPool'Class) is
   begin
      BaseCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinaryLayerCircularPool_Access is
      This : constant AllBinaryLayerCircularPool_Access := new AllBinaryLayerCircularPool;
   begin
      AllBinaryLayerCircularPool_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure initAllBinaryLayerCircularPool (This : in out AllBinaryLayerCircularPool; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) is
      allbinaryLayerFactoryInterface : constant AllBinaryLayerFactoryInterface_Access := AllBinaryLayerFactoryInterface_Access (allbinaryLayerFactoryInterface_Param);
      localIndex : Integer;
   begin
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (total);
        This.OBJECT_ARRAY := new AllBinaryLayer_Access_Array'(0 .. (total) - 1 => null);
        for localIndex in 0 .. (total) - 1 loop
            This.OBJECT_ARRAY (localIndex) := allbinaryLayerFactoryInterface.getInstance;
        end loop;
   end initAllBinaryLayerCircularPool;

end org.allbinary.layer.AllBinaryLayerCircularPool_Package;


