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

with AllBinary_Java;
limited with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;
package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References is
   type StoreFrontUsersStatisticsInterface_Access is access all org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package.StoreFrontUsersStatisticsInterface'Class;
   type StoreFrontUsersStatisticsInterface_Access_Array is array (Natural range <>) of StoreFrontUsersStatisticsInterface_Access;
   type StoreFrontUsersStatisticsInterface_Access_Array_Access is access all StoreFrontUsersStatisticsInterface_Access_Array;
   type StoreFrontUsersStatisticsInterface_Access_Array_Access_Array is array (Natural range <>) of StoreFrontUsersStatisticsInterface_Access_Array_Access;
   type StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access is access all StoreFrontUsersStatisticsInterface_Access_Array_Access_Array;
   type StoreFrontUsersStatisticsInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontUsersStatisticsInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontUsersStatisticsInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontUsersStatisticsInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontUsersStatisticsInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontUsersStatisticsInterface_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontUsersStatisticsInterface_Access_Array_Object'Class then StoreFrontUsersStatisticsInterface_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontUsersStatisticsInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Object'Class then StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package is

   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type StoreFrontUsersStatisticsInterface is interface and TableMappingInterface;
   subtype StoreFrontUsersStatisticsInterface_Access is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References.StoreFrontUsersStatisticsInterface_Access;
   function "=" (Left, Right : StoreFrontUsersStatisticsInterface_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References."=";
   subtype StoreFrontUsersStatisticsInterface_Access_Array is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References.StoreFrontUsersStatisticsInterface_Access_Array;
   function "=" (Left, Right : StoreFrontUsersStatisticsInterface_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References."=";
   subtype StoreFrontUsersStatisticsInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References.StoreFrontUsersStatisticsInterface_Access_Array_Access;
   function "=" (Left, Right : StoreFrontUsersStatisticsInterface_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References."=";
   function Java_Box (Value : StoreFrontUsersStatisticsInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References.Java_Box;
   function Java_Unbox_StoreFrontUsersStatisticsInterface_Access_Array (Value : access Java_Object'Class) return StoreFrontUsersStatisticsInterface_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References.Java_Unbox_StoreFrontUsersStatisticsInterface_Access_Array;
   subtype StoreFrontUsersStatisticsInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References.StoreFrontUsersStatisticsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontUsersStatisticsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References."=";
   subtype StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References.StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References."=";
   function Java_Box (Value : StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References.Java_Box;
   function Java_Unbox_StoreFrontUsersStatisticsInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontUsersStatisticsInterface_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package_References.Java_Unbox_StoreFrontUsersStatisticsInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_StoreFrontUsersStatisticsInterface (Value : StoreFrontUsersStatisticsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getNumberOfUsers (This : in out StoreFrontUsersStatisticsInterface) return Long_Long_Integer is abstract;
   function getNumberOfUsersByRole (This : in out StoreFrontUsersStatisticsInterface; role : Unbounded_String) return Long_Long_Integer is abstract;
   procedure getNumberOfUsersByRole (This : in out StoreFrontUsersStatisticsInterface; role : Unbounded_String) is abstract;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;


