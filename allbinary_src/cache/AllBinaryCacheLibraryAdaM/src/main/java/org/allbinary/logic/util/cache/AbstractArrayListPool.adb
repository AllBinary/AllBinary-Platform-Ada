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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package;

package body org.allbinary.logic.util.cache.AbstractArrayListPool_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterface_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access;
   function "=" (Left, Right : CacheableInterface_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   subtype CacheableInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array;
   function "=" (Left, Right : CacheableInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   subtype CacheableInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access;
   function "=" (Left, Right : CacheableInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   subtype CacheableInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CacheableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   subtype CacheableInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterface_Package_References."=";
   procedure Initialize_Fields (This : in out AbstractArrayListPool'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.buffers := BasicArrayList_Access (BasicArrayListD_Package.Create);
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbstractArrayListPool'Class; cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class) is
      cacheableInterfaceFactoryInterface : constant CacheableInterfaceFactoryInterface_Access := CacheableInterfaceFactoryInterface_Access (cacheableInterfaceFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.cacheableInterfaceFactoryInterface := cacheableInterfaceFactoryInterface;
   end Initialize;

   function Create (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class) return AbstractArrayListPool_Access is
      This : constant AbstractArrayListPool_Access := new AbstractArrayListPool;
   begin
      AbstractArrayListPool_Package.Initialize (This.all, cacheableInterfaceFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure clear (This : in out AbstractArrayListPool) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end clear;

   --  throws Exception
   function remove (This : in out AbstractArrayListPool; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end remove;

   --  throws Exception
   procedure add (This : in out AbstractArrayListPool; cacheableInterface_Param : access CacheableInterface_Package.CacheableInterface'Class) is
      cacheableInterface : constant CacheableInterface_Access := CacheableInterface_Access (cacheableInterface_Param);
   begin
        This.buffers.add (CacheableInterface_Package.Java_Object_Access_From_CacheableInterface (cacheableInterface));
   end add;

   --  throws Exception
   procedure addArray (This : in out AbstractArrayListPool; cacheableInterfaces : CacheableInterface_Access_Array_Access) is
      index : Integer;
   begin
        for index in 0 .. (cacheableInterfaces'Length) - 1 loop
            This.buffers.add (CacheableInterface_Package.Java_Object_Access_From_CacheableInterface (cacheableInterfaces (index)));
        end loop;
   end addArray;

   procedure remove (This : in out AbstractArrayListPool; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := AbstractArrayListPool'Class (This).remove (key_Param => key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   function remove (This : in out AbstractArrayListPool; Value : Unbounded_String) return CacheableInterface_Access is
   begin
      return AbstractArrayListPool'Class (This).remove (Java_Box (Value));
   end remove;

   procedure remove (This : in out AbstractArrayListPool; Value : Unbounded_String) is
      Java_Result : constant CacheableInterface_Access := AbstractArrayListPool'Class (This).remove (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

end org.allbinary.logic.util.cache.AbstractArrayListPool_Package;


