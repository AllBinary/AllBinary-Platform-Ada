--  Generated Code Do Not Modify


with org.allbinary.logic.util.cache.PoolType_Package; use org.allbinary.logic.util.cache.PoolType_Package;
with org.allbinary.logic.util.cache.PoolType_Package_References;
with org.allbinary.logic.util.cache.CacheTypeFactory_Package; use org.allbinary.logic.util.cache.CacheTypeFactory_Package;
with org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CacheTypeFactory_Package;
with org.allbinary.logic.util.cache.PoolType_Package;

package body org.allbinary.logic.util.cache.PoolTypeFactory_Package is

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
   procedure Initialize_Fields (This : in out PoolTypeFactory'Class) is
   begin
      null;
      This.VECTOR_POOL := PoolType_Package.Create (CacheTypeFactory_Package.getInstance.NO_CACHE);
   end Initialize_Fields;

   procedure Initialize (This : in out PoolTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PoolTypeFactory_Access is
      This : constant PoolTypeFactory_Access := new PoolTypeFactory;
   begin
      PoolTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PoolTypeFactory_Access is
   begin
        return PoolTypeFactory_Access (PoolTypeFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := PoolTypeFactory_Package.Create;

end org.allbinary.logic.util.cache.PoolTypeFactory_Package;


