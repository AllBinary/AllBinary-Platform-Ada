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


with org.allbinary.logic.util.cache.BaseCircularPool_Package; use org.allbinary.logic.util.cache.BaseCircularPool_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.layer.AllBinaryLayerCircularPool_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   subtype AllBinaryLayerFactoryInterface_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
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
        This.OBJECT_ARRAY := new Java_Object_Access_Array'(0 .. (total) - 1 => null);
        for localIndex in 0 .. (total) - 1 loop
            This.OBJECT_ARRAY (localIndex) := Java_Object_Access (allbinaryLayerFactoryInterface.getInstance);
        end loop;
   end initAllBinaryLayerCircularPool;

end org.allbinary.layer.AllBinaryLayerCircularPool_Package;


