-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.osgi.framework.NullServiceReference_Package; use org.osgi.framework.NullServiceReference_Package;
with org.osgi.framework.NullServiceReference_Package_References;
with org.osgi.framework.NullServiceReference_Package;

package body org.osgi.framework.NullServiceReferenceFactory_Package is

   subtype NullServiceReference_Access is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access;
   function "=" (Left, Right : NullServiceReference_Access) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   subtype NullServiceReference_Access_Array is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array;
   function "=" (Left, Right : NullServiceReference_Access_Array) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   subtype NullServiceReference_Access_Array_Access is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array_Access;
   function "=" (Left, Right : NullServiceReference_Access_Array_Access) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   subtype NullServiceReference_Access_Array_Access_Array is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array_Access_Array;
   function "=" (Left, Right : NullServiceReference_Access_Array_Access_Array) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   subtype NullServiceReference_Access_Array_Access_Array_Access is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullServiceReference_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.NullServiceReference_Package_References."=";
   procedure Initialize_Fields (This : in out NullServiceReferenceFactory'Class) is
   begin
      null;
      This.NULL_SERVICE_REFERENCE := NullServiceReference_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out NullServiceReferenceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullServiceReferenceFactory_Access is
      This : constant NullServiceReferenceFactory_Access := new NullServiceReferenceFactory;
   begin
      NullServiceReferenceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return NullServiceReferenceFactory_Access is
   begin
        return NullServiceReferenceFactory_Access (NullServiceReferenceFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := NullServiceReferenceFactory_Package.Create;

end org.osgi.framework.NullServiceReferenceFactory_Package;


