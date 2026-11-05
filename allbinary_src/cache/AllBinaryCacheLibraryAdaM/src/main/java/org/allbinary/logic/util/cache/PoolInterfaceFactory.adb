-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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


with org.allbinary.logic.util.cache.PoolInterface_Package; use org.allbinary.logic.util.cache.PoolInterface_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package_References;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References;
with org.allbinary.logic.util.cache.PoolType_Package; use org.allbinary.logic.util.cache.PoolType_Package;
with org.allbinary.logic.util.cache.PoolType_Package_References;
with org.allbinary.logic.util.cache.CachePolicy_Package; use org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package_References;
with org.allbinary.logic.util.cache.CacheInterface_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package;
with org.allbinary.logic.util.cache.PoolType_Package;

package body org.allbinary.logic.util.cache.PoolInterfaceFactory_Package is

   subtype PoolInterface_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access;
   function "=" (Left, Right : PoolInterface_Access) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
   subtype PoolInterface_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array;
   function "=" (Left, Right : PoolInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
   subtype PoolInterface_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access;
   function "=" (Left, Right : PoolInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
   subtype PoolInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PoolInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
   subtype PoolInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PoolInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolInterface_Package_References."=";
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
   subtype PoolType_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access;
   function "=" (Left, Right : PoolType_Access) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";
   subtype PoolType_Access_Array is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array;
   function "=" (Left, Right : PoolType_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";
   subtype PoolType_Access_Array_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access;
   function "=" (Left, Right : PoolType_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";
   subtype PoolType_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access_Array;
   function "=" (Left, Right : PoolType_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";
   subtype PoolType_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PoolType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";
   subtype CachePolicy_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access;
   function "=" (Left, Right : CachePolicy_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array;
   function "=" (Left, Right : CachePolicy_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access;
   function "=" (Left, Right : CachePolicy_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array;
   function "=" (Left, Right : CachePolicy_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CachePolicy_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   procedure Initialize_Fields (This : in out PoolInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PoolInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PoolInterfaceFactory_Access is
      This : constant PoolInterfaceFactory_Access := new PoolInterfaceFactory;
   begin
      PoolInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; poolType_Param : access PoolType_Package.PoolType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) return PoolInterface_Access is
      cacheableInterfaceFactoryInterface : constant CacheableInterfaceFactoryInterface_Access := CacheableInterfaceFactoryInterface_Access (cacheableInterfaceFactoryInterface_Param);
      poolType : constant PoolType_Access := PoolType_Access (poolType_Param);
      cachePolicy : constant CachePolicy_Access := CachePolicy_Access (cachePolicy_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such PoolType: ") & poolType.toString));
        return null;
   end getInstance;

   procedure getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; poolType_Param : access PoolType_Package.PoolType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) is
      Java_Result : constant PoolInterface_Access := getInstance (cacheableInterfaceFactoryInterface_Param => cacheableInterfaceFactoryInterface_Param, poolType_Param => poolType_Param, cachePolicy_Param => cachePolicy_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.PoolInterfaceFactory_Package;


