--  Generated Code Do Not Modify


package body org.allbinary.logic.util.cache.PoolTypeFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return PoolTypeFactory_Access is
   begin
        return PoolTypeFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant PoolTypeFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PoolTypeFactory_Package.Create;

end org.allbinary.logic.util.cache.PoolTypeFactory_Package;


