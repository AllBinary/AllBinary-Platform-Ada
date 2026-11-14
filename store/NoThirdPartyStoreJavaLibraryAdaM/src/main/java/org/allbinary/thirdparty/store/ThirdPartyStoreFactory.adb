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


with org.allbinary.thirdparty.store.NoThirdPartyStore_Package; use org.allbinary.thirdparty.store.NoThirdPartyStore_Package;
with org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References;
with org.allbinary.thirdparty.store.ThirdPartyStore_Package; use org.allbinary.thirdparty.store.ThirdPartyStore_Package;
with org.allbinary.thirdparty.store.ThirdPartyStore_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.thirdparty.store.NoThirdPartyStore_Package;
with org.allbinary.thirdparty.store.ThirdPartyStore_Package;

package body org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package is

   subtype NoThirdPartyStore_Access is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access;
   function "=" (Left, Right : NoThirdPartyStore_Access) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";
   subtype NoThirdPartyStore_Access_Array is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array;
   function "=" (Left, Right : NoThirdPartyStore_Access_Array) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";
   subtype NoThirdPartyStore_Access_Array_Access is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array_Access;
   function "=" (Left, Right : NoThirdPartyStore_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";
   subtype NoThirdPartyStore_Access_Array_Access_Array is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array_Access_Array;
   function "=" (Left, Right : NoThirdPartyStore_Access_Array_Access_Array) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";
   subtype NoThirdPartyStore_Access_Array_Access_Array_Access is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoThirdPartyStore_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";
   subtype ThirdPartyStore_Access is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access;
   function "=" (Left, Right : ThirdPartyStore_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";
   subtype ThirdPartyStore_Access_Array is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array;
   function "=" (Left, Right : ThirdPartyStore_Access_Array) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";
   subtype ThirdPartyStore_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyStore_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";
   subtype ThirdPartyStore_Access_Array_Access_Array is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array_Access_Array;
   function "=" (Left, Right : ThirdPartyStore_Access_Array_Access_Array) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";
   subtype ThirdPartyStore_Access_Array_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyStore_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";
   procedure Initialize_Fields (This : in out ThirdPartyStoreFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ThirdPartyStore_Access is
   begin
        return ThirdPartyStore_Access (ThirdPartyStoreFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out ThirdPartyStoreFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ThirdPartyStoreFactory_Access is
      This : constant ThirdPartyStoreFactory_Access := new ThirdPartyStoreFactory;
   begin
      ThirdPartyStoreFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NoThirdPartyStore_Package.Create;

end org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package;


