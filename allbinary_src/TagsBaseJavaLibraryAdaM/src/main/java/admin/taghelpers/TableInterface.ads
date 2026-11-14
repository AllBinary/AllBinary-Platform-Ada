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
limited with admin.taghelpers.TableInterface_Package;
package admin.taghelpers.TableInterface_Package_References is
   type TableInterface_Access is access all admin.taghelpers.TableInterface_Package.TableInterface'Class;
   type TableInterface_Access_Array is array (Natural range <>) of TableInterface_Access;
   type TableInterface_Access_Array_Access is access all TableInterface_Access_Array;
   type TableInterface_Access_Array_Access_Array is array (Natural range <>) of TableInterface_Access_Array_Access;
   type TableInterface_Access_Array_Access_Array_Access is access all TableInterface_Access_Array_Access_Array;
   type TableInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TableInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TableInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TableInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TableInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TableInterface_Access_Array_Access is (if Value /= null and then Value.all in TableInterface_Access_Array_Object'Class then TableInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TableInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TableInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TableInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TableInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TableInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TableInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TableInterface_Access_Array_Access_Array_Object'Class then TableInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.TableInterface_Package_References;

with admin.taghelpers.TableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with admin.taghelpers.BasicTableInterface_Package; use admin.taghelpers.BasicTableInterface_Package;
with admin.taghelpers.ModifyTableInterface_Package; use admin.taghelpers.ModifyTableInterface_Package;

package admin.taghelpers.TableInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type TableInterface is interface and BasicTableInterface and ModifyTableInterface;
   subtype TableInterface_Access is admin.taghelpers.TableInterface_Package_References.TableInterface_Access;
   function "=" (Left, Right : TableInterface_Access) return Boolean renames admin.taghelpers.TableInterface_Package_References."=";
   subtype TableInterface_Access_Array is admin.taghelpers.TableInterface_Package_References.TableInterface_Access_Array;
   function "=" (Left, Right : TableInterface_Access_Array) return Boolean renames admin.taghelpers.TableInterface_Package_References."=";
   subtype TableInterface_Access_Array_Access is admin.taghelpers.TableInterface_Package_References.TableInterface_Access_Array_Access;
   function "=" (Left, Right : TableInterface_Access_Array_Access) return Boolean renames admin.taghelpers.TableInterface_Package_References."=";
   function Java_Box (Value : TableInterface_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.TableInterface_Package_References.Java_Box;
   function Java_Unbox_TableInterface_Access_Array (Value : access Java_Object'Class) return TableInterface_Access_Array_Access renames admin.taghelpers.TableInterface_Package_References.Java_Unbox_TableInterface_Access_Array;
   subtype TableInterface_Access_Array_Access_Array is admin.taghelpers.TableInterface_Package_References.TableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TableInterface_Access_Array_Access_Array) return Boolean renames admin.taghelpers.TableInterface_Package_References."=";
   subtype TableInterface_Access_Array_Access_Array_Access is admin.taghelpers.TableInterface_Package_References.TableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TableInterface_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.TableInterface_Package_References."=";
   function Java_Box (Value : TableInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.TableInterface_Package_References.Java_Box;
   function Java_Unbox_TableInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TableInterface_Access_Array_Access_Array_Access renames admin.taghelpers.TableInterface_Package_References.Java_Unbox_TableInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TableInterface (Value : TableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end admin.taghelpers.TableInterface_Package;


